#include "decoupled_canonical_pdbs_exponential_ilp.h"

#include "decoupled_pdb_utils.h"
#include "pattern_database.h"
#include "pattern_filter.h"

#include "../lp/lp_solver.h"

#include "../globals.h"
#include "../option_parser.h"
#include "../state.h"

#include "../compliant_paths/cpg_storage.h"
#include "../compliant_paths/explicit_state_cpg.h"

#include <cassert>

using namespace std;

namespace pdbs {
DecoupledCanonicalPDBsExponentialILP::DecoupledCanonicalPDBsExponentialILP(
    const shared_ptr<PDBCollection> &pdbs,
    const shared_ptr<vector<PatternClique>> &pattern_cliques,
    MIPType mip_type)
    : CanonicalPDBs(pdbs, pattern_cliques), mip_type(mip_type) {

    is_center_only_pattern.reserve(pdbs->size());
    affected_leaves_by_pdb.reserve(pdbs->size());

    for (const shared_ptr<PatternDatabase> &pdb : *pdbs) {
        unordered_set<LeafFactorID> tmp = get_leaf_factors_of_pattern(pdb->get_pattern());
        if (tmp.empty()){
            is_center_only_pattern.push_back(true);
            center_only_patterns.push_back(is_center_only_pattern.size() - 1);
        } else {
            are_leaves_affected = true;
            is_center_only_pattern.push_back(false);
        }
        affected_leaves_by_pdb.emplace_back(tmp.begin(), tmp.end());
    }

    // TODO integrate this into the first loop
    affecting_patterns.resize(g_leaves.size());
    for (PatternID p_id = 0; p_id < static_cast<int>(pdbs->size()); ++p_id) {
        for (int var : (*pdbs)[p_id]->get_pattern()){
            LeafFactorID factor = g_belongs_to_factor[var];
            if (factor != LeafFactorID::CENTER){
                affecting_patterns[factor].insert(p_id);
            }
        }
    }
}

void DecoupledCanonicalPDBsExponentialILP::enumerate_abstract_states(
        int pdb_id,
        int pdb_lp_var,
        vector<lp::LPVariable> &lp_variables,
        vector<lp::LPConstraint> &constraints,
        const vector<utils::HashMap<vector<int>, AbstractLeafStateInfo>> &abstract_leaf_state_info,
        int index,
        vector<int> &abs_state,
        vector<const vector<int>*> &lp_vars_l_states) const {

    const Pattern &pattern = (*pdbs)[pdb_id]->get_pattern();

    if (index == static_cast<int>(affected_leaves_by_pdb[pdb_id].size())){
        // end of recursion
#ifndef NDEBUG
        for (int var : pattern){
            assert(abs_state[var] != -1);
        }
#endif

        int h = (*pdbs)[pdb_id]->get_value(abs_state);

        if (h != numeric_limits<int>::max()){
            // lp var -- b_{s^P} -- for this abstract state
            bool is_integer = (mip_type == MIPType::IP || mip_type == MIPType::LeafLP);
            lp_variables.push_back(lp::LPVariable(0.0, 1.0, 0.0, is_integer));

            for (LeafFactorID l_factor : affected_leaves_by_pdb[pdb_id]){
                // b_{s^P} <= \sum b_{s^L}, where s^P and s^L agree on common variables of leaf and pattern
                lp::LPConstraint constraint(-lp_infty, 0.0);
                constraint.insert(lp_variables.size() - 1, 1.0);
                for (int lp_var_id : (*lp_vars_l_states[l_factor])){
                    constraint.insert(lp_var_id, -1.0);
                }
                constraints.push_back(constraint);
            }

            // make sure heuristic value of this PDB is at least as high as the heuristic for this abstract state
            // v_P >= b_{s^P} * h(s^P)
            lp::LPConstraint constraint(-lp_infty, 0.0);
            constraint.insert(pdb_lp_var, -1.0);
            constraint.insert(lp_variables.size() - 1, h);
            constraints.push_back(constraint);
        }
        return;
    }

    LeafFactorID leaf = affected_leaves_by_pdb[pdb_id][index];

    for (const auto &abs_lstate_info : abstract_leaf_state_info[leaf]){
        int var_count = 0;
        for (int var : pattern){
            if (g_belongs_to_factor[var] == leaf){
                abs_state[var] = abs_lstate_info.first[var_count];
                var_count++;
            }
        }
        lp_vars_l_states[leaf] = &abs_lstate_info.second.concrete_lstate_lp_var_ids; // TODO there should be some nicer way to do this
        enumerate_abstract_states(pdb_id,
                                  pdb_lp_var,
                                  lp_variables,
                                  constraints,
                                  abstract_leaf_state_info,
                                  index + 1,
                                  abs_state,
                                  lp_vars_l_states);
    }
}

int DecoupledCanonicalPDBsExponentialILP::get_value(const GlobalState &state) const {
    // If we have an empty collection, then pattern_cliques = { \emptyset }.
    assert(!pattern_cliques->empty());

    if (!are_leaves_affected){
        // compute maximal heuristic value for the center state
        return CanonicalPDBs::get_value(state);
    } else {
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

        lp::LPSolver solver(lp::LPSolverType::CPLEX); // TODO properly obtain this via command line?
        lp_infty = solver.get_infinity();

        vector<lp::LPVariable> lp_variables;
        vector<lp::LPConstraint> constraints;

        // maps, for each pattern and leaf factor, abstract leaf states to a struct that contains the minimum
        // price of each reached abstract leaf state (minimized over all reached leaf states that are mapped
        // to this abstract leaf state), and the list of lp_variable indices (b_{s^L}) that correspond to the reached
        // leaf states that are mapped to this abstract leaf state.
        vector<vector<utils::HashMap<vector<int>, AbstractLeafStateInfo>>> abstract_leaf_state_prices(
                pdbs->size(),
                vector<utils::HashMap<vector<int>, AbstractLeafStateInfo>>(g_leaves.size()));

        const ExplicitStateCPG *prices = dynamic_cast<const ExplicitStateCPG*>(CPGStorage::storage->get_cpg(state));
        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
            vector<int> leaf_states_lp_vars;
            for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
                if (prices->has_leaf_state(id, factor)){
                    leaf_states_lp_vars.push_back(lp_variables.size());
                    // a binary variable b_{s^L} for each reached leaf state
                    bool is_integer = (mip_type == MIPType::IP || mip_type == MIPType::AbsLP);
                    lp_variables.push_back(lp::LPVariable(0.0,
                                                          1.0,
                                                          prices->get_cost_of_state(id, factor),
                                                          is_integer));

                    for (int pdb_id : affecting_patterns[factor]) {
                        const Pattern &pattern = (*pdbs)[pdb_id]->get_pattern();
                        vector<int> abs_leaf_state;
                        abs_leaf_state.reserve(pattern.size());
                        LeafState l_state = g_state_registry->lookup_leaf_state(id, factor);
                        for (int var : pattern){
                            if (g_belongs_to_factor[var] == factor) {
                                abs_leaf_state.push_back(l_state[var]);
                            }
                        }
                        auto it = abstract_leaf_state_prices[pdb_id][factor].find(abs_leaf_state);
                        if (it == abstract_leaf_state_prices[pdb_id][factor].end()){
                            it = abstract_leaf_state_prices[pdb_id][factor].insert(make_pair(abs_leaf_state, AbstractLeafStateInfo())).first;
                        }
                        it->second.concrete_lstate_lp_var_ids.push_back(leaf_states_lp_vars.back());
                    }
                }
            }

            // make sure that exactly one leaf state of this leaf is selected
            // \sum b_{s^L} = 1, for all leaves L
            lp::LPConstraint constraint(1.0, 1.0);
            for (int leaf_state_lp_var : leaf_states_lp_vars){
                constraint.insert(leaf_state_lp_var, 1.0);
            }
            constraints.push_back(constraint);
        }

