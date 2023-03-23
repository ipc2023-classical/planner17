#include "max_scp_heuristic_price_partitioning.h"

#include "decoupled_pdb_utils.h"
#include "pattern_filter.h"
#include "types.h"

#include "../globals.h"
#include "../option_parser.h"
#include "../plugin.h"
#include "../task_proxy.h"

#include "../compliant_paths/cpg_storage.h"
#include "../compliant_paths/explicit_state_cpg.h"

#include "../cost_saturation/cost_partitioning_heuristic.h"
#include "../cost_saturation/cost_partitioning_heuristic_collection_generator.h"
#include "../cost_saturation/projection.h"
#include "../cost_saturation/saturated_cost_partitioning_heuristic.h"
#include "../cost_saturation/utils.h"

#include "../lp/lp_solver.h"

#include "../tasks/root_task.h"
#include "../task_utils/task_properties.h"

#include "../utils/logging.h"
#include "../utils/rng.h"
#include "../utils/rng_options.h"

using namespace cost_saturation;
using namespace std;

namespace pdbs {
MaxSCPHeuristicPricePartitioning::MaxSCPHeuristicPricePartitioning(
            const options::Options &opts,
    Abstractions &&abstractions,
    CPHeuristics &&cp_heuristics)
    : MaxSCPHeuristic(opts, move(abstractions), move(cp_heuristics)),
      debug(false) {

    unordered_set<LeafFactorID> aff_leaves;
    affected_leaves_by_pattern.resize(patterns.size());
    non_affected_leaves_by_pattern.resize(patterns.size());
    vector<int> num_patterns_per_leaf(g_leaves.size());
    for (PatternID pid = 0; pid < static_cast<int>(patterns.size()); ++pid) {
        unordered_set<LeafFactorID> tmp = get_leaf_factors_of_pattern(patterns[pid]);
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

    for (PatternID pid = 0; pid < static_cast<int>(patterns.size()); ++pid) {
        if (find(center_only_patterns.begin(), center_only_patterns.end(), pid) != center_only_patterns.end()){
            continue;
        }
        for (LeafFactorID leaf: affected_leaves) {
            if (find(affected_leaves_by_pattern[pid].begin(), affected_leaves_by_pattern[pid].end(), leaf) == affected_leaves_by_pattern[pid].end()){
                non_affected_leaves_by_pattern[pid].push_back(leaf);
            }
        }
    }

    affected_pattern_var_indices_by_abs_by_leaf.resize(patterns.size(), vector<vector<int>>(g_leaves.size()));
    for (int p_id = 0; p_id < static_cast<int>(patterns.size()); ++p_id) {
        for (LeafFactorID leaf : affected_leaves_by_pattern[p_id]) {
            for (int p_var_id = 0; p_var_id < static_cast<int>(patterns[p_id].size()); ++p_var_id){
                int p_var = patterns[p_id][p_var_id];
                if (find(g_leaves[leaf].begin(), g_leaves[leaf].end(), p_var) != g_leaves[leaf].end()){
                    affected_pattern_var_indices_by_abs_by_leaf[p_id][leaf].push_back(p_var_id);
                }
            }
        }
    }
}

static void generate_abs_leaf_state_constraints(
            vector<lp::LPVariable> &lp_vars,
            vector<lp::LPConstraint> &lp_constrs,
            double lp_infty,
            bool is_integer,
            const cost_saturation::CostPartitioningHeuristic::LookupTable &heuristic,
            const vector<vector<tuple<int, int, LeafStateHash>>> &abs_lstate_to_cheapest_lstate,
            const vector<LeafFactorID> &aff_leaves,
            const vector<vector<vector<int>>> &lp_var_per_heuristic_per_leaf_state,
            int heuristic_lp_var_id,
            int cp_h_id,
            int next_cp_h_id,
            bool &is_dead_end,
            vector<int> &abs_lstate_lp_vars,
            int partial_hash,
            vector<LeafStateHash> &lstates_for_abs_states,
            int i,
            bool debug) {

    if (i == static_cast<int>(aff_leaves.size())){
        int curr_h = heuristic.h_values[partial_hash];
        if (curr_h == INF) {
            // TODO check if we need to cleanup some variables/constraints that were generated in the recursion up to this point
            return;
        }
        is_dead_end = false;

        if (next_cp_h_id != -1) {
            // add constraint that sets the updated price for the cheapest leaf state (of all involved leaves) that
            // are projected to the current abstract state
            lp::LPConstraint constraint(-lp_infty, curr_h);
            constraint.insert(heuristic_lp_var_id, 1.0);
            vector<int> price_moved_lp_vars;
            for (LeafFactorID leaf : aff_leaves){
                constraint.insert(abs_lstate_lp_vars[leaf], -1.0);
                constraint.insert(lp_var_per_heuristic_per_leaf_state[next_cp_h_id][leaf][lstates_for_abs_states[leaf]], 1.0);
                if (debug){
                    price_moved_lp_vars.push_back(lp_var_per_heuristic_per_leaf_state[next_cp_h_id][leaf][lstates_for_abs_states[leaf]]);
                }
            }
            lp_constrs.push_back(constraint);
            if (debug){
                cout << "c" << (lp_constrs.size() - 1)
                     << ": heuristic value x" << heuristic_lp_var_id
                     << " - abs leaf state prices sum x" << abs_lstate_lp_vars
                     << " + price diff moved to next h x" << price_moved_lp_vars
                     << " <= " << curr_h << endl;
            }
        } else {
            // if there is no "next" heuristic, no need to forward prices
            lp::LPConstraint constraint(-lp_infty, curr_h);
            constraint.insert(heuristic_lp_var_id, 1.0);
            for (LeafFactorID leaf : aff_leaves){
                constraint.insert(abs_lstate_lp_vars[leaf], -1.0);
            }
            lp_constrs.push_back(constraint);
            if (debug){
                cout << "c" << (lp_constrs.size() - 1)
                     << ": heuristic value x" << heuristic_lp_var_id
                     << " - abs leaf state prices sum x" << abs_lstate_lp_vars
                     << " <= " << curr_h << endl;
            }
        }

        return;
    }

    LeafFactorID leaf = aff_leaves[i];

    for (const auto &[partial_leaf_hash, price, lstate_id] : abs_lstate_to_cheapest_lstate[leaf]){
        int lp_var = lp_vars.size();

        lp_vars.push_back(lp::LPVariable(0.0,
                                              lp_infty,
                                              0.0,
                                              is_integer));

        if (debug){
            cout << "x" << lp_var << ": price of abstract leaf states (" << lstate_id << ", " << leaf << ")" << endl;
        }

        lp::LPConstraint constraint(0.0, 0.0);
        constraint.insert(lp_var_per_heuristic_per_leaf_state[cp_h_id][leaf][lstate_id], 1.0);
        constraint.insert(lp_var, -1.0);
        lp_constrs.push_back(constraint);

        if (debug){
            cout << "c" << (lp_constrs.size() - 1) << ": leaf state price x" << lp_var_per_heuristic_per_leaf_state[cp_h_id][leaf][lstate_id] << " = abs leaf state price x" << lp_var << endl;
        }

        lstates_for_abs_states[leaf] = lstate_id;

        abs_lstate_lp_vars[leaf] = lp_var;

        generate_abs_leaf_state_constraints(lp_vars,
                                            lp_constrs,
                                            lp_infty,
                                            is_integer,
                                            heuristic,
                                            abs_lstate_to_cheapest_lstate,
                                            aff_leaves,
                                            lp_var_per_heuristic_per_leaf_state,
                                            heuristic_lp_var_id,
                                            cp_h_id,
                                            next_cp_h_id,
                                            is_dead_end,
                                            abs_lstate_lp_vars,
                                            partial_hash + partial_leaf_hash,
                                            lstates_for_abs_states,
                                            i + 1,
                                            debug);
    }
}

static void dump_lp(lp::LPObjectiveSense sense, const vector<lp::LPVariable> &vars, const vector<lp::LPConstraint> &constrs) {
    if (sense == lp::LPObjectiveSense::MAXIMIZE){
        cout << "Linear Program: maximize objective value" << endl;
    } else {
        cout << "Linear Program: minimize objective value" << endl;
    }
    cout << vars.size() << " variables" << endl;
    cout << constrs.size() << " constraints" << endl;

    if (vars.size() > 100 || constrs.size() > 100){
        cout << "WARNING: not printing LP as it is too big" << endl;
        return;
    }

    cout << "variables: " << endl;
    int i = 0;
    for (auto &var : vars){
        cout << "x" << i++ << ": range " << var.lower_bound << " .. " << var.upper_bound << "; objective value " << var.objective_coefficient << (var.is_integer ? ", is integer variable" : "") << endl;
    }

    cout << endl;

    for (auto &constr : constrs){
        cout << constr.get_lower_bound() << " < ";
        for (size_t i = 0; i < constr.get_variables().size(); ++i){
            cout << constr.get_coefficients()[i] << " * x" << constr.get_variables()[i] << (i < constr.get_variables().size() - 1 ? " + " : "");
        }
        cout << " < " << constr.get_upper_bound() << endl;
    }
}

int MaxSCPHeuristicPricePartitioning::compute_heuristic(const GlobalState &state) {
    int max_h;
    if (affected_leaves.empty()){
        // compute maximal heuristic value for the center state
        vector<int> abstract_state_ids = get_abstract_state_ids(
            abstraction_functions, state);
        max_h = compute_max_h(cp_heuristics, abstract_state_ids);
    } else {
        vector<int> member_state(g_variable_domain.size(), -1);
        set_center_facts(state, member_state);

        const ExplicitStateCPG *prices = dynamic_cast<const ExplicitStateCPG*>(CPGStorage::storage->get_cpg(state));

        max_h = 0;

        vector<int> member_abs_state_ids = get_abstract_state_ids(abstraction_functions, member_state);
        for (int h_id = 0; h_id < static_cast<int>(cp_heuristics.size()); ++h_id) {
            if (debug) {
                cout << "next heuristic " << h_id << " #########################################" << endl;
            }
            const auto &cp_heuristic = cp_heuristics[h_id];
            int sum_h = 0;

            bool is_integer = true;
            lp::LPSolver solver(lp::LPSolverType::CPLEX); // TODO properly obtain this via command line
            double lp_infty = solver.get_infinity();

            vector<lp::LPVariable> lp_variables;
            vector<lp::LPConstraint> constraints;

            // 1) for every reached leaf state and every layer (= cp_heuristic.lookup_tables.size()), add an LP variable p^{s^L}_i
            //    that represents the price of that leaf state in this layer. in the base case, p^{s^L}_0 = prices[dstate][s^L].

            vector<vector<vector<int>>> lp_var_per_heuristic_per_leaf_state(cp_heuristic.lookup_tables.size(),
                                                                            vector<vector<int>>(g_leaves.size()));

            int last_non_center_id = -1;
            for (int cp_h_id = 0; cp_h_id < static_cast<int>(cp_heuristic.lookup_tables.size()); ++cp_h_id) {
                const auto &lookup_table = cp_heuristic.lookup_tables[cp_h_id];
                int abs_id = lookup_table.abstraction_id;
                if (find(center_only_patterns.begin(), center_only_patterns.end(), abs_id) != center_only_patterns.end()) {
                    if (debug) {
                        cout << "skip center-only heuristic h" << cp_h_id << " with pattern " << abs_id << endl;
                    }
                    continue;
                }
                for (LeafFactorID leaf: affected_leaves) {
                    lp_var_per_heuristic_per_leaf_state[cp_h_id][leaf].resize(g_state_registry->size(leaf));
                    int num_reached_lstates = prices->get_number_states(leaf);
                    for (LeafStateHash id(0); id < g_state_registry->size(leaf); ++id) {
                        if (prices->has_leaf_state(id, leaf)) {
                            lp_var_per_heuristic_per_leaf_state[cp_h_id][leaf][id] = lp_variables.size();
                            lp_variables.push_back(lp::LPVariable(0.0,
                                                                  lp_infty,
                                                                  0.0,
                                                                  is_integer));
                            if (debug) {
                                cout << "x" << lp_var_per_heuristic_per_leaf_state[cp_h_id][leaf][id]
                                     << ": price of leaf state (" << id << ", " << leaf << ") for h" << cp_h_id << endl;
                            }
                            if (last_non_center_id == -1){ // only for first leaf heuristic
                                int p = prices->get_cost_of_state(id, leaf);
                                lp::LPConstraint constraint(p, p);
                                constraint.insert(lp_var_per_heuristic_per_leaf_state[cp_h_id][leaf][id], 1.0);
                                constraints.push_back(constraint);
                                if (debug){
                                    cout << "c" << (constraints.size() - 1)
                                         << ": price of leaf state (" << id << ", " << leaf << "), x" << lp_var_per_heuristic_per_leaf_state[cp_h_id][leaf][id] << " = " << p << endl;
                                }
                            }
                            if (--num_reached_lstates == 0){
                                break;
                            }
                        }
                    }
                }
                if (last_non_center_id != -1) { // starting in second non-center heuristic
                    // p_i = p_{i-1} if h_i does not affect a leaf
                    // "for non-affected leaves; ensure that the pricing function does not change"
                    for (LeafFactorID leaf: non_affected_leaves_by_pattern[cp_heuristic.lookup_tables[last_non_center_id].abstraction_id]) {
                        int num_reached_lstates = prices->get_number_states(leaf);
                        for (LeafStateHash id(0); id < g_state_registry->size(leaf); ++id) {
                            if (prices->has_leaf_state(id, leaf)) {
                                lp::LPConstraint constraint(0.0, 0.0);
                                constraint.insert(lp_var_per_heuristic_per_leaf_state[cp_h_id][leaf][id], 1.0);
                                constraint.insert(lp_var_per_heuristic_per_leaf_state[last_non_center_id][leaf][id], -1.0);
                                constraints.push_back(constraint);
                                if (debug) {
                                    cout << "c" << (constraints.size() - 1) << ": non affected leaf " << leaf
                                         << " heuristic " << cp_h_id << ": x" << lp_var_per_heuristic_per_leaf_state[cp_h_id][leaf][id]
                                         << " = x" << lp_var_per_heuristic_per_leaf_state[last_non_center_id][leaf][id] << endl;
                                }
                                if (--num_reached_lstates == 0){
                                    break;
                                }
                            }
                        }
                    }
                }
                last_non_center_id = cp_h_id;
            }
            for (int cp_h_id = 0; cp_h_id < static_cast<int>(cp_heuristic.lookup_tables.size()); ++cp_h_id) {
                const auto &lookup_table = cp_heuristic.lookup_tables[cp_h_id];
                int abs_id = lookup_table.abstraction_id;
                if (find(center_only_patterns.begin(), center_only_patterns.end(), abs_id ) != center_only_patterns.end()) {
                    // is center-only pattern
                    assert(utils::in_bounds(abs_id, member_abs_state_ids));
                    int state_id = member_abs_state_ids[abs_id];
                    assert(utils::in_bounds(state_id, lookup_table.h_values));
                    int h = lookup_table.h_values[state_id];
                    assert(h >= 0);
                    if (h == INF) {
                        // center state is detected as deadend
                        return DEAD_END;
                    }
                    sum_h += h;
                    assert(sum_h >= 0);
                } else {
                    if (debug) {
                        cout << "handle heuristic h" << cp_h_id << " with pattern " << abs_id << " " << patterns[abs_id] << ", affected leaves: " << affected_leaves_by_pattern[abs_id] << endl;
                    }

                    int h_lp_var_index = lp_variables.size();

                    // variable for final heuristic value of lookup_table
                    lp_variables.push_back(lp::LPVariable(0.0,
                                                          lp_infty,
                                                          1.0,
                                                          is_integer));
                    if (debug) {
                        cout << "x" << h_lp_var_index << ": value of heuristic h" << cp_h_id << endl;
                    }

                    // input = abstraction heuristic h with pattern p and affected leaves L^P
                    // 1) compute all reached abstract leaf states for each leaf; similar to decoupled_pdb_utils.cc
                    // 2) multiply out all these states via recursion
                    // 3) at bottom of recursion, add variables + constraints as follows:
                    //  ------- done    a) one LP variable p^i_{s^L} per layer i per price of every reached leaf state s^L ** NOTE: do this outside the loop/recursion
                    //      b) one LP variable p^i_{s^L[P]} per layer i (abstraction) per reached abstract leaf state s^L[P]
                    //    c) one constraint setting equal variables from a) to variables from b) where s^L[P] \subseteq s^L

                    int next_cp_h_id = -1;
                    for (int i = cp_h_id + 1; i < static_cast<int>(cp_heuristic.lookup_tables.size()); ++i) {
                        // find the next leaf heuristic to access lp var indices of that layer in recursion
                        if (find(center_only_patterns.begin(),
                                 center_only_patterns.end(),
                                 cp_heuristic.lookup_tables[i].abstraction_id) == center_only_patterns.end()) {
                            next_cp_h_id = i;
                            break;
                        }
                    }

                    const vector<cost_saturation::ProjectionFunction::VariableAndMultiplier> &hash_multipliers =
                            abstraction_functions[abs_id]->get_variables_and_multipliers();
                    vector<vector<tuple<int, int, LeafStateHash>>> abs_leaf_state_hash_to_leaf_states(g_leaves.size());
                    int center_index = 0;
                    const vector<int> &pattern = patterns[abs_id];
                    for (int i = 0; i < static_cast<int>(pattern.size()); ++i){
                        if (g_belongs_to_factor[pattern[i]] == LeafFactorID::CENTER){
                            center_index += hash_multipliers[i].hash_multiplier * state[pattern[i]];
                        }
                    }
                    for (LeafFactorID leaf : affected_leaves_by_pattern[abs_id]) {
                        vector<tuple<int, int, LeafStateHash>> cheapest_leaf_state_for_abs_leaf_state_hash;
                        int num_reached_lstates = prices->get_number_states(leaf);
                        for (LeafStateHash id(0); id < g_state_registry->size(leaf); ++id){
                            if (prices->has_leaf_state(id, leaf)) {
                                // TODO since many reached leaf states can lead to the same partial_index if the leaf
                                // is not fully covered, we might want to cache the cheapest price for all partial_index'es
                                // if |leaf| >> |leaf \cap patter| this could make quite a difference; also be because within
                                // compute_min_distance_abs_states, we potentially handle the same state very often
                                LeafState lstate = g_state_registry->lookup_leaf_state(id, leaf);
                                int partial_index = 0;
                                for (int pattern_var_index: affected_pattern_var_indices_by_abs_by_leaf[abs_id][leaf]) {
                                    // TODO how about caching these? hmm.. still need to check which is the cheapest leaf state..
                                    partial_index += hash_multipliers[pattern_var_index].hash_multiplier * lstate[pattern[pattern_var_index]];
                                }
                                cheapest_leaf_state_for_abs_leaf_state_hash.push_back(make_tuple(partial_index, prices->get_cost_of_state(id, leaf), id));
                                if (--num_reached_lstates == 0){
                                    break;
                                }
                            }
                        }
                        if (affected_pattern_var_indices_by_abs_by_leaf[abs_id][leaf].size() != g_leaves[leaf].size()) {
                            // Leaf not fully covered by pattern; keep only cheapest leaf state per abstract state
                            vector<pair<LeafStateHash,LeafStateHash>> non_cheapest_lstates_for_lstate;

                            sort(cheapest_leaf_state_for_abs_leaf_state_hash.begin(), cheapest_leaf_state_for_abs_leaf_state_hash.end());

                            int p_hash = get<0>(cheapest_leaf_state_for_abs_leaf_state_hash[0]);
                            LeafStateHash cheapest_lstate = get<2>(cheapest_leaf_state_for_abs_leaf_state_hash[0]);
                            int uniq_idx = 1;
                            for (int i = 1; i < static_cast<int>(cheapest_leaf_state_for_abs_leaf_state_hash.size()); ++i){
                                if (p_hash == get<0>(cheapest_leaf_state_for_abs_leaf_state_hash[i])){
                                    non_cheapest_lstates_for_lstate.push_back(make_pair(cheapest_lstate,
                                                                                        get<2>(cheapest_leaf_state_for_abs_leaf_state_hash[i])));
                                } else {
                                    cheapest_leaf_state_for_abs_leaf_state_hash[uniq_idx] = cheapest_leaf_state_for_abs_leaf_state_hash[i];
                                    uniq_idx += 1;
                                    p_hash = get<0>(cheapest_leaf_state_for_abs_leaf_state_hash[i]);
                                    cheapest_lstate = get<2>(cheapest_leaf_state_for_abs_leaf_state_hash[i]);
                                }
                            }
                            cheapest_leaf_state_for_abs_leaf_state_hash.erase(cheapest_leaf_state_for_abs_leaf_state_hash.begin() + uniq_idx,
                                                                              cheapest_leaf_state_for_abs_leaf_state_hash.end());


                            if (next_cp_h_id != -1) {
                                // for non-cheapest leaf states we add a constraint that in the next level their price
                                // is equal to the new price of the now cheapest leaf state
                                for (const auto &[cheapest_id, other_id]: non_cheapest_lstates_for_lstate) {
                                    // TODO: double-check; still not sure if this is the right thing to do. it seems to lead to the correct estimates, though.
                                    // still, why does it make sense to change (and possibly increase) the price of leaf states that are
                                    // not really touched by the computation for this heuristic?
                                    lp::LPConstraint constraint(0.0, 0.0);
                                    constraint.insert(lp_var_per_heuristic_per_leaf_state[next_cp_h_id][leaf][cheapest_id], 1.0);
                                    constraint.insert(lp_var_per_heuristic_per_leaf_state[next_cp_h_id][leaf][other_id], -1.0);
                                    constraints.push_back(constraint);
                                    if (debug) {
                                        cout << "c" << (constraints.size() - 1) << ": non affected leaf state ("
                                             << other_id << ", " << leaf
                                             << ") heuristic " << cp_h_id << ": x"
                                             << lp_var_per_heuristic_per_leaf_state[next_cp_h_id][leaf][cheapest_id]
                                             << " = x"
                                             << lp_var_per_heuristic_per_leaf_state[next_cp_h_id][leaf][other_id]
                                             << endl;
                                    }
                                }
                            }
                        }
                        abs_leaf_state_hash_to_leaf_states[leaf] = move(cheapest_leaf_state_for_abs_leaf_state_hash);
                    }

                    bool is_dead_end = true;
                    vector<LeafStateHash> lstates_for_abs_states(g_leaves.size(), LeafStateHash::MAX);
                    vector<int> abs_lstate_lp_vars(g_leaves.size(), -1);

                    generate_abs_leaf_state_constraints(lp_variables,
                                                        constraints,
                                                        lp_infty,
                                                        is_integer,
                                                        lookup_table,
                                                        abs_leaf_state_hash_to_leaf_states,
                                                        affected_leaves_by_pattern[abs_id],
                                                        lp_var_per_heuristic_per_leaf_state,
                                                        h_lp_var_index,
                                                        cp_h_id,
                                                        next_cp_h_id,
                                                        is_dead_end,
                                                        abs_lstate_lp_vars,
                                                        center_index,
                                                        lstates_for_abs_states,
                                                        0,
                                                        debug);

                    if (is_dead_end){
                        // all abstract states are dead ends
                        return DEAD_END;
                    }
                }
            }

            // solve LP; add center-only h values

            solver.load_problem(lp::LPObjectiveSense::MAXIMIZE, lp_variables, constraints);

            if (debug) {
                cout << "variables:" << endl;
                for (int var = 0; var < static_cast<int>(g_variable_domain.size()); ++var) {
                    cout << var << ": " << g_fact_names[var][0] << endl;
                }

                cout << "patterns:" << endl;
                for (int i = 0; i < static_cast<int>(patterns.size()); ++i) {
                    cout << "p" << i << ": " << patterns[i] << endl;
                }

                cout << endl;
                cout << "decoupled state:" << endl;
                state.dump_pddl();
                prices->dump();
                cout << endl;

                cout << "LP:" << endl;
                dump_lp(lp::LPObjectiveSense::MAXIMIZE, lp_variables, constraints);

                cout << endl;

                cout << "center-only h = " << sum_h << endl;
            }

            solver.solve();

            if (debug) {
                solver.print_statistics();
            }

            if (solver.has_optimal_solution()){
                int lp_sol = static_cast<int>(ceil(solver.get_objective_value() - 0.01));
                if (debug) {
                    cout << "objective value = " << lp_sol << endl;
                    cout << "LP solution:" << endl;
                    vector<double> sol = solver.extract_solution();
                    for (int i = 0; i < static_cast<int>(lp_variables.size()); ++i){
                        cout << "\tx" << i << " = " << sol[i] << endl;
                    }
                }
                sum_h += lp_sol;
            } else {
                // TODO check this; seems to happen if LP is unbounded; it should always be feasible; overflows?
                cerr << "ERROR: this should probably not happen; no solution to ILP for heuristic computation" << endl;
                exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
            }

            max_h = max(max_h, sum_h);
        }
    }

    assert(max_h >= 0);
    assert(max_h != INF);

    return max_h;
}

static shared_ptr<Evaluator> _parse(OptionParser &parser) {
    prepare_parser_for_cost_partitioning_heuristic(parser);
    add_saturator_option(parser);
    add_order_options_to_parser(parser);
    //add_exponential_options_to_parser(parser);
    Heuristic::add_options_to_parser(parser);

    options::Options opts = parser.parse();
    if (parser.help_mode())
        return nullptr;

    if (parser.dry_run())
        return nullptr;

    // TODO: in modern FD, use the task from options
//    shared_ptr<AbstractTask> task = opts.get<shared_ptr<AbstractTask>>("transform");
    shared_ptr<AbstractTask> task = tasks::g_root_task;
    TaskProxy task_proxy(*task);
    vector<int> costs = task_properties::get_operator_costs(task_proxy);
    Abstractions abstractions = generate_abstractions(
        task, opts.get_list<shared_ptr<AbstractionGenerator>>("abstractions"));
    CPFunction cp_function = get_cp_function_from_options(opts);
    CPHeuristics cp_heuristics =
        get_cp_heuristic_collection_generator_from_options(opts).generate_cost_partitionings(
            task_proxy, abstractions, costs, cp_function);
    return make_shared<MaxSCPHeuristicPricePartitioning>(
        opts,
        move(abstractions),
        move(cp_heuristics));
}

static Plugin<Evaluator> _plugin("max_scp_pp", _parse);
}
