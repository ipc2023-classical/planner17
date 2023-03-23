#include "decoupled_canonical_pdbs_exponential_broken.h"

#include "decoupled_pdb_utils.h"
#include "pattern_database.h"
#include "pattern_filter.h"

#include "../globals.h"
#include "../state.h"

#include "../compliant_paths/cpg_storage.h"
#include "../compliant_paths/explicit_state_cpg.h"

#include <algorithm>
#include <cassert>
#include <limits>
#include <iostream>

using namespace std;

namespace pdbs {
DecoupledCanonicalPDBsExponentialBroken::DecoupledCanonicalPDBsExponentialBroken(
    const shared_ptr<PDBCollection> &pdbs,
    const shared_ptr<vector<PatternClique>> &pattern_cliques)
    : CanonicalPDBs(pdbs, pattern_cliques) {

    is_center_only_pattern.reserve(pdbs->size());

    unordered_set<LeafFactorID> aff_leaves;
    for (const shared_ptr<PatternDatabase> &pdb : *pdbs) {
        unordered_set<LeafFactorID> tmp = get_leaf_factors_of_pattern(pdb->get_pattern());
        if (tmp.empty()){
            is_center_only_pattern.push_back(true);
            center_only_patterns.push_back(is_center_only_pattern.size() - 1);
        } else {
            is_center_only_pattern.push_back(false);
            aff_leaves.insert(tmp.begin(), tmp.end());
        }
    }
    affected_leaves = vector<LeafFactorID>(aff_leaves.begin(), aff_leaves.end());
}

int DecoupledCanonicalPDBsExponentialBroken::get_value(const GlobalState &state) const {
    // If we have an empty collection, then pattern_cliques = { \emptyset }.
    assert(!pattern_cliques->empty());

    if (affected_leaves.empty()){
        // compute maximal heuristic value for the center state
        return CanonicalPDBs::get_value(state);
    } else {
        // compute minimum heuristic value across all member states
        vector<int> member_state(g_variable_domain.size(), -1);
        set_center_facts(state, member_state);

        vector<int> c_only_h_values;
        if (!center_only_patterns.empty()){
            // the heuristic value of these patterns is independent of the leaves
            c_only_h_values.resize(pdbs->size(), -1);
            for (PatternID p_id : center_only_patterns){
                c_only_h_values[p_id] = (*pdbs)[p_id]->get_value(member_state);
                if (c_only_h_values[p_id] == numeric_limits<int>::max()){
                    // center state is detected as deadend
                    return numeric_limits<int>::max();
                }
            }
        }

        vector<int> min_h(pattern_cliques->size(), numeric_limits<int>::max());

        const ExplicitStateCPG *prices = dynamic_cast<const ExplicitStateCPG*>(CPGStorage::storage->get_cpg(state));
        compute_min_distance_decoupled_exponential(prices, member_state, c_only_h_values, 0, 0, min_h);
        return *std::max_element(min_h.begin(), min_h.end());
    }
}

void DecoupledCanonicalPDBsExponentialBroken::compute_min_distance_decoupled_exponential(
        const ExplicitStateCPG *cpg,
        vector<int> &member_state,
        const vector<int> &c_only_h_values,
        int i,
        int sum_prices,
        vector<int> &min_d) const {

    int number_states = cpg->get_number_states(affected_leaves[i]);
    LeafStateHash id(0);
    while (number_states > 0){
        if (cpg->has_leaf_state(id, affected_leaves[i])){
            --number_states;

            set_leaf_facts(id, affected_leaves[i], member_state);

            int price = cpg->get_cost_of_state(id, affected_leaves[i]);
            if (i < static_cast<int>(affected_leaves.size()) - 1){
                // recursion
                compute_min_distance_decoupled_exponential(cpg, member_state, c_only_h_values, i + 1, sum_prices + price, min_d);
            } else {
                // end recursion
                vector<int> h_values;
                h_values.reserve(pdbs->size());
                for (int p_id = 0; p_id < static_cast<int>(pdbs->size()); ++p_id) {
                    if (!is_center_only_pattern[p_id]){
                        h_values.push_back((*pdbs)[p_id]->get_value(member_state));
                    } else {
                        h_values.push_back(c_only_h_values[p_id]);
                    }
                }

                for (size_t clique_id = 0; clique_id < pattern_cliques->size(); ++clique_id) {
                    int clique_h = 0;
                    for (PatternID pdb_index : (*pattern_cliques)[clique_id]) {
                        if (h_values[pdb_index] == numeric_limits<int>::max()) {
                            clique_h = numeric_limits<int>::max();
                            break;
                        }

                        clique_h += h_values[pdb_index];
                    }
                    if (clique_h != numeric_limits<int>::max()) {
                        min_d[clique_id] = min(min_d[clique_id], sum_prices + price + clique_h);
                    }
                }
            }
        }
        ++id;
    }
}
}