        vector<int> pdb_lp_vars;
        pdb_lp_vars.reserve(pdbs->size());
        for (int pdb_id = 0; pdb_id < static_cast<int>(pdbs->size()); ++pdb_id){
            if (is_center_only_pattern[pdb_id]){
                pdb_lp_vars.push_back(-1); // TODO think of a nicer solution
                continue;
            }

            // v_P variables that correspond to the heuristic value of pattern P
            pdb_lp_vars.push_back(lp_variables.size());
            lp_variables.push_back(lp::LPVariable(0.0, lp_infty, 0.0));

            int num_vars_before = lp_variables.size();
            vector<const vector<int>*> tmp_l_state_lp_vars(g_leaves.size());
            enumerate_abstract_states(pdb_id,
                                      pdb_lp_vars.back(),
                                      lp_variables,
                                      constraints,
                                      abstract_leaf_state_prices[pdb_id],
                                      0,
                                      member_state,
                                      tmp_l_state_lp_vars);

            if (num_vars_before == static_cast<int>(lp_variables.size())){
                // if no new lp_variables have been added, this means that *all* reached abstract states of
                // this pattern are deadends -> the entire decoupled state is a deadend
                return numeric_limits<int>::max();
            }

            // make sure that exactly one abstract state of this pattern is selected
            // \sum b_{s^P} = 1, for all abstract states s^P of pattern P
            lp::LPConstraint constraint(1.0, 1.0);
            for (int new_lp_var = num_vars_before; new_lp_var < static_cast<int>(lp_variables.size()); ++new_lp_var){
                constraint.insert(new_lp_var, 1.0);
            }
            constraints.push_back(constraint);
        }

