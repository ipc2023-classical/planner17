#include "clustering_lp_factoring.h"

#include "../option_parser.h"
#include "../plugin.h"
#include "../task_proxy.h"

#include "../lp/lp_solver.h"

#include "../task_utils/causal_graph.h"

#include "../utils/collections.h"
#include "../utils/countdown_timer.h"
#include "../utils/logging.h"
#include "../utils/timer.h"

using namespace std;

namespace merge_and_shrink {
ClusteringLPFactoring::ClusteringLPFactoring(const options::Options &opts)
    : Clustering(),
    max_leaf_size(opts.get<int>("max_leaf_size")),
    min_number_leaves(opts.get<int>("min_num_leaves")),
    strategy(opts.get<STRATEGY>("strategy")),
    factoring_type(opts.get<FACTORING_TYPE>("factoring_type")),
    min_mobility(opts.get<int>("min_mobility")),
    min_flexibility(opts.get<double>("min_flexibility")),
    max_merge_steps(opts.get<int>("max_merge_steps")),
    memory_limit(opts.get<int>("memory_limit")),
    lp_solver_type(opts.get<lp::LPSolverType>("lpsolver")),
    factoring_time_limit(opts.get<int>("factoring_time_limit")) {
}

vector<vector<int>> ClusteringLPFactoring::compute(const TaskProxy &task_proxy) const {
    utils::g_log << "using LP factoring strategy to compute factoring" << endl;
    factoring_timer = utils::make_unique_ptr<utils::CountdownTimer>(factoring_time_limit);
    FactoredVars factoring = get_max_mobile_leaves(task_proxy);
    int num_variables = task_proxy.get_variables().size();
    if (factoring.empty()) {
        utils::g_log << "could not find non-trivial factoring" << endl;
        factoring.reserve(num_variables);
        for (int var = 0; var < num_variables; ++var) {
            factoring.emplace_back(vector<int>({var}));
        }
    } else {
        vector<bool> used_vars(num_variables, false);
        for (const vector<int> &factor: factoring) {
            for (int var: factor) {
                assert(!used_vars[var]);
                used_vars[var] = true;
            }
        }
        for (int var = 0; var < num_variables; ++var) {
            if (!used_vars[var]) {
                factoring.emplace_back(vector<int>({var}));
            }
        }
    }
    return factoring;
}

void ClusteringLPFactoring::dump_lp(
    lp::LPObjectiveSense sense,
    const named_vector::NamedVector<lp::LPVariable> &vars,
    const named_vector::NamedVector<lp::LPConstraint> &constrs) const {
    if (sense == lp::LPObjectiveSense::MAXIMIZE){
        utils::g_log << "Linear Program: maximize objective value" << endl;
    } else {
        utils::g_log << "Linear Program: minimize objective value" << endl;
    }
    utils::g_log << vars.size() << " variables" << endl;
    utils::g_log << constrs.size() << " constraints" << endl;

    if (vars.size() > 100 || constrs.size() > 100){
        utils::g_log << "WARNING: not printing LP as it is too big" << endl;
        return;
    }

    utils::g_log << "variables: " << endl;
    int i = 0;
    for (auto &var : vars){
        utils::g_log << "x" << i++ << ": range " << var.lower_bound << " .. " << var.upper_bound << "; objective value " << var.objective_coefficient << (var.is_integer ? ", is integer variable" : "") << endl;
    }

    utils::g_log << endl;

    for (auto &constr : constrs){
        utils::g_log << constr.get_lower_bound() << " < ";
        for (size_t i = 0; i < constr.get_variables().size(); ++i){
            utils::g_log << constr.get_coefficients()[i] << " * x" << constr.get_variables()[i] << (i < constr.get_variables().size() - 1 ? " + " : "");
        }
        utils::g_log << " < " << constr.get_upper_bound() << endl;
    }
}

vector<double> ClusteringLPFactoring::solve_lp(named_vector::NamedVector<lp::LPVariable> &&variables,
                                               named_vector::NamedVector<lp::LPConstraint> &&constraints,
                                               bool solve_lp_relaxation,
                                               utils::Timer &lp_construction_timer) const {

    if (constraints.size() == 0){
        utils::g_log << "WARNING: no constraints specified. Adding dummy constraint to prevent errors." << endl;
        lp::LPConstraint dummy(0, 1);
        dummy.insert(0, 1);
        constraints.push_back(dummy);
    }

    lp::LPObjectiveSense sense = lp::LPObjectiveSense::MAXIMIZE;
#ifndef NDEBUG
    dump_lp(sense, variables, constraints);
#endif


    lp::LPSolver solver(lp_solver_type);

    if (solve_lp_relaxation){
        for (auto &var : variables){
            var.is_integer = false;
        }
    }

    cerr << "lp factoring strategy not implemented" << endl;
    utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
    return {};
    // TODO: incompatible with LP version of this repo.
//    double infinity = solver.get_infinity();
//    lp::LinearProgram lp(sense, move(variables), move(constraints), infinity);
//    solver.load_problem(lp);
//
//    solver.print_statistics();
//
//    utils::g_log << "LP construction time: " << lp_construction_timer << endl;
//
//    utils::Timer lp_solver_timer;
//
//    solver.solve();
//
//    utils::g_log << "LP solving time: " << lp_solver_timer << endl;
//
//    vector<double> solution;
//
//    if (!solver.has_optimal_solution()){
//        utils::g_log << "no optimal solution to LP found, factoring failed" << endl;
//        return solution;
//    }
//
//    solution = solver.extract_solution();
//
//    return solution;
}

ClusteringLPFactoring::FactoredVars ClusteringLPFactoring::get_max_mobile_leaves(const TaskProxy &task_proxy) const {

    utils::Timer lp_construction_timer;
    
    size_t num_variables = task_proxy.get_variables().size();

    named_vector::NamedVector<lp::LPVariable> variables;
    named_vector::NamedVector<lp::LPConstraint> constraints;

    vector<ActionSchema> action_schemas = get_action_schemas(task_proxy);

    if (action_schemas.empty() || factoring_timer->is_expired()){
        // for trivially unsolvable task
        return {};
    }

    vector<PotentialLeaf> potential_leaves = get_potential_leaves(task_proxy, action_schemas);

    if (potential_leaves.empty() || factoring_timer->is_expired()){
        return {};
    }

    vector<set<size_t> > var_to_p_leaves(num_variables);
    for (const PotentialLeaf &p_leaf : potential_leaves) {
        for (int var : p_leaf.vars) {
            var_to_p_leaves[var].insert(p_leaf.id);
        }
    }

    if (max_merge_steps > 0) {
        merge_potential_leaves(potential_leaves, var_to_p_leaves);
    }



    vector<vector<bool> > p_leaves_cg(potential_leaves.size() - 1);
    for (size_t i = 0; i < p_leaves_cg.size(); ++i){
        p_leaves_cg[i].resize(potential_leaves.size() - i - 1, false);
    }

    if (factoring_type == FACTORING_TYPE::STRICT) {
        for (const PotentialLeaf &p_leaf : potential_leaves) {
            for (int var : p_leaf.vars) {
                // iterating over all successors will introduce a few unnecessary "true"
                // edges in the graph, namely for those potential leaves connected via
                // eff-eff variables. however, it will not lead to superfluous constraints,
                // since we only check these in one direction.
                for (int suc : task_proxy.get_causal_graph().get_successors(var)) {
                    for (size_t id : var_to_p_leaves[suc]) {
                        if (p_leaf.id < id) {
                            p_leaves_cg[p_leaf.id][id - p_leaf.id - 1] = true;
                        } else if (p_leaf.id > id) {
                            p_leaves_cg[id][p_leaf.id - id - 1] = true;
                        }
                    }
                }
            }
            if (factoring_timer->is_expired()){
                return {};
            }
        }
    }


    if (factoring_type == FACTORING_TYPE::GENERAL) {
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
            if (factoring_timer->is_expired()){
                return {};
            }
        }
    }


