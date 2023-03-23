#include "decoupled_pdb_utils.h"

#include "pattern_database.h"
#include "pattern_filter.h"

#include "../option_parser.h"

#include "../compliant_paths/cpg_storage.h"
#include "../compliant_paths/explicit_state_cpg.h"

#include "../globals.h"
#include "../tasks/root_task.h"

using namespace std;

namespace pdbs {
void set_center_facts(const GlobalState &center_state, std::vector<int> &state) {
    assert(state.size() == g_variable_domain.size());
    for (int var : g_center){
        state[var] = center_state[var];
    }
}

void set_leaf_facts(LeafStateHash id, LeafFactorID factor, std::vector<int> &state) {
    assert(state.size() == g_variable_domain.size());
    LeafState lstate = g_state_registry->lookup_leaf_state(id, factor);
    for (int var : g_leaves[factor]){
        state[var] = lstate[var];
    }
}

int unrank(const PatternDatabase& pdb, int rank, int pattern_index) {
    int temp = rank / pdb.get_hash_multipliers()[pattern_index];
    int var = pdb.get_pattern()[pattern_index];
    return temp % tasks::g_root_task->get_variable_domain_size(var);
}

vector<int> unrank(const PatternDatabase& pdb, int rank) {
    vector<int> values;
    values.reserve(pdb.get_pattern().size());
    for (size_t pattern_index = 0; pattern_index < pdb.get_pattern().size(); ++pattern_index) {
        values.push_back(unrank(pdb, rank, pattern_index));
    }
    return values;
}

static void compute_min_distance_mem_states(
    const PatternDatabase &pdb,
    const ExplicitStateCPG *cpg,
    const vector<LeafFactorID> &affected_leaves,
    vector<int> &member_state,
    int i,
    int sum_prices,
    int &min_d) {

    if (sum_prices >= min_d){
        // we cannot possibly improve the heuristic
        return;
    }

    LeafFactorID leaf = affected_leaves[i];

    int number_states = cpg->get_number_states(leaf);
    LeafStateHash id(0);
    while (number_states > 0){
        if (cpg->has_leaf_state(id, leaf)){
            --number_states;

            set_leaf_facts(id, leaf, member_state);

            int price = cpg->get_cost_of_state(id, leaf);
            if (i < static_cast<int>(affected_leaves.size()) - 1){
                // recursion
                compute_min_distance_mem_states(pdb, cpg, affected_leaves, member_state, i + 1, sum_prices + price, min_d);
            } else {
                // end recursion
                int h = pdb.get_value(member_state);
                if (h != numeric_limits<int>::max()) {
                    min_d = min(min_d, sum_prices + price + h);
                }
            }
        }
        ++id;
    }
}

static void compute_min_distance_abs_states(
        const PatternDatabase &pdb,
        const vector<vector<pair<int, int>>> &abs_leaf_state_hash_prices,
        int partial_index,
        int sum_prices,
        int i,
        int &min_d) {

    if (min_d == 0 || sum_prices >= min_d){
        return;
    }

    if (i == static_cast<int>(abs_leaf_state_hash_prices.size())){
        int h = pdb.get_value(partial_index);
        if (h != numeric_limits<int>::max()){
            min_d = min(min_d, sum_prices + h);
        }
        return;
    }

    for (const auto &[partial_leaf_index, price] : abs_leaf_state_hash_prices[i]){
        compute_min_distance_abs_states(pdb,
                                        abs_leaf_state_hash_prices,
                                        partial_index + partial_leaf_index,
                                        sum_prices + price,
                                        i + 1,
                                        min_d);
    }
}

vector<vector<int>> compute_affected_pattern_var_indices_by_leaf(
    const Pattern &pattern) {
    vector<vector<int>> affected_pattern_var_indices_by_leaf(g_leaves.size());
    for (int i = 0; i < static_cast<int>(pattern.size()); ++i) {
        LeafFactorID factor = g_belongs_to_factor[pattern[i]];
        if (factor != LeafFactorID::CENTER) {
            affected_pattern_var_indices_by_leaf[factor].push_back(i);
        }
    }
    return affected_pattern_var_indices_by_leaf;
}

int compute_pdb_value_with_prices(
    const GlobalState &state,
    const PatternDatabase &pdb,
    const ExplicitStateCPG* prices,
    const vector<LeafFactorID> &affected_leaves,
    const vector<vector<int>> &affected_pattern_var_indices_by_leaf,
    bool polynomial) {
    int min_h = numeric_limits<int>::max();
    if (affected_leaves.empty()){
        min_h = pdb.get_value(state);
    } else {
        if (polynomial) {
            const vector<int> &hash_multipliers = pdb.get_hash_multipliers();
            vector<vector<pair<int, int>>> abs_leaf_state_hash_prices;
            int center_index = 0;
            const vector<int> &pattern = pdb.get_pattern();
            for (int i = 0; i < static_cast<int>(pattern.size()); ++i){
                LeafFactorID factor = g_belongs_to_factor[pattern[i]];
                if (factor == LeafFactorID::CENTER){
                    center_index += hash_multipliers[i] * state[pattern[i]];
                }
            }
            for (LeafFactorID leaf : affected_leaves) {
                vector<pair<int, int>> hash_prices_for_leaf;
                int num_reached_lstates = prices->get_number_states(leaf);
                for (LeafStateHash id(0); id < g_state_registry->size(leaf); ++id){
                    if (prices->has_leaf_state(id, leaf)) {
                        // TODO since many reached leaf states can lead to the same partial_index if the leaf
                        // is not fully covered, we might want to cache the cheapest price for all partial_index'es
                        // if |leaf| >> |leaf \cap patter| this could make quite a difference; also be because within
                        // compute_min_distance_abs_states, we potentially handle the same state very often
                        LeafState lstate = g_state_registry->lookup_leaf_state(id, leaf);
                        int partial_index = 0;
                        for (int pattern_var_index: affected_pattern_var_indices_by_leaf[leaf]) {
                            partial_index += hash_multipliers[pattern_var_index] * lstate[pattern[pattern_var_index]];
                        }
                        hash_prices_for_leaf.emplace_back(partial_index, prices->get_cost_of_state(id, leaf));
                        if (--num_reached_lstates == 0){
                            break;
                        }
                    }
                }
                assert(affected_pattern_var_indices_by_leaf[leaf].size() <= g_leaves[leaf].size());
                if (affected_pattern_var_indices_by_leaf[leaf].size() != g_leaves[leaf].size()) {
                    // Leaf not fully covered by pattern
                    sort(hash_prices_for_leaf.begin(), hash_prices_for_leaf.end());
                    hash_prices_for_leaf.erase(
                        unique(hash_prices_for_leaf.begin(), hash_prices_for_leaf.end(), [](const auto &lhs, const auto &rhs) {
                            // Treat elements of hash_prices_for_leaf equivalent if their first entry, the abstract state hash, is equivalent.
                            return lhs.first == rhs.first;
                        }),
                        hash_prices_for_leaf.end());
                }
                abs_leaf_state_hash_prices.push_back(move(hash_prices_for_leaf));
            }
            compute_min_distance_abs_states(pdb, abs_leaf_state_hash_prices, center_index, 0, 0, min_h);
        } else {
            // used to call get_value(vector<int>) for all member states
            vector<int> member_state(g_variable_domain.size(), -1);
            set_center_facts(state, member_state);
            compute_min_distance_mem_states(pdb, prices, affected_leaves, member_state, 0, 0, min_h);
        }
    }
    return min_h;
}

void add_approximate_options_to_parser(options::OptionParser &parser) {
    parser.add_option<bool>(
        "polynomial_decoupled_pdb",
        "if true, compute decoupled pdb in polynomial time by iterating "
        "over abstract states; if false, ",
        "false");
}
}