        vector<int> clique_lp_vars;
        clique_lp_vars.reserve(pattern_cliques->size());
        for (const PatternClique &clique : *pattern_cliques) {
            // v_C variables that correspond to the heuristic value of clique C
            clique_lp_vars.push_back(lp_variables.size());
            lp_variables.push_back(lp::LPVariable(0.0, lp_infty, 0.0));

            // we need to add the value of center-patterns of the clique as a constant to the constraint
            int center_only_h_sum = 0;
            for (PatternID pdb_index : clique) {
                if (is_center_only_pattern[pdb_index]){
                    center_only_h_sum += c_only_h_values[pdb_index];
                }
            }

            // v_C = \sum_{P \in C} v_P
            lp::LPConstraint constraint(center_only_h_sum, center_only_h_sum);
            constraint.insert(lp_variables.size() - 1, 1.0);
            for (PatternID pdb_index : clique) {
                if (!is_center_only_pattern[pdb_index]){
                    constraint.insert(pdb_lp_vars[pdb_index], -1.0);
                }
            }
            constraints.push_back(constraint);
        }

        // this variable (v in draft) contains the maximum heuristic value of all cliques
        lp_variables.push_back(lp::LPVariable(0.0, lp_infty, 1.0));

        for (int c_lp_var : clique_lp_vars) {
            // ensure that the overall heuristic value (v)is higher than the value of each clique
            lp::LPConstraint constraint(0.0, lp_infty);
            constraint.insert(lp_variables.size() - 1, 1.0);
            constraint.insert(c_lp_var, -1.0);
            constraints.push_back(constraint);
        }

        solver.load_problem(lp::LPObjectiveSense::MINIMIZE, lp_variables, constraints);

        // dump_lp(lp::LPObjectiveSense::MINIMIZE, lp_variables, constraints);

        solver.solve();

        if (solver.has_optimal_solution()){
            return static_cast<int>(ceil(solver.get_objective_value() - 0.01));
        } else {
            return numeric_limits<int>::max();
        }
    }
}

void add_mip_options_to_parser(options::OptionParser &parser) {
    vector<string> mip_type;
    vector<string> mip_type_description;
    mip_type.push_back("ip");
    mip_type_description.push_back("both below variables are relaxed");
    mip_type.push_back("leaf_lp");
    mip_type_description.push_back("the variables for leaves are relaxed");
    mip_type.push_back("abs_lp");
    mip_type_description.push_back("the variables for abstract states are relaxed");
    mip_type.push_back("lp");
    mip_type_description.push_back("both above variables are relaxed");

    parser.add_enum_option<MIPType>(
        "mip_type",
        mip_type,
        "Option only relevant for dec_lookup_type=exp_ilp. Allow relaxing "
        "some (or none) of the MIP variables.",
        "ip",
        mip_type_description);
}
}