    for (size_t p_leaf = 0; p_leaf < potential_leaves.size(); ++p_leaf) {
        switch (strategy) {
            case STRATEGY::MML:
                variables.push_back(lp::LPVariable(0.0, 1.0, 1.0, true));
                break;
            case STRATEGY::MF:
                variables.push_back(lp::LPVariable(0.0, 1.0, potential_leaves[p_leaf].get_flexibility(), true));
                break;
            case STRATEGY::MM:
                variables.push_back(lp::LPVariable(0.0, 1.0, potential_leaves[p_leaf].num_leaf_only_actions, true));
                break;
            case STRATEGY::MMF:
                variables.push_back(lp::LPVariable(0.0, 1.0, potential_leaves[p_leaf].num_leaf_only_actions * potential_leaves[p_leaf].get_flexibility(), true));
                break;
            default: exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
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

    if (memory_limit != -1 && num_constraints >= (size_t) memory_limit * 2500){
        // this limit corresponds to around 10 million constraints with 4GB memory limit
        // the maximum-sized ILP that could be solved in the experiments with this limit
        // had around 5 million constraints
        cerr << "Too many LP constraints, aborting: " << num_constraints << endl;
        return {};
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


    if (factoring_timer->is_expired()){
        return {};
    }

    if (factoring_type == FACTORING_TYPE::GENERAL) {
        for (const ActionSchema &act_schema : action_schemas) {
            if (factoring_timer->is_expired()){
                return {};
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
        lp::LPConstraint constraint(min_number_leaves, min(potential_leaves.size(), num_variables));
        for (size_t p_leaf = 0; p_leaf < potential_leaves.size(); ++p_leaf) {
            constraint.insert(p_leaf, 1.0);
        }
        constraints.push_back(constraint);
    }

    if (factoring_timer->is_expired()){
        return {};
    }

    vector<double> solution = solve_lp(move(variables), move(constraints), false, lp_construction_timer);

    ClusteringLPFactoring::FactoredVars factoring;

    if (solution.empty()) {
        return factoring;
    }

    // simple sanity check
    bool all_potential_leaves = true;
    bool leaves_overlap = false;
    vector<bool> leaf_variables(num_variables, false);
    for (size_t p_leaf = 0; p_leaf < potential_leaves.size(); ++p_leaf) {
        if (solution[p_leaf] == 1) {
            vector<int> leaf;
            for (int var : potential_leaves[p_leaf].vars) {
                if (leaf_variables[var]){
                    leaves_overlap = true;
                }
                leaf_variables[var] = true;
                leaf.push_back(var);
            }
            utils::sort_unique(leaf);
            factoring.push_back(leaf);
        } else {
            all_potential_leaves = false;
        }
    }

    if (all_potential_leaves && leaves_overlap){
        // TODO: investigate this!
        // this tends to happen when CPLEX is running out of memory on the cluster,
        // when run with an external memory limit. could try to additionally set
        // the memory limit for CPLEX explicitly
        cerr << "ERROR: solution returned by CPLEX is not a valid factoring; all potential leaves become leaves, but do overlap." << endl;
        return {};
    }

    return factoring;
}

vector<ClusteringLPFactoring::ActionSchema> ClusteringLPFactoring::get_action_schemas(
    const TaskProxy &task_proxy) const {
    vector<ClusteringLPFactoring::ActionSchema> action_schemas;
    utils::HashMap<std::vector<int>, utils::HashMap<std::vector<int>, size_t> > scheme_loockup;
    for (OperatorProxy op : task_proxy.get_operators()) {
        vector<int> pre_vars;
        for (FactProxy pre : op.get_preconditions()) {
            pre_vars.push_back(pre.get_variable().get_id());
        }
        sort(pre_vars.begin(), pre_vars.end());

        vector<int> eff_vars;
        for (EffectProxy eff : op.get_effects()) {
            eff_vars.push_back(eff.get_fact().get_variable().get_id());
        }
        sort(eff_vars.begin(), eff_vars.end());

        if (scheme_loockup.find(pre_vars) == scheme_loockup.end()){
            scheme_loockup[pre_vars][eff_vars] = action_schemas.size();
            action_schemas.push_back(ActionSchema(1, pre_vars, eff_vars));
        } else if (scheme_loockup[pre_vars].find(eff_vars) == scheme_loockup[pre_vars].end()){
            scheme_loockup[pre_vars][eff_vars] = action_schemas.size();
            action_schemas.push_back(ActionSchema(1, pre_vars, eff_vars));
        } else {
            action_schemas[scheme_loockup[pre_vars][eff_vars]].incr_num_action();
        }
    }
    if (min_mobility > 1 && max_merge_steps > 0) {
        // erase schemes with num_actions < min_num_actions
        action_schemas.erase(remove_if(action_schemas.begin(),
                                       action_schemas.end(),
                                       [&](const ActionSchema &schema){return schema.num_actions < min_mobility;}),
                             action_schemas.end());
    }
    return action_schemas;
}

vector<ClusteringLPFactoring::PotentialLeaf> ClusteringLPFactoring::get_potential_leaves(
    const TaskProxy &task_proxy, const vector<ActionSchema> &action_schemas) const {
    assert(!action_schemas.empty());

    vector<ClusteringLPFactoring::PotentialLeaf> potential_leaves;
    
    VariablesProxy variables = task_proxy.get_variables();
    size_t num_variables = variables.size();

    utils::HashMap<std::vector<int>, size_t> leaf_lookup;
    for (size_t as = 0; as < action_schemas.size(); ++as) {
        const ActionSchema &action_schema = action_schemas[as];
        uint64_t size = 1;
        for (int var : action_schema.eff_vars){
            size *= variables[var].get_domain_size();
            if (size > max_leaf_size){
                break;
            }
        }
        if (size > max_leaf_size){
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

    utils::g_log << action_schemas.size() << " action schemes" << endl;
    utils::g_log << potential_leaves.size() << " potential leaves" << endl;

    vector<set<size_t> > var_to_p_leaves(num_variables, set<size_t>());

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
        if (factoring_timer->is_expired()){
            return vector<PotentialLeaf>();
        }
    }

    if (min_mobility > 1 || min_flexibility > 0 ||
        strategy == STRATEGY::MF || strategy == STRATEGY::MM || strategy == STRATEGY::MMF ||
        (strategy == STRATEGY::MML && factoring_type == FACTORING_TYPE::GENERAL)) {
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
            if (factoring_timer->is_expired()){
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
        for (size_t var = 0; var < num_variables; ++var){
            var_to_p_leaves[var].clear();
        }
        for (const PotentialLeaf &p_leaf : potential_leaves) {
            for (int var : p_leaf.vars) {
                var_to_p_leaves[var].insert(p_leaf.id);
            }
        }
    }

    if (min_number_leaves >= 2 && !potential_leaves.empty()) {

        if (factoring_type == FACTORING_TYPE::STRICT){
            // HACK to avoid logging to get messy when
            // CG print collides with the "Eliminating.." one
            task_proxy.get_causal_graph();
        }

        utils::Timer timer;
        utils::g_log << "Eliminating potential leaves... " << flush;

        size_t num_p_leaves = potential_leaves.size();
        vector<vector<bool> > p_leaves_cg(num_p_leaves - 1);
        for (size_t i = 0; i < p_leaves_cg.size(); ++i){
            p_leaves_cg[i].resize(num_p_leaves - i - 1, false);
        }

        if (factoring_type == FACTORING_TYPE::STRICT) {
            for (int var = 0; var < (int) num_variables; ++var){
                // check if intersection non-empty
                for (int pot_leaf_1 : var_to_p_leaves[var]){
                    for (int pot_leaf_2 : var_to_p_leaves[var]){
                        if (pot_leaf_1 < pot_leaf_2){
                            p_leaves_cg[pot_leaf_1][pot_leaf_2 - pot_leaf_1 - 1] = true;
                        }
                    }
                }
                // check CG connection of contained variables
                for (int cg_succ : task_proxy.get_causal_graph().get_successors(var)){
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
                if (factoring_timer->is_expired()){
                    utils::g_log << "timed out." << endl;
                    return vector<PotentialLeaf>();
                }
            }
        }

        if (factoring_type == FACTORING_TYPE::GENERAL) {

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
                if (factoring_timer->is_expired()){
                    utils::g_log << "timed out." << endl;
                    return vector<PotentialLeaf>();
                }
            }

            for (int var = 0; var < (int) num_variables; ++var){
                // check if intersection non-empty
                for (size_t pot_leaf_1 : var_to_p_leaves[var]){
                    for (size_t pot_leaf_2 : var_to_p_leaves[var]){
                        if (pot_leaf_1 < pot_leaf_2){
                            p_leaves_cg[pot_leaf_1][pot_leaf_2 - pot_leaf_1 - 1] = true;
                        }
                    }
                }
                if (factoring_timer->is_expired()){
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
                if (factoring_timer->is_expired()){
                    utils::g_log << "timed out." << endl;
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

        utils::g_log << "done [" << timer << "]" << endl;

        utils::g_log << (num_p_leaves - potential_leaves.size()) << " potential leaves removed" << endl;
    }

    return potential_leaves;
}


void ClusteringLPFactoring::merge_potential_leaves(vector<PotentialLeaf> &potential_leaves,
                                         vector<set<size_t> > &var_to_p_leaves) const {

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

static shared_ptr<Clustering>_parse(options::OptionParser &parser) {
    parser.add_option<int>(
        "max_leaf_size",
        "TODO",
        "infinity");

    parser.add_option<int>(
        "min_num_leaves",
        "TODO",
        "2");

    vector<string> strategies;
//    strategies.push_back("mis");
//    strategies.push_back("mis_mobile");
//    strategies.push_back("mis_lp_relax");
    strategies.push_back("mml");
//    strategies.push_back("mml_modular");
//    strategies.push_back("mml_modular_no_schemes");
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
        "memory_limit",
        "CPLEX memory limit in MB",
        "-1"
    );

    parser.add_option<int>(
        "factoring_time_limit",
        "TODO",
        "infinity"
    );

    lp::add_lp_solver_option_to_parser(parser);


    options::Options options = parser.parse();
    if (parser.help_mode()) {
        return nullptr;
    }
    return make_shared<ClusteringLPFactoring>(options);
}

static options::Plugin<Clustering> _plugin("clustering_lp_factoring", _parse);
}
