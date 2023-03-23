#include "merge_and_shrink_representation.h"

#include "distances.h"
#include "types.h"

#include "../globals.h"
#include "../state.h"
#include "../state_registry.h"
#include "../task_proxy.h"

#include "../compliant_paths/cpg_storage.h"
#include "../compliant_paths/explicit_state_cpg.h"

#include "../utils/logging.h"

#include <algorithm>
#include <cassert>
#include <iostream>
#include <numeric>

using namespace std;

namespace merge_and_shrink {
MergeAndShrinkRepresentation::MergeAndShrinkRepresentation(int domain_size)
    : domain_size(domain_size), exactly_covered_leaf_ids() {
}

MergeAndShrinkRepresentation::~MergeAndShrinkRepresentation() {
}

// TODO: compute only once instead of for each representation
static vector<vector<int>> compute_reached_values_by_var(const GlobalState &state) {
    // Compute all reached facts (list of values by var) for both leaf and center vars.
    const ExplicitStateCPG *prices = dynamic_cast<const ExplicitStateCPG*>(CPGStorage::storage->get_cpg(state));
    int num_leaves = g_leaves.size();
    vector<vector<int>> reached_values_by_var(g_variable_domain.size());
    for (LeafFactorID leaf(0); leaf < num_leaves; ++leaf) {
        int num_reached_lstates = prices->get_number_states(leaf);
        for (LeafStateHash id(0); id < g_state_registry->size(leaf); ++id) {
            if (prices->has_leaf_state(id, leaf)) {
                LeafState lstate = g_state_registry->lookup_leaf_state(id, leaf);
                for (int leaf_var : g_leaves[leaf]) {
                    reached_values_by_var[leaf_var].push_back(lstate[leaf_var]);
                }
                if (--num_reached_lstates == 0) {
                    break;
                }
            }
        }
        for (int leaf_var : g_leaves[leaf]) {
            utils::sort_unique(reached_values_by_var[leaf_var]);
        }
    }
    for (int var : g_center) {
        reached_values_by_var[var].push_back(state[var]);
    }
    return reached_values_by_var;
}

static int compute_min_leaf_price(
        const ExplicitStateCPG *prices,
        LeafFactorID leaf_id,
        int pos,
        const vector<vector<int>> &reached_leaf_values_by_var,
        vector<int> &leaf_state) {
    const vector<int> &leaf_vars = g_leaves[leaf_id];
    int var = leaf_vars[pos];
    const vector<int> &reached_leaf_values = reached_leaf_values_by_var[var];
    int min_price = INF;
    for (int value : reached_leaf_values) {
        leaf_state[pos] = value;
        int price;
        if (pos < static_cast<int>(leaf_vars.size()) - 1) {
            price = compute_min_leaf_price(
                    prices,
                    leaf_id,
                    pos + 1,
                    reached_leaf_values_by_var,
                    leaf_state);
        } else {
            LeafStateHash leaf_state_id = g_state_registry->get_leaf_state_hash(leaf_state, leaf_id);
            if (prices->has_leaf_state(leaf_state_id, leaf_id)) {
                price = prices->get_cost_of_state(leaf_state_id, leaf_id);
            } else {
                price = INF;
            }
        }
        min_price = min(min_price, price);
    }
    return min_price;
}

static int compute_price_for_leaves(
        const ExplicitStateCPG *prices,
        const vector<vector<int>> &reached_values_by_var,
        const vector<LeafFactorID> &covered_leaf_ids,
        const vector<pair<int, int>> &reached_facts) {

    // TODO: can we avoid converting this list of pairs to list of values by var?
    vector<vector<int>> reached_leaf_values_by_var(g_variable_domain.size());
    for (const pair<int, int> &fact : reached_facts)  {
        reached_leaf_values_by_var[fact.first].push_back(fact.second);
    }

    int sum_prices = 0;
    for (LeafFactorID leaf_id : covered_leaf_ids) {
        const vector<int> &leaf_vars = g_leaves[leaf_id];
        // Use reached values for a leaf var if it is not covered by the M&S tree.
        for (int leaf_var: leaf_vars) {
            if (reached_leaf_values_by_var[leaf_var].empty()) {
                reached_leaf_values_by_var[leaf_var] = reached_values_by_var[leaf_var];
            }
        }

        vector<int> leaf_state(leaf_vars.size());
        int price = compute_min_leaf_price(
                prices,
                leaf_id,
                0,
                reached_leaf_values_by_var,
                leaf_state);
//                cout << "leaf id " << leaf << " has price " << price << endl;
        if (price == INF) {
            return INF;
        }
        sum_prices += price;
    }
    return sum_prices;
}

int MergeAndShrinkRepresentation::compute_decoupled_value_exact(
        const GlobalState &state) const {
    assert(g_factoring);
    const ExplicitStateCPG *prices = dynamic_cast<const ExplicitStateCPG*>(CPGStorage::storage->get_cpg(state));
    vector<int> center_state(g_variable_domain.size(), -1);
    for (int var : g_center) {
        center_state[var] = state[var];
    }
    unordered_map<int, int> hval_to_min_price = get_decoupled_value_exact(prices, center_state);

    clear_cache();

    int min_h_and_price = INF;
    for (const auto &[h, price] : hval_to_min_price) {
//        cout << "h value: " << h << endl;
        if (h == INF || h == PRUNED_STATE) {
            continue;
        }
//        cout << "price:   " << price << endl;
        assert(price != INF);
        min_h_and_price = min(min_h_and_price, h + price);
    }
    return min_h_and_price;
}

int MergeAndShrinkRepresentation::compute_decoupled_value_exact_icaps23(
        const GlobalState &state) const {
    assert(g_factoring);
    vector<vector<int>> reached_values_by_var = compute_reached_values_by_var(state);
//    cout << "reached values by var:" << endl;
//    for (const auto &values : reached_values_by_var) {
//        cout << values << endl;
//    }
    const ExplicitStateCPG *prices = dynamic_cast<const ExplicitStateCPG*>(CPGStorage::storage->get_cpg(state));
    unordered_map<int, pair<int, vector<vector<pair<int, int>>>>> hval_to_price_and_reached_leaf_facts =
            get_decoupled_value_exact_icaps23(prices, reached_values_by_var);

//    cout << "original initial state: " << g_initial_state_data << endl;

    int min_h_and_price = INF;
    for (auto &entry : hval_to_price_and_reached_leaf_facts) {
        int h = entry.first;
//        cout << "h value: " << h << endl;
        if (h == INF || h == PRUNED_STATE) {
            continue;
        }
        // TODO: when computing prices on the way, use them here.
        assert(entry.second.first == INF);
        for (const vector<pair<int, int>> &reached_facts : entry.second.second) {
//            cout << "one partial state mapped: ";
//            for (const auto &bla : reached_facts) {
//                cout << "(" << bla.first << ", " << bla.second << "); ";
//            }
//            cout << endl;
            // TODO we can use a finite min_price as upper bound for pruning in this function
            int sum_prices = compute_price_for_leaves(prices, reached_values_by_var, exactly_covered_leaf_ids, reached_facts);
//            cout << "price:   " << sum_prices << endl;
            if (sum_prices != INF) {
                min_h_and_price = min(min_h_and_price, h + sum_prices);
            }
        }
    }
    return min_h_and_price;
}

int MergeAndShrinkRepresentation::compute_decoupled_value_exact_strongly_compliant_merging(
        const GlobalState &state) const {
    assert(g_factoring);
    const ExplicitStateCPG *prices = dynamic_cast<const ExplicitStateCPG*>(CPGStorage::storage->get_cpg(state));
    unordered_map<int, int> hval_to_min_price = get_decoupled_value_exact_strongly_compliant_merging(state, prices);

    int min_h_and_price = INF;
    for (const auto &[h, price] : hval_to_min_price) {
//        cout << "h value: " << h << endl;
        if (h == INF || h == PRUNED_STATE) {
            continue;
        }
//        cout << "price:   " << price << endl;
        assert(price != INF);
        min_h_and_price = min(min_h_and_price, h + price);
    }
    return min_h_and_price;
}

void compute_decoupled_value_explicit_member_states(
        const ExplicitStateCPG *prices,
        const MergeAndShrinkRepresentation *ms_repr,
        const vector<LeafFactorID> &covered_leaves,
        vector<int> &member_state,
        int &min_h,
        int sum_prices,
        int index) {

    if (sum_prices >= min_h){
        // cannot possibly improve heuristic
        return;
    }

    if (index == static_cast<int>(covered_leaves.size())){
        int h = ms_repr->get_value(member_state);
        if (h != PRUNED_STATE) {
            min_h = min(min_h, sum_prices + h);
        }
        return;
    }

    LeafFactorID leaf = covered_leaves[index];
    int num_reached_l_states = prices->get_number_states(leaf);
    for (LeafStateHash l_id(0); l_id < g_state_registry->size(leaf); ++l_id){
        if (prices->has_leaf_state(l_id, leaf)){
            LeafState l_state = g_state_registry->lookup_leaf_state(l_id, leaf);
            for (int var : g_leaves[leaf]){
                member_state[var] = l_state[var];
            }
            int price = prices->get_cost_of_state(l_id, leaf);
            compute_decoupled_value_explicit_member_states(prices,
                                                           ms_repr,
                                                           covered_leaves,
                                                           member_state,
                                                           min_h,
                                                           sum_prices + price,
                                                           index + 1);
            if (--num_reached_l_states == 0){
                break;
            }
        }
    }
}

int MergeAndShrinkRepresentation::compute_decoupled_value_explicit(
            const GlobalState &state) const {
    const ExplicitStateCPG *prices = dynamic_cast<const ExplicitStateCPG*>(CPGStorage::storage->get_cpg(state));
    vector<int> member_state(g_variable_domain.size(), -1);
    for (int var : g_center){
        member_state[var] = state[var];
    }
    int min_h = INF;
    compute_decoupled_value_explicit_member_states(prices,
                                                   this,
                                                   exactly_covered_leaf_ids,
                                                   member_state,
                                                   min_h,
                                                   0,
                                                   0);
    return min_h;
}

void MergeAndShrinkRepresentation::store_all_affected_leaf_ids_in_root(const vector<bool> &contained_vars) {
    assert(exactly_covered_leaf_ids.empty());
    for (LeafFactorID leaf_id(0); leaf_id < g_leaves.size(); ++leaf_id){
        for (int var : g_leaves[leaf_id]){
            if (contained_vars[var]){
                exactly_covered_leaf_ids.push_back(leaf_id);
                break;
            }
        }
    }
}

int MergeAndShrinkRepresentation::get_domain_size() const {
    return domain_size;
}


MergeAndShrinkRepresentationLeaf::MergeAndShrinkRepresentationLeaf(
    int var_id, int domain_size)
    : MergeAndShrinkRepresentation(domain_size),
      var_id(var_id),
      lookup_table(domain_size) {
    iota(lookup_table.begin(), lookup_table.end(), 0);
}

void MergeAndShrinkRepresentationLeaf::get_contained_vars(
    vector<bool> &contained_vars) const {
    contained_vars[var_id] = true;
}

static bool is_leaf_exactly_covered(
        const vector<int> &leaf_factor,
        const vector<bool> &contained_vars,
        const vector<bool> &covered_vars) {
    bool leaf_overlaps_with_representation = false;
    for (int var : leaf_factor) {
        // Only consider leaves that share variables with this representation.
        if (!leaf_overlaps_with_representation && contained_vars[var]) {
            leaf_overlaps_with_representation = true;
        }
        // All leaf variables that are part of this M&S representation
        // have to be in the subtree of this node.
        if (contained_vars[var] && !covered_vars[var]) {
            return false;
        }
    }
    return leaf_overlaps_with_representation;
}

static bool is_leaf_partly_covered(
        const vector<int> &leaf_factor,
        const vector<bool> &contained_vars,
        const vector<bool> &covered_vars) {
    for (int var : leaf_factor) {
        // a variable of leaf_factor that is contained in the MSRepresentation
        // has been seen, i.e. is in covered_leaves
        if (contained_vars[var] && covered_vars[var]) {
            return true;
        }
    }
    return false;
}

void MergeAndShrinkRepresentationLeaf::set_exactly_covered_leaf_ids(
        const vector<bool> &contained_vars,
        vector<bool> &covered_vars,
        bool) {
    LeafFactorID leaf_id = g_belongs_to_factor[var_id];
    if (leaf_id != LeafFactorID::CENTER) {
        covered_vars[var_id] = true;
        bool leaf_exactly_covered = is_leaf_exactly_covered(
                g_leaves[leaf_id], contained_vars, covered_vars);
        if (leaf_exactly_covered) {
            assert(g_leaves[leaf_id].size() == 1);
            assert(exactly_covered_leaf_ids.empty());
            exactly_covered_leaf_ids.push_back(leaf_id);
            covered_vars[var_id] = false;
        }
    }
}

pair<bool, int> MergeAndShrinkRepresentationLeaf::check_compliance_and_nesting(
        const vector<bool> &,
        vector<bool> &covered_vars,
        vector<bool> &covered_leaves) const {
    covered_vars[var_id] = true;
    LeafFactorID factor = g_belongs_to_factor[var_id];
    if (factor != LeafFactorID::CENTER){
        covered_leaves[factor] = true;
    }
    return make_pair(true, 0);
}

void MergeAndShrinkRepresentationLeaf::set_distances(
    const Distances &distances) {
    assert(distances.are_goal_distances_computed());
    for (int &entry : lookup_table) {
        if (entry != PRUNED_STATE) {
            entry = distances.get_goal_distance(entry);
        }
    }
}

void MergeAndShrinkRepresentationLeaf::apply_abstraction_to_lookup_table(
    const vector<int> &abstraction_mapping) {
    int new_domain_size = 0;
    for (int &entry : lookup_table) {
        if (entry != PRUNED_STATE) {
            entry = abstraction_mapping[entry];
            new_domain_size = max(new_domain_size, entry + 1);
        }
    }
    domain_size = new_domain_size;
}

int MergeAndShrinkRepresentationLeaf::get_value(const GlobalState &state) const {
    int value = state[var_id];
    return lookup_table[value];
}

int MergeAndShrinkRepresentationLeaf::get_value(const vector<int> &state) const {
    int value = state[var_id];
    return lookup_table[value];
}

int MergeAndShrinkRepresentationLeaf::get_value(const GlobalState &state,
                                                const LeafState &l_state) const {
    int value;
    if (g_belongs_to_factor[var_id] == LeafFactorID::CENTER) {
        value = state[var_id];
    } else {
        value = l_state[var_id];
    }
    return lookup_table[value];
}

void MergeAndShrinkRepresentationLeaf::enable_cache() {
}

void MergeAndShrinkRepresentationLeaf::disable_cache() {
}

void MergeAndShrinkRepresentationLeaf::clear_cache() const {
}

unordered_map<int, int> MergeAndShrinkRepresentationLeaf::get_decoupled_value_exact(
        const ExplicitStateCPG *prices,
        vector<int> &state) const {
    assert(exactly_covered_leaf_ids.size() <= 1);
    unordered_map<int, int> index_to_min_price;

    if (exactly_covered_leaf_ids.empty()) {
        int index = lookup_table[state[var_id]];
        if (index != PRUNED_STATE) {
            index_to_min_price[index] = 0;
        }
    } else {
        // it has to be a 1-var leaf
        assert(g_leaves[g_belongs_to_factor[var_id]].size() == 1);
        LeafFactorID leaf = exactly_covered_leaf_ids[0];
        assert(leaf == g_belongs_to_factor[var_id]);
        int num_leaf_states = prices->get_number_states(leaf);
        for (LeafStateHash id(0); id < g_state_registry->size(leaf); ++id){
            if (prices->has_leaf_state(id, leaf)){
                LeafState l_state = g_state_registry->lookup_leaf_state(id, leaf);

                int leaf_index = lookup_table[l_state[var_id]];
                if (leaf_index != PRUNED_STATE){
                    int price = prices->get_cost_of_state(id, leaf);
                    auto min_prices_it = index_to_min_price.find(leaf_index);
                    if (min_prices_it != index_to_min_price.end()){
                        min_prices_it->second = min(min_prices_it->second, price);
                    } else {
                        index_to_min_price[leaf_index] = price;
                    }
                }
                if (--num_leaf_states == 0){
                    break;
                }
            }
        }
    }
    return index_to_min_price;
}

unordered_map<int, pair<int, vector<vector<pair<int, int>>>>> MergeAndShrinkRepresentationLeaf::get_decoupled_value_exact_icaps23(
    const ExplicitStateCPG *,
    const vector<vector<int>> &reached_values_by_var) const {
    unordered_map<int, pair<int, vector<vector<pair<int, int>>>>> index_to_price_and_reached_leaf_facts;
    for (int value : reached_values_by_var[var_id]) {
        int index = lookup_table[value];
        if (index != PRUNED_STATE) {
            if (!index_to_price_and_reached_leaf_facts.count(index)) {
                index_to_price_and_reached_leaf_facts[index] =
                    make_pair<int, vector<vector<pair<int, int>>>>(numeric_limits<int>::max(), {});
            }
            if (g_belongs_to_factor[var_id] != LeafFactorID::CENTER) {
                index_to_price_and_reached_leaf_facts[index].second.push_back(vector<pair<int, int>>(1, {var_id, value}));
            } else {
                // TODO dealing with prices is only needed if we do the computation incrementally
                //index_to_price_and_reached_leaf_facts[index].first = 0;
                // we need this "dummy" value here because the cross-product in merge nodes is empty otherwise
                index_to_price_and_reached_leaf_facts[index].second = vector<vector<pair<int, int>>>(1, vector<pair<int, int>>());
            }
        }
    }
    return index_to_price_and_reached_leaf_facts;
}

unordered_map<int, int> MergeAndShrinkRepresentationLeaf::get_decoupled_value_exact_strongly_compliant_merging(
        const GlobalState &state,
        const ExplicitStateCPG *prices) const {
    assert(exactly_covered_leaf_ids.size() <= 1);
    unordered_map<int, int> index_to_min_price;

    if (exactly_covered_leaf_ids.empty()) {
        // var_id has to be a center variable
        assert(g_belongs_to_factor[var_id] == LeafFactorID::CENTER);
        int index = lookup_table[state[var_id]];
        if (index != PRUNED_STATE) {
            index_to_min_price[index] = 0;
        }
    } else {
        // it has to be a 1-var leaf
        assert(g_leaves[g_belongs_to_factor[var_id]].size() == 1);
        LeafFactorID leaf = exactly_covered_leaf_ids[0];
        int num_leaf_states = prices->get_number_states(leaf);
        for (LeafStateHash id(0); id < g_state_registry->size(leaf); ++id){
            if (prices->has_leaf_state(id, leaf)){
                LeafState l_state = g_state_registry->lookup_leaf_state(id, leaf);
                int leaf_index = lookup_table[l_state[var_id]];
                if (leaf_index != PRUNED_STATE){
                    int price = prices->get_cost_of_state(id, leaf);
                    auto min_prices_it = index_to_min_price.find(leaf_index);
                    if (min_prices_it != index_to_min_price.end()){
                        min_prices_it->second = min(min_prices_it->second, price);
                    } else {
                        index_to_min_price[leaf_index] = price;
                    }
                }
                if (--num_leaf_states == 0){
                    break;
                }
            }
        }
    }
    return index_to_min_price;
}

bool MergeAndShrinkRepresentationLeaf::is_total() const {
    for (int entry : lookup_table) {
        if (entry == PRUNED_STATE) {
            return false;
        }
    }
    return true;
}

void MergeAndShrinkRepresentationLeaf::dump(utils::LogProxy &log) const {
    if (log.is_at_least_debug()) {
        log << "lookup table (leaf): ";
        for (const auto &value : lookup_table) {
            log << value << ", ";
        }
        log << endl;
    }
}


MergeAndShrinkRepresentationMerge::MergeAndShrinkRepresentationMerge(
    unique_ptr<MergeAndShrinkRepresentation> left_child_,
    unique_ptr<MergeAndShrinkRepresentation> right_child_)
    : MergeAndShrinkRepresentation(left_child_->get_domain_size() *
                                   right_child_->get_domain_size()),
      left_child(move(left_child_)),
      right_child(move(right_child_)),
      lookup_table(left_child->get_domain_size(),
                   vector<int>(right_child->get_domain_size())),
      use_cache(false) {
    int counter = 0;
    for (vector<int> &row : lookup_table) {
        for (int &entry : row) {
            entry = counter;
            ++counter;
        }
    }
}

void MergeAndShrinkRepresentationMerge::get_contained_vars(
    vector<bool> &contained_vars) const {
    left_child->get_contained_vars(contained_vars);
    right_child->get_contained_vars(contained_vars);
}

void MergeAndShrinkRepresentationMerge::set_exactly_covered_leaf_ids(
        const vector<bool> &contained_vars,
        vector<bool> &covered_vars,
        bool store_cache_idx_vars) {
    vector<bool> covered_vars_left(g_variable_domain.size(), false);
    vector<bool> covered_vars_right(g_variable_domain.size(), false);
    left_child->set_exactly_covered_leaf_ids(contained_vars, covered_vars_left, store_cache_idx_vars);
    right_child->set_exactly_covered_leaf_ids(contained_vars, covered_vars_right, store_cache_idx_vars);
    for (size_t var = 0; var < g_variable_domain.size(); ++var){
        covered_vars[var] = covered_vars_left[var] || covered_vars_right[var];
    }
    assert(exactly_covered_leaf_ids.empty());
    for (const auto &leaf : g_leaves) {
        if (is_leaf_exactly_covered(leaf, contained_vars, covered_vars)) {
            exactly_covered_leaf_ids.push_back(g_belongs_to_factor[leaf[0]]);
            // Reset all leaf variables so that we only once record a leaf as covered.
            for (int var : leaf) {
                covered_vars[var] = false;
            }
        } else if (store_cache_idx_vars){
            if (is_leaf_partly_covered(leaf, contained_vars, covered_vars)) {
                for (int var: leaf) {
                    if (covered_vars[var]) {
                        assert(contained_vars[var]);
                        // var is part of this MS representation and covered below this node
                        cache_idx_variables.push_back(var);
                    }
                }
            }
        }
    }
}

pair<bool, int> MergeAndShrinkRepresentationMerge::check_compliance_and_nesting(
        const vector<bool> &contained_vars,
        vector<bool> &covered_vars,
        vector<bool> &covered_leaves) const {

    vector<bool> covered_vars_left(g_variable_domain.size(), false);
    vector<bool> covered_leaves_left(g_leaves.size(), false);
    auto [is_strongly_compliant_left, max_nesting_left] = left_child->check_compliance_and_nesting(
            contained_vars,
            covered_vars_left,
            covered_leaves_left);

    vector<bool> covered_vars_right(g_variable_domain.size(), false);
    vector<bool> covered_leaves_right(g_leaves.size(), false);
    auto [is_strongly_compliant_right, max_nesting_right] = right_child->check_compliance_and_nesting(
            contained_vars,
            covered_vars_right,
            covered_leaves_right);

    // count the number of partially covered leaves in left+right child (nestedness)
    int nesting = 0;
    int num_covered_leaves = 0;
    for (LeafFactorID leaf_id(0); leaf_id < g_leaves.size(); ++leaf_id){
        if (covered_leaves_left[leaf_id]) {
            num_covered_leaves++;
            covered_leaves[leaf_id] = true;
            for (int var: g_leaves[leaf_id]) {
                if (contained_vars[var] && !covered_vars_left[var]) {
                    nesting++;
                    break;
                }
            }
        } else if (covered_leaves_right[leaf_id]) {
            num_covered_leaves++;
            covered_leaves[leaf_id] = true;
            for (int var: g_leaves[leaf_id]) {
                if (contained_vars[var] && !covered_vars_right[var]) {
                    nesting++;
                    break;
                }
            }
        }
    }

    bool is_strongly_compliant = is_strongly_compliant_left && is_strongly_compliant_right;
    if (!exactly_covered_leaf_ids.empty() && num_covered_leaves > 1){
        // an MSRepresentation is strongly compliant if for every leaf L there
        // exists a node n such that L is exactly covered in n and no other leaf
        // is covered in n
        is_strongly_compliant = false;
    }

    for (int var = 0; var < static_cast<int>(g_variable_domain.size()); ++var) {
        covered_vars[var] = covered_vars_left[var] || covered_vars_right[var];
    }

    return make_pair(is_strongly_compliant, max(max(max_nesting_left, max_nesting_right), nesting));
}

void MergeAndShrinkRepresentationMerge::set_distances(
    const Distances &distances) {
    assert(distances.are_goal_distances_computed());
    for (vector<int> &row : lookup_table) {
        for (int &entry : row) {
            if (entry != PRUNED_STATE) {
                entry = distances.get_goal_distance(entry);
            }
        }
    }
}

void MergeAndShrinkRepresentationMerge::apply_abstraction_to_lookup_table(
    const vector<int> &abstraction_mapping) {
    int new_domain_size = 0;
    for (vector<int> &row : lookup_table) {
        for (int &entry : row) {
            if (entry != PRUNED_STATE) {
                entry = abstraction_mapping[entry];
                new_domain_size = max(new_domain_size, entry + 1);
            }
        }
    }
    domain_size = new_domain_size;
}

int MergeAndShrinkRepresentationMerge::get_value(
    const GlobalState &state) const {
    int state1 = left_child->get_value(state);
    int state2 = right_child->get_value(state);
    if (state1 == PRUNED_STATE || state2 == PRUNED_STATE)
        return PRUNED_STATE;
    return lookup_table[state1][state2];
}

int MergeAndShrinkRepresentationMerge::get_value(
        const vector<int> &state) const {
    int state1 = left_child->get_value(state);
    int state2 = right_child->get_value(state);
    if (state1 == PRUNED_STATE || state2 == PRUNED_STATE)
        return PRUNED_STATE;
    return lookup_table[state1][state2];
}

int MergeAndShrinkRepresentationMerge::get_value(
        const GlobalState &state,
        const LeafState &l_state) const {
    int state1 = left_child->get_value(state, l_state);
    int state2 = right_child->get_value(state, l_state);
    if (state1 == PRUNED_STATE || state2 == PRUNED_STATE)
        return PRUNED_STATE;
    return lookup_table[state1][state2];
}

void MergeAndShrinkRepresentationMerge::enable_cache() {
    left_child->enable_cache();
    right_child->enable_cache();
    use_cache = true;
}

void MergeAndShrinkRepresentationMerge::disable_cache() {
    left_child->disable_cache();
    right_child->disable_cache();
    use_cache = false;
}

void MergeAndShrinkRepresentationMerge::clear_cache() const {
    if (use_cache) {
        cache.clear();
        left_child->clear_cache();
        right_child->clear_cache();
    }
}

unordered_map<int, int> MergeAndShrinkRepresentationMerge::get_decoupled_value_exact_merge(
        const ExplicitStateCPG *prices,
        vector<int> &state) const {

    unordered_map<int, int> index_to_min_price_left =
            left_child->get_decoupled_value_exact(prices, state);
    unordered_map<int, int> index_to_min_price_right =
            right_child->get_decoupled_value_exact(prices, state);
    unordered_map<int, int> result;

    for (const auto &[left_index, left_price] : index_to_min_price_left) {
        for (const auto &[right_index, right_price] : index_to_min_price_right) {
            int merge_index = lookup_table[left_index][right_index];
            if (merge_index != PRUNED_STATE) {
                auto min_prices_it = result.find(merge_index);
                if (min_prices_it != result.end()){
                    min_prices_it->second = min(min_prices_it->second, left_price + right_price);
                } else {
                    result[merge_index] = left_price + right_price;
                }
            }
        }
    }
    return result;
}

unordered_map<int, int> MergeAndShrinkRepresentationMerge::get_decoupled_value_exact_enumerate_exactly_covered_leaves_recursive(
        const ExplicitStateCPG *prices,
        int i,
        vector<int> &state) const {

    if (i == static_cast<int>(exactly_covered_leaf_ids.size())){
        // variables of all leaves exactly covered in this node are assigned a value in state => do lookup
        return get_decoupled_value_exact_merge(prices, state);
    }

    unordered_map<int, int> result;
    LeafFactorID leaf = exactly_covered_leaf_ids[i];
    int num_leaf_states = prices->get_number_states(leaf);
    for (LeafStateHash id(0); id < g_state_registry->size(leaf); ++id){
        if (prices->has_leaf_state(id, leaf)){
            LeafState l_state = g_state_registry->lookup_leaf_state(id, leaf);
            for (int var : g_leaves[leaf]) {
                state[var] = l_state[var];
            }
            unordered_map<int, int> index_to_min_price =
                    get_decoupled_value_exact_enumerate_exactly_covered_leaves_recursive(prices, i + 1, state);
            int price = prices->get_cost_of_state(id, leaf);
            for (const auto &[index, summed_prices] : index_to_min_price) {
                assert(index != PRUNED_STATE);
                auto it = result.find(index);
                if (it == result.end()) {
                    result[index] = price + summed_prices;
                } else {
                    it->second = min(it->second, price + summed_prices);
                }
            }
            if (--num_leaf_states == 0){
                break;
            }
        }
    }
    return result;
}

unordered_map<int, int> MergeAndShrinkRepresentationMerge::get_decoupled_value_exact(
    const ExplicitStateCPG *prices,
    vector<int> &state) const {

    if (use_cache){
        // Check if state has been cached and return cached value if yes.
        // Note that cache_idx_variables can be empty here. In that case, the values of this node do not depend
        // on any variable assignment from a node above. This node might still be visited multiple times, since
        // higher up in the tree we don't know that its values are constant.
        vector<int> partial_cache_state;
        partial_cache_state.reserve(cache_idx_variables.size());
        for (int var : cache_idx_variables) {
            partial_cache_state.push_back(state[var]);
        }
        auto it = cache.find(partial_cache_state);
        if (it != cache.end()) {
            return it->second;
        }

        if (!exactly_covered_leaf_ids.empty()){
            cache[partial_cache_state] = get_decoupled_value_exact_enumerate_exactly_covered_leaves_recursive(
                    prices, 0, state);
            return cache[partial_cache_state];
        } else {
            cache[partial_cache_state] = get_decoupled_value_exact_merge(prices, state);
            return cache[partial_cache_state];
        }
    }

    if (!exactly_covered_leaf_ids.empty()){
        // One or more leaves are completely covered below this node, lookup all reached indexes and
        // corresponding minimum prices by recursively enumerating combinations of reached leaf states across
        // these leaves.
        return get_decoupled_value_exact_enumerate_exactly_covered_leaves_recursive(
                prices, 0, state);
    } else {
        // no leaf is exactly covered in this node, proceed with standard tree traversal
        return get_decoupled_value_exact_merge(prices, state);
    }
}

unordered_map<int, pair<int, vector<vector<pair<int, int>>>>> MergeAndShrinkRepresentationMerge::get_decoupled_value_exact_icaps23(
    const ExplicitStateCPG *prices,
    const vector<vector<int>> &reached_values_by_var) const {
    unordered_map<int, pair<int, vector<vector<pair<int, int>>>>> index_to_price_and_reached_facts_left =
        left_child->get_decoupled_value_exact_icaps23(prices, reached_values_by_var);
    unordered_map<int, pair<int, vector<vector<pair<int, int>>>>> index_to_price_and_reached_facts_right =
        right_child->get_decoupled_value_exact_icaps23(prices, reached_values_by_var);
    unordered_map<int, pair<int, vector<vector<pair<int, int>>>>> index_to_price_and_reached_facts_merge;
    for (const auto &left : index_to_price_and_reached_facts_left) {
        for (const auto &right : index_to_price_and_reached_facts_right) {
            int left_index = left.first;
            int right_index = right.first;
            int merge_index = lookup_table[left_index][right_index];
            if (merge_index != PRUNED_STATE) {
                if (!index_to_price_and_reached_facts_merge.count(merge_index)) {
                    index_to_price_and_reached_facts_merge[merge_index] =
                        make_pair<int, vector<vector<pair<int, int>>>>(numeric_limits<int>::max(), {});
                }

                // TODO dealing with prices is only needed if we do the computation incrementally
                /*int min_price = INF;
                if (left.second.first != INF && right.second.first != INF) {
                    min_price = left.second.first + right.second.first;
                }

                index_to_price_and_reached_facts_merge[merge_index].first =
                    min(index_to_price_and_reached_facts_merge[merge_index].first, min_price);*/
                vector<vector<pair<int, int>>> &merge_reached_facts = index_to_price_and_reached_facts_merge[merge_index].second;
                for (const vector<pair<int, int>> &reached_facts_left : left.second.second) {
                    for (const vector<pair<int, int>> &reached_facts_right : right.second.second) {
                        vector<pair<int, int>> temp(reached_facts_left);
                        temp.insert(temp.end(), reached_facts_right.begin(), reached_facts_right.end());
                        merge_reached_facts.push_back(move(temp));
                    }
                }
            }
        }
    }
    return index_to_price_and_reached_facts_merge;
}

unordered_map<int, int> MergeAndShrinkRepresentationMerge::get_decoupled_value_exact_strongly_compliant_merging(
            const GlobalState &state,
            const ExplicitStateCPG *prices) const {
    assert(exactly_covered_leaf_ids.size() <= 1);

    if (!exactly_covered_leaf_ids.empty()){
        // leaf is completely covered below this node, lookup all reached indexes and
        // corresponding minimum price
        LeafFactorID leaf = exactly_covered_leaf_ids[0];
        unordered_map<int, int> index_to_min_price;
        int num_leaf_states = prices->get_number_states(leaf);
        for (LeafStateHash id(0); id < g_state_registry->size(leaf); ++id){
            if (prices->has_leaf_state(id, leaf)){
                LeafState l_state = g_state_registry->lookup_leaf_state(id, leaf);
                int leaf_index = get_value(state, l_state);
                if (leaf_index != PRUNED_STATE){
                    int price = prices->get_cost_of_state(id, leaf);
                    auto min_prices_it = index_to_min_price.find(leaf_index);
                    if (min_prices_it != index_to_min_price.end()){
                        min_prices_it->second = min(min_prices_it->second, price);
                    } else {
                        index_to_min_price[leaf_index] = price;
                    }
                }
                if (--num_leaf_states == 0){
                    break;
                }
            }
        }
        return index_to_min_price;
    }

    unordered_map<int, int> index_to_min_price_left =
            left_child->get_decoupled_value_exact_strongly_compliant_merging(state, prices);
    unordered_map<int, int> index_to_min_price_right =
            right_child->get_decoupled_value_exact_strongly_compliant_merging(state, prices);
    unordered_map<int, int> index_to_min_price;

    for (const auto &[left_index, left_price]: index_to_min_price_left) {
        for (const auto &[right_index, right_price]: index_to_min_price_right) {
            int merge_index = lookup_table[left_index][right_index];
            if (merge_index != PRUNED_STATE) {
                auto min_prices_it = index_to_min_price.find(merge_index);
                if (min_prices_it != index_to_min_price.end()){
                    min_prices_it->second = min(min_prices_it->second, left_price + right_price);
                } else {
                    index_to_min_price[merge_index] = left_price + right_price;
                }
            }
        }
    }
    return index_to_min_price;
}

bool MergeAndShrinkRepresentationMerge::is_total() const {
    for (const vector<int> &row : lookup_table) {
        for (int entry : row) {
            if (entry == PRUNED_STATE) {
                return false;
            }
        }
    }
    return left_child->is_total() && right_child->is_total();
}

void MergeAndShrinkRepresentationMerge::dump(utils::LogProxy &log) const {
    if (log.is_at_least_debug()) {
        log << "lookup table (merge): " << endl;
        for (const auto &row : lookup_table) {
            for (const auto &value : row) {
                log << value << ", ";
            }
            log << endl;
        }
        log << "left child:" << endl;
        left_child->dump(log);
        log << "right child:" << endl;
        right_child->dump(log);
    }
}
}
