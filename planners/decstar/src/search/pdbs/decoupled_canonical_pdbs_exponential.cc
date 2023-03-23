#include "decoupled_canonical_pdbs_exponential.h"

#include "decoupled_pdb_utils.h"
#include "pattern_database.h"
#include "pattern_filter.h"

#include "../globals.h"
#include "../state.h"

#include "../compliant_paths/cpg_storage.h"
#include "../compliant_paths/explicit_state_cpg.h"

#include "../utils/rng.h"
#include "../utils/rng_options.h"

#include "../option_parser.h"

#include <cassert>

using namespace std;

namespace pdbs {
DecoupledCanonicalPDBsExponential::DecoupledCanonicalPDBsExponential(
        const shared_ptr<PDBCollection> &pdbs,
        const shared_ptr<vector<PatternClique>> &pattern_cliques,
        ExplicitLeafSortingType sort_leaves_type,
        bool early_termination,
        IncrementalComputation incremental_computation,
        const shared_ptr<utils::RandomNumberGenerator> &rng)
        : CanonicalPDBs(pdbs, pattern_cliques),
          sort_leaves_type(sort_leaves_type),
          early_termination(early_termination),
          incremental_computation(incremental_computation) {

    unordered_set<LeafFactorID> aff_leaves;
    affected_leaves_by_pattern.resize(pdbs->size());
    vector<int> num_patterns_per_leaf(g_leaves.size());
    for (PatternID pid = 0; pid < static_cast<int>(pdbs->size()); ++pid) {
        unordered_set<LeafFactorID> tmp = get_leaf_factors_of_pattern((*pdbs)[pid]->get_pattern());
        affected_leaves_by_pattern[pid] = vector<LeafFactorID>(tmp.begin(), tmp.end());
        if (affected_leaves_by_pattern[pid].empty()) {
            center_only_patterns.push_back(pid);
        } else {
            for (LeafFactorID leaf : affected_leaves_by_pattern[pid]) {
                num_patterns_per_leaf[leaf]++;
                aff_leaves.insert(leaf);
            }
        }
    }
    affected_leaves = vector<LeafFactorID>(aff_leaves.begin(), aff_leaves.end());

    if (incremental_computation == IncrementalComputation::RECOMPUTE ||
        incremental_computation == IncrementalComputation::COPY) {
        cliques_by_pattern.resize(pdbs->size());
    }
    for (int cid = 0; cid < static_cast<int>(pattern_cliques->size()); ++cid) {
        bool is_center_clique = true;
        for (PatternID pid : (*pattern_cliques)[cid]) {
            if (!affected_leaves_by_pattern[pid].empty()){
                is_center_clique = false;
                break;
            }
        }
        if (is_center_clique) {
            center_only_cliques.push_back(cid);
        } else if (incremental_computation == IncrementalComputation::RECOMPUTE ||
                   incremental_computation == IncrementalComputation::COPY) {
            for (PatternID pid : (*pattern_cliques)[cid]) {
                cliques_by_pattern[pid].push_back(cid);
            }
        }
    }

    if (sort_leaves_type == ExplicitLeafSortingType::STATIC) {
        // sort leaf factors by descending number of affecting patterns
        sort(affected_leaves.begin(), affected_leaves.end(),
             [&](const LeafFactorID &l1, const LeafFactorID &l2) -> bool {
                 return num_patterns_per_leaf[l1] > num_patterns_per_leaf[l2];
             });
    } else if (sort_leaves_type == ExplicitLeafSortingType::LEAFID){
        // sort by ascending LeafFactorID
        sort(affected_leaves.begin(), affected_leaves.end());
    } else if (sort_leaves_type == ExplicitLeafSortingType::RANDOM){
        // first sort by LeafFactorID to have a deterministic start, then shuffle
        sort(affected_leaves.begin(), affected_leaves.end());
        rng->shuffle(affected_leaves);
    }

    apply_resorted_affected_leaves();
}

void DecoupledCanonicalPDBsExponential::apply_resorted_affected_leaves() const {
    if (incremental_computation == IncrementalComputation::NONE) {
        cliques_by_rec_depth = vector<vector<PatternID>>(g_leaves.size());
    }
    patterns_by_rec_depth = vector<vector<PatternID>>(g_leaves.size());
    vector<int> rec_depth_by_pattern(pdbs->size(), -1);
    vector<int> leaf_indices(g_leaves.size());
    for (int i = 0; i < static_cast<int>(affected_leaves.size()); ++i){
        leaf_indices[affected_leaves[i]] = i;
    }
    for (PatternID pid = 0; pid < static_cast<int>(pdbs->size()); ++pid) {
        int max_d = -1;
        for (LeafFactorID leaf: affected_leaves_by_pattern[pid]){
            max_d = max(max_d, leaf_indices[leaf]);
            if (max_d == static_cast<int>(affected_leaves.size() - 1)){
                break;
            }
        }
        rec_depth_by_pattern[pid] = max_d;
        if (max_d != -1) {
            // not a center-only pattern
            patterns_by_rec_depth[max_d].push_back(pid);
        }
    }
    if (incremental_computation == IncrementalComputation::NONE) {
        for (int cid = 0; cid < static_cast<int>(pattern_cliques->size()); ++cid) {
            int max_c_d = -1;
            for (PatternID pid: (*pattern_cliques)[cid]) {
                max_c_d = max(max_c_d, rec_depth_by_pattern[pid]);
                if (max_c_d == static_cast<int>(affected_leaves.size() - 1)){
                    break;
                }
            }
            if (max_c_d != -1) {
                // not a center-only clique
                cliques_by_rec_depth[max_c_d].push_back(cid);
            }
        }
    }
}

int DecoupledCanonicalPDBsExponential::get_value(const GlobalState &state) const {
    // If we have an empty collection, then pattern_cliques = { \emptyset }.
    assert(!pattern_cliques->empty());

    if (affected_leaves.empty()){
        // compute maximal heuristic value for the center state
        return CanonicalPDBs::get_value(state);
    } else {
        // compute minimum heuristic value across all member states
        vector<int> member_state(g_variable_domain.size(), -1);
        set_center_facts(state, member_state);

        vector<int> h_values(pdbs->size());
        vector<int> clique_h_values;
        int min_clique_h = 0;
        if (incremental_computation == IncrementalComputation::COPY) {
            clique_h_values.resize(pattern_cliques->size());
        }
        // the heuristic value of these patterns is independent of the leaves
        for (PatternID p_id : center_only_patterns){
            h_values[p_id] = (*pdbs)[p_id]->get_value(member_state);
            if (h_values[p_id] == numeric_limits<int>::max()){
                // center state is detected as deadend
                return numeric_limits<int>::max();
            }
            if (incremental_computation == IncrementalComputation::COPY) {
                for (int c_id : cliques_by_pattern[p_id]) {
                    // set partial clique values for cliques that include center-only patterns
                    clique_h_values[c_id] += h_values[p_id];
                }
            }
            min_clique_h = max(min_clique_h, h_values[p_id]);
        }

        for (int cid : center_only_cliques){
            int clique_h = 0;
            for (PatternID pdb_index : (*pattern_cliques)[cid]) {
                clique_h += h_values[pdb_index];
            }
            min_clique_h = max(min_clique_h, clique_h);
            if (incremental_computation == IncrementalComputation::COPY) {
                // we need this here because center-only cliques are not included in cliques_by_pattern
                clique_h_values[cid] = clique_h;
            }
        }

        const ExplicitStateCPG *prices = dynamic_cast<const ExplicitStateCPG*>(CPGStorage::storage->get_cpg(state));

        if (sort_leaves_type == ExplicitLeafSortingType::DYNAMIC) {
            // sort leaf factors by ascending number of reached leaf states
            if (!is_sorted(affected_leaves.begin(), affected_leaves.end(),
                                [&](const LeafFactorID &l1, const LeafFactorID &l2) -> bool {
                                    return prices->get_number_states(l1) < prices->get_number_states(l2);
                                })){
                sort(affected_leaves.begin(), affected_leaves.end(),
                     [&](const LeafFactorID &l1, const LeafFactorID &l2) -> bool {
                         return prices->get_number_states(l1) < prices->get_number_states(l2);
                     });
                apply_resorted_affected_leaves();
            }
        }

        int final_h = numeric_limits<int>::max();
        compute_min_distance_decoupled_exponential(prices, member_state, h_values, 0, 0, clique_h_values, min_clique_h, final_h);
        return final_h;
    }
}

bool DecoupledCanonicalPDBsExponential::compute_minimum_for_cliques(
        const vector<int> &clique_ids,
        int &min_clique_h,
        const vector<int> &h_values,
        int sum_prices,
        int min_h) const {
    vector<bool> handled_clique;
    if (incremental_computation == IncrementalComputation::RECOMPUTE){
        handled_clique.resize(pattern_cliques->size());
    }
    for (int cid : clique_ids){
        if (incremental_computation == IncrementalComputation::RECOMPUTE) {
            if (handled_clique[cid]) {
                continue;
            }
            handled_clique[cid] = true;
        }
        int clique_h = 0;
        for (PatternID pdb_index : (*pattern_cliques)[cid]) {
            clique_h += h_values[pdb_index];
        }
        min_clique_h = max(min_clique_h, clique_h);
        if (early_termination && sum_prices + min_clique_h >= min_h){
            // we cannot possibly improve the heuristic
            // it's important to check this here in cases where there are many cliques
            return true;
        }
    }
    return false;
}

void DecoupledCanonicalPDBsExponential::compute_min_distance_decoupled_exponential(
        const ExplicitStateCPG *cpg,
        vector<int> &member_state,
        vector<int> &h_values,
        int i,
        int sum_prices,
        const vector<int> &partial_clique_h_values,
        int min_clique_h,
        int &min_h) const {

    if (early_termination && sum_prices + min_clique_h >= min_h){
        // we cannot possibly improve the heuristic
        return;
    }

    int number_states = cpg->get_number_states(affected_leaves[i]);
    for (LeafStateHash id(0); id < g_state_registry->size(affected_leaves[i]); ++id) {
        if (number_states == 0){
            break;
        }
        if (cpg->has_leaf_state(id, affected_leaves[i])){
            --number_states;
            set_leaf_facts(id, affected_leaves[i], member_state);

            int price = cpg->get_cost_of_state(id, affected_leaves[i]);

            bool prune = false;
            vector<int> changed_cliques;
            vector<int> new_partial_clique_h_values;
            if (incremental_computation == IncrementalComputation::COPY) {
                new_partial_clique_h_values = partial_clique_h_values;
            }
            for (PatternID p_id : patterns_by_rec_depth[i]){
                h_values[p_id] = (*pdbs)[p_id]->get_value(member_state);
                if (h_values[p_id] == numeric_limits<int>::max()){
                    // partial member state is detected as deadend
                    prune = true;
                    break;
                }
                if (early_termination && sum_prices + price + h_values[p_id] >= min_h){
                    // we cannot possibly improve the heuristic
                    prune = true;
                    break;
                }
                if (incremental_computation == IncrementalComputation::RECOMPUTE) {
                    changed_cliques.insert(changed_cliques.end(),
                                           cliques_by_pattern[p_id].begin(),
                                           cliques_by_pattern[p_id].end());
                } else if (incremental_computation == IncrementalComputation::COPY) {
                    for (int c_id : cliques_by_pattern[p_id]) {
                        new_partial_clique_h_values[c_id] += h_values[p_id];
                    }
                }
            }
            if (prune){
                // deadend or we cannot possibly improve the heuristic
                continue;
            }

            int min_clique_h_lstate;
            if (incremental_computation == IncrementalComputation::COPY) {
                min_clique_h_lstate = *max_element(new_partial_clique_h_values.begin(), new_partial_clique_h_values.end());
                if (early_termination && sum_prices + price + min_clique_h_lstate >= min_h){
                    // we cannot possibly improve the heuristic
                    prune = true;
                }
            } else {
                min_clique_h_lstate = min_clique_h;
                if (incremental_computation == IncrementalComputation::NONE) {
                    prune = compute_minimum_for_cliques(cliques_by_rec_depth[i],
                                                        min_clique_h_lstate,
                                                        h_values,
                                                        sum_prices + price,
                                                        min_h);
                } else if (incremental_computation == IncrementalComputation::RECOMPUTE) {
                    prune = compute_minimum_for_cliques(changed_cliques,
                                                        min_clique_h_lstate,
                                                        h_values,
                                                        sum_prices + price,
                                                        min_h);
                }
            }
            if (prune){
                // we cannot possibly improve the heuristic
                continue;
            }

            if (i < static_cast<int>(affected_leaves.size()) - 1){
                // recursion
                compute_min_distance_decoupled_exponential(cpg,
                                                           member_state,
                                                           h_values,
                                                           i + 1,
                                                           sum_prices + price,
                                                           new_partial_clique_h_values,
                                                           min_clique_h_lstate,
                                                           min_h);
            } else {
                // end recursion
                min_h = min(min_h, sum_prices + price + min_clique_h_lstate);
            }
        }
    }
    // set values of heuristics computed in this recursion to 0, since they
    // will be accessed when computing clique values incrementally; need to
    // avoid reading values from different member states
    for (PatternID p_id : patterns_by_rec_depth[i]) {
        h_values[p_id] = 0;
    }
}

void add_exponential_options_to_parser(options::OptionParser &parser) {
    vector<string> sort_leaves_types;
    vector<string> sort_leaves_descriptions;

    sort_leaves_types.push_back("LEAFID");
    sort_leaves_descriptions.push_back("Sort the leaves according to their LeafFactorID.");

    sort_leaves_types.push_back("STATIC");
    sort_leaves_descriptions.push_back("Sort once before search, descending by number of patterns affecting a leaf.");

    sort_leaves_types.push_back("DYNAMIC");
    sort_leaves_descriptions.push_back("Resort for every decoupled state, ascending by number of reached leaf states per leaf.");

    sort_leaves_types.push_back("RANDOM");
    sort_leaves_descriptions.push_back("Randomly sort affected_leaves once upon construction.");

    parser.add_enum_option<ExplicitLeafSortingType>(
            "sort_leaves_type",
            sort_leaves_types,
            "How to resort leaf factors to obtain stronger pruning with the early_termination option.",
            "LEAFID",
            sort_leaves_descriptions);

    parser.add_option<bool>("early_termination",
                            "Prune the recursion that enumerates member states if no better"
                            "heuristic value can possibly be achieved.",
                            "true");

    vector<string> incremental_computation;
    vector<string> incremental_computation_desc;
    incremental_computation.emplace_back("none");
    incremental_computation_desc.emplace_back("no incremental computation");
    incremental_computation.emplace_back("copy");
    incremental_computation_desc.emplace_back(
        "compute partial h-values for each clique/cp heuristic and copy them "
        "for each recursive call");
    incremental_computation.emplace_back("recompute");
    incremental_computation_desc.emplace_back(
        "recompute h-values for each clique/cp heuristic in each recursive call");
    parser.add_enum_option<IncrementalComputation>(
        "incremental_computation",
        incremental_computation,
        "Different ways of computing h-values of cliques/cp heuristics during recursion",
        "recompute",
        incremental_computation_desc);

    utils::add_rng_options(parser);
}
}
