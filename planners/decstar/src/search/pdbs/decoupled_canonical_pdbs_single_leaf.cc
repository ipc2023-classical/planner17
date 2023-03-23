#include "decoupled_canonical_pdbs_single_leaf.h"

#include "decoupled_pdb_utils.h"
#include "pattern_database.h"
#include "pattern_filter.h"

#include "../globals.h"
#include "../state.h"

#include "../compliant_paths/cpg_storage.h"
#include "../compliant_paths/explicit_state_cpg.h"

#include <algorithm>
#include <cassert>
#include <iostream>
#include <limits>

using namespace std;

namespace pdbs {
DecoupledCanonicalPDBsSingleLeaf::DecoupledCanonicalPDBsSingleLeaf(
    const shared_ptr<PDBCollection> &pdbs,
    const shared_ptr<vector<PatternClique>> &pattern_cliques)
    : CanonicalPDBs(pdbs, pattern_cliques) {

    vector<bool> is_leaf_pattern(pdbs->size(), false);
    affecting_patterns.resize(pattern_cliques->size());
    for (int c_id = 0; c_id < static_cast<int>(pattern_cliques->size()); ++c_id) {
        for (PatternID p_id : (*pattern_cliques)[c_id]) {
            unordered_set<LeafFactorID> affected_leaves;
            get_leaf_factors_of_pattern((*pdbs)[p_id]->get_pattern(), affected_leaves);
            for (LeafFactorID leaf : affected_leaves){
                is_leaf_pattern[p_id] = true;
                if (affecting_patterns[c_id].size() <= leaf){
                    affecting_patterns[c_id].resize(leaf + 1);
                }
                affecting_patterns[c_id][leaf].push_back(p_id);
            }
        }
    }
    for (PatternID p_id = 0; p_id < static_cast<int>(pdbs->size()); ++p_id){
        if (!is_leaf_pattern[p_id]){
            center_only_patterns.push_back(p_id);
        }
    }
}

int DecoupledCanonicalPDBsSingleLeaf::get_value(const GlobalState &state) const {
    // If we have an empty collection, then pattern_cliques = { \emptyset }.
    assert(!pattern_cliques->empty());

    // these can be precomputed as usual, since they do not depend on the pricing function
    vector<int> c_only_h_values;
    if (!center_only_patterns.empty()){
        c_only_h_values.resize(pdbs->size(), -1);
        for (PatternID p_id : center_only_patterns) {
            int h = (*pdbs)[p_id]->get_value(state);
            if (h == numeric_limits<int>::max()) {
                return numeric_limits<int>::max();
            }
            c_only_h_values[p_id] = h;
        }
    }

    const ExplicitStateCPG *prices = 0;
    vector<int> member_state;
    if (center_only_patterns.size() < pdbs->size()){
        // some patterns affect leaves
        prices = dynamic_cast<const ExplicitStateCPG*>(CPGStorage::storage->get_cpg(state));
        member_state = vector<int>(g_variable_domain.size(), -1);
        set_center_facts(state, member_state);
    }

    int max_h = 0;
    for (int clique_id = 0; clique_id < static_cast<int>(pattern_cliques->size()); ++clique_id) {
        int clique_h = 0;
        if (affecting_patterns[clique_id].empty()){
            // entire clique affects only the center
            for (PatternID pdb_index : (*pattern_cliques)[clique_id]) {
                assert(c_only_h_values[pdb_index] != -1);
                clique_h += c_only_h_values[pdb_index];
            }
        } else {
            if (!center_only_patterns.empty()){
                for (PatternID pdb_index : (*pattern_cliques)[clique_id]) {
                    // TODO should we store the center-only patterns for each clique?
                    if (c_only_h_values[pdb_index] != -1){
                        // it's a center-only pattern
                        clique_h += c_only_h_values[pdb_index];
                    }
                }
            }
            for (LeafFactorID leaf(0); leaf < affecting_patterns[clique_id].size(); ++leaf) {
                if (!affecting_patterns[clique_id][leaf].empty()){
                    int h = get_min_distance(prices, member_state, leaf, clique_id);
                    if (h == numeric_limits<int>::max()){
                        // all reached leaf states are dead-ends
                        return numeric_limits<int>::max();
                    }
                    clique_h += h;
                }
            }
        }
        max_h = max(max_h, clique_h);
    }
    return max_h;
}

int DecoupledCanonicalPDBsSingleLeaf::get_min_distance(
        const ExplicitStateCPG *prices,
        vector<int> &member_state,
        LeafFactorID leaf,
        int clique_id) const {

    int min_d = numeric_limits<int>::max();

    int number_states = prices->get_number_states(leaf);
    LeafStateHash id(0);
    while (number_states > 0){
        if (prices->has_leaf_state(id, leaf)){
            --number_states;

            set_leaf_facts(id, leaf, member_state);

            int price = prices->get_cost_of_state(id, leaf);

            bool is_dead_end_leaf_state = false;
            int sum_dists = 0;
            for (PatternID p_id : affecting_patterns[clique_id][leaf]){
                int h = (*pdbs)[p_id]->get_value(member_state);
                if (h == numeric_limits<int>::max()){
                    is_dead_end_leaf_state = true;
                    break;
                }
                sum_dists += h;
                if (price + sum_dists >= min_d){
                    break;
                }
            }

            if (!is_dead_end_leaf_state){
                min_d = min(min_d, price + sum_dists);
            }
        }
        ++id;
    }
    return min_d;
}
}
