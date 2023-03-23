#include "lp_star_factoring.h"

#include "../option_parser.h"
#include "../plugin.h"
#include "../factoring.h"
#include "../lp/lp_solver.h"
#include "../lp/cplex_solver.h"
#include "../task_utils/causal_graph.h"
#include "../globals.h"
#include "../operator.h"
#include "../utils/hash.h"
#include "../utils/timer.h"

#include <algorithm>
#include <iostream>


using namespace std;
using namespace lp_factoring;


namespace lp_star_factoring {
LPStarFactoring::LPStarFactoring(const Options &opts) : LPFactoring(opts),
        strategy(opts.get<STRATEGY>("strategy")),
        factoring_type(opts.get<FACTORING_TYPE>("factoring_type")),
        min_mobility(opts.get<int>("min_mobility")),
        min_flexibility(opts.get<double>("min_flexibility")),
        max_merge_steps(opts.get<int>("max_merge_steps")) {
    profile = STAR;
    cout << "using LP factoring strategy" << endl;
}


Factoring::FactoredVars LPStarFactoring::get_factoring() {

    FactoredVars factoring;
    timer.reset();

    switch (strategy) {
        case MIS: factoring = get_mip_factoring(); break;
        case MIS_MOBILE: factoring = get_mip_factoring(); break;
        case MIS_LP_RELAX: factoring = get_mip_factoring(); break;
        case MML: factoring = get_max_mobile_leaves(); break;
        case MML_MODULAR: factoring = get_max_mobile_leaves_modular(); break;
        case MML_MODULAR_NO_SCHEMES: factoring = get_max_mobile_leaves_modular_no_schemes(); break;
        case MM: factoring = get_max_mobile_leaves(); break;
        case MF: factoring = get_max_mobile_leaves(); break;
        case MMF: factoring = get_max_mobile_leaves(); break;
        default: exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
    }

    vector<set<size_t>>().swap(var_to_p_leaves);

    return factoring;

}

Factoring::FactoredVars LPStarFactoring::get_mip_factoring() const {

    vector<lp::LPVariable> variables;
    vector<lp::LPConstraint> constraints;

    if (strategy == MIS_MOBILE) {
        vector<bool> mobile_var = get_mobile_vars();
        for (size_t var = 0; var < g_variable_domain.size(); var++) {
            if (mobile_var[var]){
                variables.push_back(lp::LPVariable(0.0, 1.0, 1.0, true));
            } else {
                variables.push_back(lp::LPVariable(0.0, 0.0, 1.0, true));
            }
            for (int suc : causal_graph::get_causal_graph().get_successors(var)) {
                lp::LPConstraint constraint (0.0,1.0);
                constraint.insert(var,1.0);
                constraint.insert(suc,1.0);
                constraints.push_back(constraint);
            }
        }
    } else {
        for (size_t var = 0; var < g_variable_domain.size(); var++) {
            variables.push_back(lp::LPVariable(0.0, 1.0, 1.0, true));
            for (int suc : causal_graph::get_causal_graph().get_successors(var)) {
                lp::LPConstraint constraint(0.0, 1.0);
                constraint.insert(var, 1.0);
                constraint.insert(suc, 1.0);
                constraints.push_back(constraint);
            }
        }
    }

    vector<double> solution = solve_lp(lp::LPObjectiveSense::MAXIMIZE,
            variables, constraints, true, strategy == MIS_LP_RELAX);

    if (solution.empty()) {
        cout << "ERROR: no solution found by LP solver." << endl;
        return FactoredVars();
    }

    //extract solution
    FactoredVars factoring;

    for (size_t var = 0; var < solution.size(); var++) {
        if (solution[var] > 0.5) {
            set<int> leaf;
            leaf.insert(var);
            factoring.push_back(leaf);
        }
    }
    return factoring;
}


Factoring::FactoredVars LPStarFactoring::get_max_mobile_leaves() const {

    vector<lp::LPVariable> variables;
    vector<lp::LPConstraint> constraints;

    init_action_schemas();
    filter_action_schemas();

    if (action_schemas.empty()){
        // mostly for trivially unsolvable task?
        cerr << "ERROR: No action schemas." << endl;
        return FactoredVars();
    }
    if (!check_timeout()){
        return FactoredVars();
    }

    vector<PotentialLeaf> potential_leaves = get_potential_leaves();

    if (potential_leaves.empty()){
        cout << "No potential leaves." << endl;
        return FactoredVars();
    }
    if (!check_timeout()){
        return FactoredVars();
    }

    var_to_p_leaves = vector<set<size_t> >(g_variable_domain.size());
    for (const PotentialLeaf &p_leaf : potential_leaves) {
        for (int var : p_leaf.vars) {
            var_to_p_leaves[var].insert(p_leaf.id);
        }
    }

    if (max_merge_steps > 0) {
        merge_potential_leaves(potential_leaves);
    }


    {

        vector<vector<bool> > p_leaves_cg(potential_leaves.size() - 1);
        for (size_t i = 0; i < p_leaves_cg.size(); ++i){
            p_leaves_cg[i].resize(potential_leaves.size() - i - 1, false);
        }

        if (factoring_type == STRICT) {
            for (const PotentialLeaf &p_leaf : potential_leaves) {
                for (int var : p_leaf.vars) {
                    // iterating over all successors will introduce a few unnecessary "true"
                    // edges in the graph, namely for those potential leaves connected via
                    // eff-eff variables. however, it will not lead to superfluous constraints,
                    // since we only check these in one direction.
                    for (int suc : causal_graph::get_causal_graph().get_successors(var)) {
                        for (size_t id : var_to_p_leaves[suc]) {
                            if (p_leaf.id < id) {
                                p_leaves_cg[p_leaf.id][id - p_leaf.id - 1] = true;
                            } else if (p_leaf.id > id) {
                                p_leaves_cg[id][p_leaf.id - id - 1] = true;
                            }
                        }
                    }
                }
                if (!check_timeout()){
                    return FactoredVars();
                }
            }
        }


        if (factoring_type == GENERAL) {
            for (const PotentialLeaf &p_leaf : potential_leaves) {
                // no precondition on another leaf for leaf-only actions
                for (int action_schema : p_leaf.leaf_only_schemes) {
                    for (int pre : action_schemas[action_schema].pre_vars) {
                        for (size_t index : var_to_p_leaves[pre]) {
                            if (index < p_leaf.id) {
                                p_leaves_cg[index][p_leaf.id - index - 1] = true;
                            } else if (index > p_leaf.id){
                                p_leaves_cg[p_leaf.id][index - p_leaf.id - 1] = true;
                            }
                        }
                    }
                }
                for (int var : p_leaf.vars) {
                    for (size_t index : var_to_p_leaves[var]) {
                        if (index < p_leaf.id) {
                            p_leaves_cg[index][p_leaf.id - index - 1] = true;
                        }
                    }
                }
                if (!check_timeout()){
                    return FactoredVars();
                }
            }
        }


        for (size_t p_leaf = 0; p_leaf < potential_leaves.size(); ++p_leaf) {
            switch (strategy) {
            case MML:
                variables.push_back(lp::LPVariable(0.0, 1.0, 1.0, true));
                break;
            case MF:
                variables.push_back(lp::LPVariable(0.0, 1.0, potential_leaves[p_leaf].get_flexibility(), true));
                break;
            case MM:
                variables.push_back(lp::LPVariable(0.0, 1.0, potential_leaves[p_leaf].num_leaf_only_actions, true));
                break;
            case MMF:
                variables.push_back(lp::LPVariable(0.0, 1.0, potential_leaves[p_leaf].num_leaf_only_actions * potential_leaves[p_leaf].get_flexibility(), true));
                break;
            default: exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
            }
        }

        size_t num_constraints = 0;
        for (size_t p_leaf_1 = 0; p_leaf_1 < potential_leaves.size(); ++p_leaf_1) {
            for (size_t p_leaf_2 = p_leaf_1 + 1; p_leaf_2 < potential_leaves.size(); ++p_leaf_2) {
                // we need p_leaf_1 < p_leaf_2
                if (p_leaves_cg[p_leaf_1][p_leaf_2 - p_leaf_1 - 1]){
                    ++num_constraints;
                }
            }
        }

        if (!check_lp_size(num_constraints, variables.size())){
            return FactoredVars();
        }

        constraints.reserve(num_constraints);

        for (size_t p_leaf_1 = 0; p_leaf_1 < potential_leaves.size(); ++p_leaf_1) {
            for (size_t p_leaf_2 = p_leaf_1 + 1; p_leaf_2 < potential_leaves.size(); ++p_leaf_2) {
                // we need p_leaf_1 < p_leaf_2
                if (p_leaves_cg[p_leaf_1][p_leaf_2 - p_leaf_1 - 1]) {
                    lp::LPConstraint constraint(0.0, 1.0);
                    constraint.insert(p_leaf_1, 1.0);
                    constraint.insert(p_leaf_2, 1.0);
                    constraints.push_back(constraint);
                }
            }
        }

    }

    if (!check_timeout()){
        return FactoredVars();
    }

    if (factoring_type == GENERAL) {
        for (const ActionSchema &act_schema : action_schemas) {
            if (!check_timeout()){
                return FactoredVars();
            }
            if (act_schema.eff_vars.size() < 2) {
                continue;
            }
            set<size_t> relevant_p_leaves;
            for (int var : act_schema.eff_vars) {
                for (size_t index : var_to_p_leaves[var]) {
                    relevant_p_leaves.insert(index);
                }
            }
            if (relevant_p_leaves.size() < 2){
                continue;
            }
            lp::LPConstraint constraint(0.0, act_schema.eff_vars.size() - 1);
            // in contrast to the definition, where at least one potential leaf
            // of each hyperedge must belong to the center, this constraint encodes
            // that at least one variable from act_schema must belong to the center.
            // this coincides with the definition because there is an edge in the
            // graph between every pair of intersecting potential leaves, so variables
            // are only ever counted at most once.
            bool non_empty = false;
            for (size_t index : relevant_p_leaves) {
                bool superset = true;
                int size_intersection = 0;
                for (int var_1 : act_schema.eff_vars) {
                    bool var_contained = false;
                    for (int var_2 : potential_leaves[index].vars) {
                        if (var_1 == var_2) {
                            var_contained = true;
                            size_intersection++;
                            break;
                        } else if (var_1 < var_2){
                            // both vectors are sorted
                            break;
                        }
                    }
                    if (!var_contained) {
                        superset = false;
                    }
                }
                if (!superset) {
                    constraint.insert(index, size_intersection);
                    non_empty = true;
                }
            }
            if (non_empty) {
                constraints.push_back(constraint);
            }
        }
    }

    // save memory
    action_schemas = vector<ActionSchema>();
    var_to_p_leaves = vector<set<size_t> >();

    if (min_number_leaves > 2) {
        // adding the constraint typically increases runtime of CPLEX,
        // therefore, we only add it if we need strictly more than 2 leaves,
        // since 2 leaves are guaranteed by the elimination of potential leaves
        // in set_potential_leaves()
        lp::LPConstraint constraint(min_number_leaves, min(potential_leaves.size(), g_variable_domain.size()));
        for (size_t p_leaf = 0; p_leaf < potential_leaves.size(); ++p_leaf) {
            constraint.insert(p_leaf, 1.0);
        }
        constraints.push_back(constraint);
    }

    if (!check_timeout()){
        return FactoredVars();
    }

    vector<double> solution;
    if (constraints.empty()){
        // this should only happen when all potential leaves can become leaves
        solution.resize(potential_leaves.size(), 1);
        cout << "No constraints, all candidates become leaf factors." << endl;
    } else {
        solution = solve_lp(lp::LPObjectiveSense::MAXIMIZE,
                variables, constraints, false, false);

        if (solution.empty()) {
            cout << "WARNING: no solution found by LP solver." << endl;
            return FactoredVars();
        }
    }

    FactoredVars factoring;

    if (solution.empty()) {
        cerr << "ERROR: no solution found by LP solver." << endl;
        exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
    }

    bool leaves_overlap = false;
    vector<bool> leaf_variables(g_variable_domain.size(), false);
    for (size_t p_leaf = 0; p_leaf < potential_leaves.size(); ++p_leaf) {
        if (solution[p_leaf] == 1) {
            set<int> leaf;
            for (int var : potential_leaves[p_leaf].vars) {
                if (leaf_variables[var]){
                    // simple sanity check
                    leaves_overlap = true;
                }
                leaf_variables[var] = true;
                leaf.insert(var);
            }
            factoring.push_back(leaf);
        }
    }

    if (leaves_overlap){
        // TODO: investigate this!
        // this tends to happen when CPLEX is running out of memory on the cluster,
        // when run with an external memory limit. could try to additionally set
        // the memory limit for CPLEX explicitly
        cerr << "ERROR: solution returned by LP solver is not a valid factoring: leaves do overlap." << endl;
        exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
    }

    return factoring;
}


Factoring::FactoredVars LPStarFactoring::get_max_mobile_leaves_modular() const {

    vector<lp::LPVariable> variables;
    vector<lp::LPConstraint> constraints;

    FactoredVars mip_factoring = get_mip_factoring();

    if (factoring_type == STRICT) {
        vector<bool> mobile_vars = get_mobile_vars();
        bool mobile_factoring = true;
        for (set<int> &factor : mip_factoring) {
            for (int var : factor) {
                mobile_factoring = mobile_factoring && mobile_vars[var];
            }
        }
        if (mobile_factoring) {
            return mip_factoring;
        }
    }

    int max_number_leaves = mip_factoring.size();

    init_action_schemas();
    filter_action_schemas();
    vector<ActionSchema> &schemes = action_schemas;
    size_t num_schemes = schemes.size();


    //x_ij indicating whether variable v_j is contained in leaf F_i
    for (int i = 0; i < max_number_leaves; i++) {
        for (size_t var = 0; var < g_variable_domain.size(); var++) {
            variables.push_back(lp::LPVariable(0.0, 1.0, 0.0, true));
        }
    }
    //y_ik indicating whether action schema a_k affects only leaf F_i
    for (int i = 0; i < max_number_leaves; i++) {
        for (size_t schema = 0; schema < num_schemes; schema++) {
            variables.push_back(lp::LPVariable(0.0, 1.0, 0.0, true));
        }
    }
    //z_i indicating whether leaf F_i contains at least a single variable
    for (int i = 0; i < max_number_leaves; i++) {
        variables.push_back(lp::LPVariable(0.0, 1.0, 1.0, true));
    }


    //(1) every variable is contained in at most one leaf
    for (size_t var = 0; var < g_variable_domain.size(); var++) {
        lp::LPConstraint constraint (0.0,1.0);
        for (int i = 0; i < max_number_leaves; i++) {
            constraint.insert(i * g_variable_domain.size() + var, 1.0);
        }
        constraints.push_back(constraint);
    }

    //(2) y_ik = 1 iff all variables that are affected by schema a_k are contained in leaf F_i
    for (int i = 0; i < max_number_leaves; i++) {
        for (size_t schema = 0; schema < num_schemes; schema++) {
            const vector<int> &eff_vars = schemes[schema].eff_vars;
            lp::LPConstraint constraint (0.0,eff_vars.size() - 1.0);
            for (const int &eff_var : eff_vars) {
                constraint.insert(i * g_variable_domain.size() + eff_var, 1.0);
            }
            constraint.insert(max_number_leaves * g_variable_domain.size() + i * num_schemes + schema, (-1) * static_cast<int>(eff_vars.size()));
            constraints.push_back(constraint);
        }
    }

    if (factoring_type == STRICT || factoring_type == F || factoring_type == IF) {

        //(3) if a_k affects v_j and v_j is contained in F^L_i then a_k has only preconditions / effects on F^L_i or the center
        for (int i_1 = 0; i_1 < max_number_leaves; i_1++) {
            for (size_t schema = 0; schema < num_schemes; schema++) {
                const vector<int> &eff_vars = schemes[schema].eff_vars;
                const vector<int> &pre_vars = schemes[schema].pre_vars;
                for (const int &eff_var_1 : eff_vars) {
                    vector<double> coefficients (max_number_leaves * g_variable_domain.size(),0.0);
                    for (const int &eff_var_2 : eff_vars) {
                        coefficients[i_1 * g_variable_domain.size() + eff_var_2] +=  -1.0;
                        if (factoring_type == STRICT) {
                            for (int i_2 = 0; i_2 < max_number_leaves; i_2++) {
                                coefficients[i_2 * g_variable_domain.size() + eff_var_2] += 1.0;
                            }
                        }
                    }
                    for (const int &pre_var : pre_vars) {
                        coefficients[i_1 * g_variable_domain.size() + pre_var] += -1.0;
                        if (factoring_type == STRICT || factoring_type == F) {
                            for (int i_2 = 0; i_2 < max_number_leaves; i_2++) {
                              coefficients[i_2 * g_variable_domain.size() + pre_var] += 1.0;
                            }
                        }
                    }
                    coefficients[i_1 * g_variable_domain.size() + eff_var_1] += eff_vars.size() + pre_vars.size();
                    lp::LPConstraint constraint (-1.0 * static_cast<int>(eff_vars.size() + pre_vars.size()), 0);
                    if (factoring_type == STRICT) {
                        constraint.set_upper_bound(eff_vars.size() + pre_vars.size());
                    }
                    if (factoring_type == F) {
                        constraint.set_upper_bound(pre_vars.size());
                    }
                    for (size_t x = 0; x < max_number_leaves * g_variable_domain.size(); x++) {
                        if (coefficients[x] != 0.0) {
                            constraint.insert(x,coefficients[x]);
                        }
                    }
                    constraints.push_back(constraint);
                }
                if (factoring_type == F) {
                    for (const int &pre_var_1 : pre_vars) {
                        vector<double> coefficients (max_number_leaves * g_variable_domain.size(),0.0);
                        for (const int &eff_var_1 : eff_vars) {
                            coefficients[i_1 * g_variable_domain.size() + eff_var_1] +=  -1.0;
                        }
                        for (const int &pre_var_2 : pre_vars) {
                            coefficients[i_1 * g_variable_domain.size() + pre_var_2] += -1.0;
                            for (int i_2 = 0; i_2 < max_number_leaves; i_2++) {
                                coefficients[i_2 * g_variable_domain.size() + pre_var_2] += 1.0;
                            }
                        }
                        coefficients[i_1 * g_variable_domain.size() + pre_var_1] += eff_vars.size() + pre_vars.size();
                        lp::LPConstraint constraint (-1.0 * static_cast<int>(eff_vars.size() + pre_vars.size()), pre_vars.size());
                        for (size_t x = 0; x < max_number_leaves * g_variable_domain.size(); x++) {
                            if (coefficients[x] != 0.0) {
                                constraint.insert(x,coefficients[x]);
                            }
                        }
                        constraints.push_back(constraint);
                    }
                }
            }
        }
    }

    if (factoring_type == GENERAL) {

        //(3.1) if action a_k does not affect center it only affects a single leaf
        for (size_t schema = 0; schema < num_schemes; schema++) {
            const vector<int> &eff_vars = schemes[schema].eff_vars;
            lp::LPConstraint constraint (0.0,eff_vars.size()-1);
            for (int i = 0; i < max_number_leaves; i++) {
                for (const int &eff_var : eff_vars) {
                    constraint.insert(i * g_variable_domain.size() + eff_var, 1.0);
                }
                constraint.insert(max_number_leaves * g_variable_domain.size() + i * num_schemes + schema, -1.0);
            }
            constraints.push_back(constraint);
        }

        //(3.2) if action a_k only affects leaf F_i it has only preconditions on F_i or the center
        for (int i_1 = 0; i_1 < max_number_leaves; i_1++) {
            for (size_t schema = 0; schema < num_schemes; schema++) {
                const vector<int> &pre_vars = schemes[schema].pre_vars;
                lp::LPConstraint constraint (0.0,pre_vars.size());
                for (int i_2 = 0; i_2 < max_number_leaves; i_2++) {
                    if (i_1 == i_2) {
                        continue;
                    }
                    for (const int &pre_var : pre_vars) {
                        constraint.insert(i_2 * g_variable_domain.size() + pre_var, 1.0);
                    }
                }
                constraint.insert(max_number_leaves * g_variable_domain.size() + i_1 * num_schemes + schema, pre_vars.size());
                constraints.push_back(constraint);
            }
        }
    }

    //(4) z_i = 1 iff F_i contains at least a single variable
    for (int i = 0; i < max_number_leaves; i++) {
        lp::LPConstraint constraint (0.0, g_variable_domain.size()-1);
        for (size_t var = 0; var < g_variable_domain.size(); var++) {
            constraint.insert(i * g_variable_domain.size() + var, -1.0);
        }
        constraint.insert(max_number_leaves * g_variable_domain.size() + max_number_leaves * num_schemes + i, g_variable_domain.size());
        constraints.push_back(constraint);
    }


    //(5) if z_i = 1 leaf F^L_i is mobile, i.e. their exists an leaf-only action that affects F^L_i
    for (int i = 0; i < max_number_leaves; i++) {
        lp::LPConstraint constraint (0.0, num_schemes);
        for (size_t schema = 0; schema < num_schemes; schema++) {
            constraint.insert(max_number_leaves * g_variable_domain.size() + i * num_schemes + schema, 1.0);
        }
        constraint.insert(max_number_leaves * g_variable_domain.size() + max_number_leaves * num_schemes + i, -1.0);
        constraints.push_back(constraint);
    }


    // solve problem
    vector<double> solution = solve_lp(lp::LPObjectiveSense::MAXIMIZE, variables, constraints);

    if (solution.empty()) {
        cout << "ERROR: no solution found by LP solver." << endl;
        return FactoredVars();
    }

    FactoredVars factoring;

    for (int i = 0; i < max_number_leaves; i++) {
        set<int> leaf;
        for (size_t var = 0; var < g_variable_domain.size(); var++) {
            //no comparison with 1.0 due to numeric difficulties
            if (solution.at(i * g_variable_domain.size() + var) > 0.9) {
                leaf.insert(var);
            }
        }
        if (leaf.empty()){
            continue;
        }
        factoring.push_back(leaf);
    }

    return factoring;

}

Factoring::FactoredVars LPStarFactoring::get_max_mobile_leaves_modular_no_schemes() const {

    vector<lp::LPVariable> variables;
    vector<lp::LPConstraint> constraints;

    FactoredVars mip_factoring = get_mip_factoring();

    if (factoring_type == STRICT) {
        vector<bool> mobile_vars = get_mobile_vars();
        bool mobile_factoring = true;
        for (set<int> &factor : mip_factoring) {
            for (int var : factor) {
                mobile_factoring = mobile_factoring && mobile_vars[var];
            }
        }
        if (mobile_factoring) {
            return mip_factoring;
        }
    }

    int max_number_leaves = mip_factoring.size();


    //x_ij indicating whether variable v_j is contained in leaf F_i
    for (int i = 0; i < max_number_leaves; i++) {
        for (size_t var = 0; var < g_variable_domain.size(); var++) {
            variables.push_back(lp::LPVariable(0.0, 1.0, 0.0, true));
        }
    }
    //y_ik indicating whether action a_k is a leaf only action and affects leaf F_i
    for (int i = 0; i < max_number_leaves; i++) {
        for (size_t op = 0; op < g_operators.size(); op++) {
            variables.push_back(lp::LPVariable(0.0, 1.0, 0.0, true));
        }
    }
    //z_i indicating whether leaf F_i contains at least a single variable
    for (int i = 0; i < max_number_leaves; i++) {
        variables.push_back(lp::LPVariable(0.0, 1.0, 1.0, true));
    }


    //(1) every variable is contained in at most one leaf
    for (size_t var = 0; var < g_variable_domain.size(); var++) {
        lp::LPConstraint constraint (0.0, 1.0);
        for (int i = 0; i < max_number_leaves; i++) {
            constraint.insert(i * g_variable_domain.size() + var, 1.0);
        }
        constraints.push_back(constraint);
    }

    //(2) y_ik = 1 iff all variables that are affected by a_k are contained in leaf F_i
    for (int i = 0; i < max_number_leaves; i++) {
        for (size_t op = 0; op < g_operators.size(); op++) {
            const vector<Effect> &effects = g_operators[op].get_effects();
            lp::LPConstraint constraint (0.0, effects.size() - 1.0);
            for (const Effect &eff : effects) {
                constraint.insert(i * g_variable_domain.size() + eff.var, 1.0);
            }
            constraint.insert(max_number_leaves * g_variable_domain.size() + i * g_operators.size() + op, (-1) * static_cast<int>(effects.size()));
            constraints.push_back(constraint);
        }
    }


    if (factoring_type == STRICT || factoring_type == F || factoring_type == IF) {
        //(3) if a_k affects v_j and v_j is contained in F^L_i then a_k has only preconditions / effects on F^L_i or the center
        for (int i_1 = 0; i_1 < max_number_leaves; i_1++) {
            for (size_t op = 0; op < g_operators.size(); op++) {
                const vector<Effect> &effects = g_operators[op].get_effects();
                const vector<Condition> &preconditions = g_operators[op].get_preconditions();
                for (const Effect &eff_1 : effects) {
                    vector<double> coefficients (max_number_leaves * g_variable_domain.size(),0.0);
                    for (const Effect &eff_2 : effects) {
                        coefficients[i_1 * g_variable_domain.size() + eff_2.var] +=  -1.0;
                        if (factoring_type == STRICT) {
                            for (int i_2 = 0; i_2 < max_number_leaves; i_2++) {
                                coefficients[i_2 * g_variable_domain.size() + eff_2.var] += 1.0;
                            }
                        }
                    }
                    for (const Condition &pre : preconditions) {
                        coefficients[i_1 * g_variable_domain.size() + pre.var] += -1.0;
                        if (factoring_type == STRICT || factoring_type == F) {
                            for (int i_2 = 0; i_2 < max_number_leaves; i_2++) {
                              coefficients[i_2 * g_variable_domain.size() + pre.var] += 1.0;
                            }
                        }
                    }
                    coefficients[i_1 * g_variable_domain.size() + eff_1.var] += effects.size() + preconditions.size();
                    lp::LPConstraint constraint (-1.0 * static_cast<int>(effects.size() + preconditions.size()), 0);
                    if (factoring_type == STRICT) {
                        constraint.set_upper_bound(effects.size() + preconditions.size());
                    }
                    if (factoring_type == F) {
                        constraint.set_upper_bound(preconditions.size());
                    }
                    for (size_t x = 0; x < max_number_leaves * g_variable_domain.size(); x++) {
                        if (coefficients[x] != 0.0) {
                            constraint.insert(x,coefficients[x]);
                        }
                    }
                    constraints.push_back(constraint);
                }
                if (factoring_type == F) {
                    for (const Condition &pre_1 : preconditions) {
                        vector<double> coefficients (max_number_leaves * g_variable_domain.size(),0.0);
                        for (const Effect &eff_1 : effects) {
                            coefficients[i_1 * g_variable_domain.size() + eff_1.var] +=  -1.0;
                        }
                        for (const Condition &pre_2 : preconditions) {
                            coefficients[i_1 * g_variable_domain.size() + pre_2.var] += -1.0;
                            for (int i_2 = 0; i_2 < max_number_leaves; i_2++) {
                                coefficients[i_2 * g_variable_domain.size() + pre_2.var] += 1.0;
                            }
                        }
                        coefficients[i_1 * g_variable_domain.size() + pre_1.var] += effects.size() + preconditions.size();
                        lp::LPConstraint constraint (-1.0 * static_cast<int>(effects.size() + preconditions.size()), preconditions.size());
                        for (size_t x = 0; x < max_number_leaves * g_variable_domain.size(); x++) {
                            if (coefficients[x] != 0.0) {
                                constraint.insert(x,coefficients[x]);
                            }
                        }
                        constraints.push_back(constraint);
                    }
                }
            }
        }
    }

    if (factoring_type == GENERAL) {
        //(3.1) if action a_k does not affect center it only affects a single leaf
        for (size_t op = 0; op < g_operators.size(); op++) {
            const vector<Effect> &effects = g_operators[op].get_effects();
            lp::LPConstraint constraint (0.0, effects.size()-1);
            for (int i = 0; i < max_number_leaves; i++) {
                for (const Effect &eff : effects) {
                    constraint.insert(i * g_variable_domain.size() + eff.var, 1.0);
                }
                constraint.insert(max_number_leaves * g_variable_domain.size() + i * g_operators.size() + op, -1.0);
            }
            constraints.push_back(constraint);
        }

        //(3.2) if action a_k only affects leaf F_i it has only preconditions on F_i or the center
        for (int i_1 = 0; i_1 < max_number_leaves; i_1++) {
            for (size_t op = 0; op < g_operators.size(); op++) {
                const vector<Condition> &preconditions = g_operators[op].get_preconditions();
                lp::LPConstraint constraint (0.0, preconditions.size());
                for (int i_2 = 0; i_2 < max_number_leaves; i_2++) {
                    if (i_1 == i_2) {
                        continue;
                    }
                    for (const Condition &pre : preconditions) {
                        constraint.insert(i_2 * g_variable_domain.size() + pre.var, 1.0);
                    }
                }
                constraint.insert(max_number_leaves * g_variable_domain.size() + i_1 * g_operators.size() + op, preconditions.size());
                constraints.push_back(constraint);
            }
        }
    }


    //(4) z_i = 1 iff F_i contains at least a single variable
    for (int i = 0; i < max_number_leaves; i++) {
        lp::LPConstraint constraint (0.0, g_variable_domain.size()-1);
        for (size_t var = 0; var < g_variable_domain.size(); var++) {
            constraint.insert(i * g_variable_domain.size() + var, -1.0);
        }
        constraint.insert(max_number_leaves * g_variable_domain.size() + max_number_leaves * g_operators.size() + i, g_variable_domain.size());
        constraints.push_back(constraint);
    }


    //(5) if z_i = 1 leaf F^L_i is mobile, i.e. their exists an leaf-only action that affects F^L_i
    for (int i = 0; i < max_number_leaves; i++) {
        lp::LPConstraint constraint (0.0, g_operators.size());
        for (size_t op = 0; op < g_operators.size(); op++) {
            constraint.insert(max_number_leaves * g_variable_domain.size() + i * g_operators.size() + op, 1.0);
        }
        constraint.insert(max_number_leaves * g_variable_domain.size() + max_number_leaves * g_operators.size() + i, -1.0);
        constraints.push_back(constraint);
    }


    // solve problem
    vector<double> solution = solve_lp(lp::LPObjectiveSense::MAXIMIZE,
            variables, constraints);

    if (solution.empty()) {
        cout << "ERROR: no solution found by LP solver." << endl;
        return FactoredVars();
    }

    FactoredVars factoring;

    for (int i = 0; i < max_number_leaves; i++) {
        set<int> leaf;
        for (size_t var = 0; var < g_variable_domain.size(); var++) {
            //no comparison with 1.0 due to numeric difficulties
            if (solution.at(i * g_variable_domain.size() + var) > 0.9) {
                leaf.insert(var);
            }
        }
        if (leaf.empty()){
            continue;
        }
        factoring.push_back(leaf);
    }

    return factoring;

}

//returns a vector that indicates for each variable v whether a leaf factor consisting of v is mobile
vector<bool> LPStarFactoring::get_mobile_vars() const {
    vector<bool> mobile_var(g_variable_domain.size(), false);
    for (const Operator &op : g_operators){
        const vector<Effect> effects = op.get_effects();
        if (effects.size() == 1) {
            mobile_var[effects[0].var] = true;
        }
    }
    return mobile_var;
}

void LPStarFactoring::filter_action_schemas() const {
    if (min_mobility > 1 && max_merge_steps > 0) {
        // erase schemes with num_actions < min_num_actions
        action_schemas.erase(remove_if(action_schemas.begin(),
                    action_schemas.end(),
                    [&](const ActionSchema &schema){return schema.num_actions < min_mobility;}),
                action_schemas.end());
    }
}

vector<LPStarFactoring::PotentialLeaf> LPStarFactoring::get_potential_leaves() const {
    assert(!action_schemas.empty());

    vector<PotentialLeaf> potential_leaves;

    {
        utils::HashMap<std::vector<int>, size_t> leaf_lookup;
        for (size_t as = 0; as < action_schemas.size(); ++as) {
            const ActionSchema &action_schema = action_schemas[as];
            int64_t size = 1;
            for (int var : action_schema.eff_vars){
                size *= g_variable_domain[var];
                if (max_leaf_size != 0 && size > max_leaf_size){
                    break;
                }
            }
            if (max_leaf_size != 0 && size > max_leaf_size){
                continue;
            }

            if (leaf_lookup.find(action_schema.eff_vars) == leaf_lookup.end()){
                size_t s = potential_leaves.size();
                leaf_lookup[action_schema.eff_vars] = s;
                potential_leaves.push_back(PotentialLeaf(s, action_schema.num_actions, action_schema.eff_vars));
                potential_leaves[s].leaf_only_schemes.insert(as);
            } else {
                potential_leaves[leaf_lookup[action_schema.eff_vars]].num_actions += action_schema.num_actions;
                potential_leaves[leaf_lookup[action_schema.eff_vars]].leaf_only_schemes.insert(as);
            }
        }
    }

    cout << action_schemas.size() << " action schemes" << endl;
    cout << potential_leaves.size() << " potential leaves" << endl;

    var_to_p_leaves = vector<set<size_t> >(g_variable_domain.size());

    for (const PotentialLeaf &p_leaf : potential_leaves) {
        for (int var : p_leaf.vars) {
            var_to_p_leaves[var].insert(p_leaf.id);
        }
    }

    // set number of leaf actions
    for (PotentialLeaf &p_leaf : potential_leaves) {
        assert(p_leaf.num_leaf_actions == 0);
        vector<bool> handled_leaves(potential_leaves.size(), false);
        for (int var : p_leaf.vars) {
            for (int index : var_to_p_leaves[var]) {
                if (!handled_leaves[index]){
                    handled_leaves[index] = true;
                    p_leaf.num_leaf_actions += potential_leaves[index].num_actions;
                }
            }
        }
        if (!check_timeout()){
            return vector<PotentialLeaf>();
        }
    }

    if (min_mobility > 1 || min_flexibility > 0 ||
            strategy == STRATEGY::MF || strategy == STRATEGY::MM || strategy == STRATEGY::MMF ||
            (strategy == STRATEGY::MML && factoring_type == GENERAL)) {
        // in the latter case, we need leaf_only_schemes of potential_leaves
        // for the rest, we need to set the number of leaf-only actions
        for (const PotentialLeaf &p_leaf : potential_leaves) {
            set<int> superset_schemes;
            if (p_leaf.vars.size() == 1) {
                for (int index : var_to_p_leaves[p_leaf.vars[0]]) {
                    superset_schemes.insert(index);
                }
            } else {
                // since we consider all supersets of p_leaf, we can simply take p_leaf.vars[0],
                // since all supersets must also include that variable
                for (int index : var_to_p_leaves[p_leaf.vars[0]]) {
                    bool superset_schema = true;
                    for (int var_1 : p_leaf.vars) {
                        if (!binary_search(potential_leaves[index].vars.begin(), potential_leaves[index].vars.end(), var_1)){
                            superset_schema = false;
                            break;
                        }
                    }
                    if (superset_schema) {
                        superset_schemes.insert(index);
                    }
                }
            }
            for (int index : superset_schemes) {
                potential_leaves[index].num_leaf_only_actions += p_leaf.num_actions;
                for (int leaf_only_schema : p_leaf.leaf_only_schemes) {
                    potential_leaves[index].leaf_only_schemes.insert(leaf_only_schema);
                }
            }
            if (!check_timeout()){
                return vector<PotentialLeaf>();
            }
        }
    }

    if (min_mobility > 1 || min_flexibility > 0) {
        // erase effect schemes that does not satisfy requirements
        auto lambda_expr = [&](const PotentialLeaf &p_leaf){return p_leaf.num_leaf_only_actions < min_mobility || p_leaf.get_flexibility() < min_flexibility;};
        potential_leaves.erase(remove_if(potential_leaves.begin(), potential_leaves.end(), lambda_expr), potential_leaves.end());
        // adjust IDs
        size_t id = 0;
        for (PotentialLeaf &p_leaf : potential_leaves) {
            p_leaf.id = id;
            id++;
        }
        for (size_t var = 0; var < g_variable_domain.size(); ++var){
            var_to_p_leaves[var].clear();
        }
        for (const PotentialLeaf &p_leaf : potential_leaves) {
            for (int var : p_leaf.vars) {
                var_to_p_leaves[var].insert(p_leaf.id);
            }
        }
    }

    if (min_number_leaves >= 2 && !potential_leaves.empty()) {

        if (factoring_type == STRICT){
            // HACK to avoid logging to get messy when
            // CG print collides with the "Eliminating.." one
            causal_graph::get_causal_graph();
        }

        utils::Timer timer;
        cout << "Eliminating potential leaves... " << flush;

        size_t num_p_leaves = potential_leaves.size();
        vector<vector<bool> > p_leaves_cg(num_p_leaves - 1);
        for (size_t i = 0; i < p_leaves_cg.size(); ++i){
            p_leaves_cg[i].resize(num_p_leaves - i - 1, false);
        }

        if (factoring_type == STRICT) {
            for (int var = 0; var < (int) g_variable_domain.size(); ++var){
                // check if intersection non-empty
                for (int pot_leaf_1 : var_to_p_leaves[var]){
                    for (int pot_leaf_2 : var_to_p_leaves[var]){
                        if (pot_leaf_1 < pot_leaf_2){
                            p_leaves_cg[pot_leaf_1][pot_leaf_2 - pot_leaf_1 - 1] = true;
                        }
                    }
                }
                // check CG connection of contained variables
                for (int cg_succ : causal_graph::get_causal_graph().get_successors(var)){
                    for (int pot_leaf_succ : var_to_p_leaves[cg_succ]){
                        for (int pot_leaf : var_to_p_leaves[var]) {
                            if (pot_leaf < pot_leaf_succ){
                                p_leaves_cg[pot_leaf][pot_leaf_succ - pot_leaf - 1] = true;
                            } else if (pot_leaf > pot_leaf_succ){
                                p_leaves_cg[pot_leaf_succ][pot_leaf - pot_leaf_succ - 1] = true;
                            }
                        }
                    }
                }
                if (!check_timeout()){
                    return vector<PotentialLeaf>();
                }
            }
        }

        if (factoring_type == GENERAL) {

            for (const PotentialLeaf &p_leaf : potential_leaves) {
                // no precondition on another leaf for leaf-only actions
                for (size_t action_schema : p_leaf.leaf_only_schemes) {
                    for (int pre : action_schemas[action_schema].pre_vars) {
                        for (size_t index : var_to_p_leaves[pre]) {
                            if (p_leaf.id < index){
                                p_leaves_cg[p_leaf.id][index - p_leaf.id - 1] = true;
                            } else if (p_leaf.id > index){
                                p_leaves_cg[index][p_leaf.id - index - 1] = true;
                            }
                        }
                    }
                }
                if (!check_timeout()){
                    return vector<PotentialLeaf>();
                }
            }

            for (int var = 0; var < (int) g_variable_domain.size(); ++var){
                // check if intersection non-empty
                for (size_t pot_leaf_1 : var_to_p_leaves[var]){
                    for (size_t pot_leaf_2 : var_to_p_leaves[var]){
                        if (pot_leaf_1 < pot_leaf_2){
                            p_leaves_cg[pot_leaf_1][pot_leaf_2 - pot_leaf_1 - 1] = true;
                        }
                    }
                }
                if (!check_timeout()){
                    return vector<PotentialLeaf>();
                }
            }

            for (const ActionSchema &action_schema : action_schemas) {
                // add (hyper-)edges between potential leaves where there exists an action (schema) such that
                // when all become an actual leaf, this action affects these leaves, but not the center.
                // adding these hyperedges ensures that at most one of the potential leaves can become a leaf in
                // the obtained factoring, avoiding such actions
                if (action_schema.eff_vars.size() == 1) {
                    // all actions are leaf-only
                    continue;
                }
                if (action_schema.eff_vars.size() == 2){
                    // special case handling for two effect variables. here, we introduce an edge
                    // between all pairs of potential leaves that contain exactly one of the effect variables
                    vector<int> all_p_leaves;

                    set_union(var_to_p_leaves[action_schema.eff_vars[0]].begin(), var_to_p_leaves[action_schema.eff_vars[0]].end(),
                            var_to_p_leaves[action_schema.eff_vars[1]].begin(), var_to_p_leaves[action_schema.eff_vars[1]].end(),
                            back_inserter(all_p_leaves));

                    vector<int> intersection;

                    set_intersection(var_to_p_leaves[action_schema.eff_vars[0]].begin(), var_to_p_leaves[action_schema.eff_vars[0]].end(),
                            var_to_p_leaves[action_schema.eff_vars[1]].begin(), var_to_p_leaves[action_schema.eff_vars[1]].end(),
                            back_inserter(intersection));

                    vector<int> conflicting_p_leaves;

                    set_difference(all_p_leaves.begin(), all_p_leaves.end(),
                            intersection.begin(), intersection.end(),
                            back_inserter(conflicting_p_leaves));


                    for (int index_1 : conflicting_p_leaves){
                        for (int index_2 : conflicting_p_leaves){
                            if (index_1 < index_2){
                                p_leaves_cg[index_1][index_2 - index_1 - 1] = true;
                            }
                        }
                    }
                    continue;
                }
                // general case: introduce a hyperedge between all potential leaves with non-empty
                // intersection with the effect schema such that any pair of such potential leaves
                // covers the entire action schema. in this case, the action schema would otherwise
                // affect multiple leaves without affecting the center
                // TODO: note that we could easily handle such actions by simply labeling them center
                // actions, i.e. branch over them in the search. however, this goes beyond our
                // definition of general-star factorings.
                vector<size_t> p_leaf_counter(num_p_leaves, 0);
                for (size_t index_1 : var_to_p_leaves[action_schema.eff_vars[0]]) {
                    const vector<int> &p_leaf_vars = potential_leaves[index_1].vars;

                    vector<int> missing_variables;
                    set_difference(action_schema.eff_vars.begin(), action_schema.eff_vars.end(),
                            p_leaf_vars.begin(), p_leaf_vars.end(),
                            back_inserter(missing_variables));

                    if (!missing_variables.empty()) {
                        for (int missing_var : missing_variables){
                            for (size_t missing_p_leaf : var_to_p_leaves[missing_var]){
                                p_leaf_counter[missing_p_leaf]++;
                            }
                        }
                        for (size_t index_2 = 0; index_2 < p_leaf_counter.size(); ++index_2) {
                            if (p_leaf_counter[index_2] == missing_variables.size()){
                                if (index_1 < index_2){
                                    p_leaves_cg[index_1][index_2 - index_1 - 1] = true;
                                } else if (index_1 > index_2){
                                    p_leaves_cg[index_2][index_1 - index_2 - 1] = true;
                                }
                            }
                            p_leaf_counter[index_2] = 0;
                        }
                    }
                }
                if (!check_timeout()){
                    return vector<PotentialLeaf>();
                }
            }
        }

        vector<bool> fully_connected_p_leaves(num_p_leaves, false);
        for (size_t i_1 = 0; i_1 < num_p_leaves; ++i_1) {
            bool fully_connected = true;
            for (size_t i_2 = 0; i_2 < num_p_leaves; ++i_2) {
                if (i_1 < i_2) {
                    if (!p_leaves_cg[i_1][i_2 - i_1 - 1]){
                        fully_connected = false;
                        break;
                    }
                } else if (i_1 > i_2) {
                    if (!p_leaves_cg[i_2][i_1 - i_2 - 1]){
                        fully_connected = false;
                        break;
                    }
                }
            }
            if (fully_connected) {
                fully_connected_p_leaves[i_1] = true;
            }
        }
        auto is_fully_connected = [&](const PotentialLeaf &p_leaf){return fully_connected_p_leaves[p_leaf.id];};
        potential_leaves.erase(remove_if(potential_leaves.begin(),
                                    potential_leaves.end(),
                                    is_fully_connected),
                               potential_leaves.end());

        //adjust IDs
        int id = 0;
        for (PotentialLeaf &p_leaf : potential_leaves) {
            p_leaf.id = id;
            ++id;
        }

        cout << "done [" << timer << "]" << endl;

        cout << (num_p_leaves - potential_leaves.size()) << " potential leaves removed" << endl;
    }

    return potential_leaves;
}


void LPStarFactoring::merge_potential_leaves(vector<PotentialLeaf> &potential_leaves) const {

    queue<PotentialLeaf> open;
    for (PotentialLeaf &p_leaf : potential_leaves) {
        sort(p_leaf.vars.begin(), p_leaf.vars.end());
        if (p_leaf.vars.size() > 1) {
            open.push(p_leaf);
        }
    }

    int id = potential_leaves.size();
    vector<PotentialLeaf> merged_leaves;
    for (int iteration = 0; iteration < max_merge_steps; iteration++) {
        while (!open.empty()) {
            PotentialLeaf p_leaf = open.front();
            open.pop();
            set<int> overlapping_leaves;
            for (int var : p_leaf.vars) {
                for (int index : var_to_p_leaves[var]) {
                    overlapping_leaves.insert(index);
                }
            }

            for (int i : overlapping_leaves) {
                vector<int> vars = potential_leaves[i].vars;
                if (vars.size() == 1 || includes(p_leaf.vars.begin(), p_leaf.vars.end(), vars.begin(), vars.end()) || includes(vars.begin(), vars.end(), p_leaf.vars.begin(), p_leaf.vars.end())) {
                    continue;
                }
                vector<int> merged_vars (p_leaf.vars.size() + vars.size());
                auto it = set_union(p_leaf.vars.begin(), p_leaf.vars.end(), vars.begin(), vars.end(), merged_vars.begin());
                merged_vars.resize(it - merged_vars.begin());

                //duplicate check
                bool dublicate = false;
                for (int j : var_to_p_leaves[merged_vars[0]]) {
                    if (potential_leaves[j].vars == merged_vars) {
                       dublicate = true;
                       break;
                    }
                }
                if (!dublicate) {
                    for (PotentialLeaf &merged_leaf : merged_leaves) {
                        if (merged_leaf.vars == merged_vars) {
                           dublicate = true;
                           break;
                        }
                    }
                }
                if (dublicate) {
                    continue;
                }

                PotentialLeaf merged_leaf (id, 0, merged_vars);

                //calculate number of leaf actions and leaf-only actions
                set<int> overlapping_with_merged_leaf;
                for (int var : merged_vars) {
                    for (int j : var_to_p_leaves[var]) {
                        overlapping_with_merged_leaf.insert(j);
                    }
                }
                for (int j : overlapping_with_merged_leaf) {
                    merged_leaf.num_leaf_actions += potential_leaves[j].num_actions;
                    if (includes(merged_vars.begin(), merged_vars.end(), potential_leaves[j].vars.begin(), potential_leaves[j].vars.end())) {
                        merged_leaf.num_leaf_only_actions += potential_leaves[j].num_actions;
                    }
                }
                if (p_leaf.get_flexibility() > merged_leaf.get_flexibility() || potential_leaves[i].get_flexibility() > merged_leaf.get_flexibility()) {
                    continue;
                }

                merged_leaves.push_back(merged_leaf);
                id++;
            }
        }
        for (PotentialLeaf &merged_leaf : merged_leaves) {
            potential_leaves.push_back(merged_leaf);
            open.push(merged_leaf);
            for (int var : merged_leaf.vars) {
                var_to_p_leaves[var].insert(merged_leaf.id);
            }
        }
        merged_leaves.clear();
    }
}


void LPStarFactoring::add_options_to_parser(OptionParser &parser) {

    vector<string> strategies;
    strategies.push_back("mis");
    strategies.push_back("mis_mobile");
    strategies.push_back("mis_lp_relax");
    strategies.push_back("mml");
    strategies.push_back("mml_modular");
    strategies.push_back("mml_modular_no_schemes");
    strategies.push_back("mm");
    strategies.push_back("mf");
    strategies.push_back("mmf");
    parser.add_enum_option<STRATEGY>(
        "strategy",
        strategies,
        "TODO",
        "mml",
        vector<string>());

    vector<string> factoring_type;
    factoring_type.push_back("general");
    factoring_type.push_back("strict");
    factoring_type.push_back("f");
    factoring_type.push_back("if");
    parser.add_enum_option<FACTORING_TYPE>(
        "factoring_type",
        factoring_type,
        "TODO",
        "strict",
        vector<string>());

    parser.add_option<int>(
        "min_mobility",
        "TODO",
        "1"
    );

    parser.add_option<double>(
        "min_flexibility",
        "TODO",
        "0"
    );

    parser.add_option<int>(
        "max_merge_steps",
        "TODO",
        "0"
    );

    parser.add_option<int>(
        "cplex_time_limit",
        "CPLEX time limit in seconds",
        "-1"
    );

    parser.add_option<int>(
        "memory_limit",
        "CPLEX memory limit in MB",
        "-1"
    );

}

static shared_ptr<Factoring> _parse_lp(OptionParser &parser) {
    // TODO docu
    Factoring::add_options_to_parser(parser);
    LPFactoring::add_options_to_parser(parser);
    LPStarFactoring::add_options_to_parser(parser);
    lp::add_lp_solver_option_to_parser(parser);

    Options opts = parser.parse();

    if (!parser.dry_run()) {
        return make_shared<LPStarFactoring>(opts);
    }

    return 0;
}

static Plugin<Factoring> _plugin_lp("lp_star", _parse_lp);
}
