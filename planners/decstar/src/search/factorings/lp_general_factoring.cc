#include "lp_general_factoring.h"

#include "../option_parser.h"
#include "../plugin.h"
#include "../factoring.h"
#include "../lp/lp_solver.h"
#include "../lp/cplex_solver.h"
#include "../task_utils/causal_graph.h"
#include "../globals.h"
#include "../operator.h"
#include "../utils/timer.h"
#include "../utils/hash.h"

#include <algorithm>
#include <iostream>
#include <math.h>


using namespace std;
using namespace lp_factoring;


namespace lp_general_factoring {
void LPGeneralFactoring::PotentialLeaf::add_leaf_only_schema(size_t action_schema) {
    if (std::find(action_schemes.begin(),
            action_schemes.end(),
            action_schema) == action_schemes.end()){
        action_schemes.push_back(action_schema);
        num_actions += action_schemas[action_schema].num_actions;
        bool all_in = true;
        for (int pre : action_schemas[action_schema].pre_vars){
            if (!std::binary_search(vars.begin(), vars.end(), pre)){
                all_in = false;
                break;
            }
        }
        if (all_in){
            self_mobile_as.push_back(action_schema);
        }
    }
}

LPGeneralFactoring::LPGeneralFactoring(const Options &opts) : LPFactoring(opts),
        strategy(opts.get<STRATEGY>("strategy")),
        min_mobility(opts.get<int>("min_mobility")),
        min_flexibility(opts.get<double>("min_flexibility")),
        min_fact_flexibility(opts.get<double>("min_fact_flexibility")),
        add_cg_sccs_(opts.get<bool>("add_cg_sccs")),
        max_merge_steps(opts.get<int>("max_merge_steps")),
        merge_overlapping(opts.get<bool>("merge_overlapping")),
        merge_dependent(opts.get<bool>("merge_dependent")) {
    profile = GENERAL;
    cout << "using LP factoring strategy" << endl;

    if (max_merge_steps > 0 && !merge_dependent && !merge_overlapping){
        cerr << "At least one of \"merge_dependent\" or \"merge_overlapping\" needs to be set when merging leaves." << endl;
        exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
    } else if (max_merge_steps == 0 && (merge_dependent || merge_overlapping)){
        cerr << "WARNING: Option max_merge_steps needs to be set > 0 for \"merge_dependent\" or \"merge_overlapping\" to have an effect." << endl;
    }
}


Factoring::FactoredVars LPGeneralFactoring::get_factoring() {
    timer.reset();

    FactoredVars factoring = compute_factoring();

    // clear members no longer used to save memory
    vector<set<size_t>>().swap(var_to_p_leaves);
    vector<PotentialLeaf>().swap(potential_leaves);

    return factoring;
}

inline void get_combinations(const vector<size_t> &act_schemas,
        vector<vector<size_t> > &combinations,
        vector<size_t> &current,
        size_t i = 0) {
    if (i == act_schemas.size()){
        combinations.push_back(current);
        current.pop_back();
        return;
    }
    for (size_t as_num = i; as_num < act_schemas.size(); ++as_num){
        current.push_back(act_schemas[as_num]);
        get_combinations(act_schemas, combinations, current, as_num + 1);
    }
    if (i != 0){
        combinations.push_back(current);
        current.pop_back();
    }
}

inline double get_log(size_t num_actions) {
    return log(max(1.0001, (double) num_actions));
}

Factoring::FactoredVars LPGeneralFactoring::compute_factoring() {

    vector<lp::LPVariable> variables;
    vector<lp::LPConstraint> constraints;

    vector<vector<unordered_map<size_t, size_t>>> facts_to_mobility;
    vector<vector<size_t>> sum_fact_mobility;
    if (strategy == MFA){
        // need to store information for effect *facts*, which gets otherwise lost
        facts_to_mobility.resize(g_variable_domain.size());
        for (size_t var = 0; var < g_variable_domain.size(); ++var){
            facts_to_mobility[var].resize(g_variable_domain[var]);
        }

        utils::HashMap<std::vector<int>, utils::HashMap<std::vector<int>, size_t> > scheme_loockup;
        for (const Operator &op : g_operators) {
            vector<int> pre_vars;
            for (const Condition &pre : op.get_preconditions()) {
                pre_vars.push_back(pre.var);
            }
            sort(pre_vars.begin(), pre_vars.end());

            vector<int> eff_vars;
            vector<pair<int, int>> eff_facts;
            for (const Effect &eff : op.get_effects()) {
                eff_vars.push_back(eff.var);
                eff_facts.push_back(make_pair(eff.var, eff.val));
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
            size_t as = scheme_loockup[pre_vars][eff_vars];
            for (const auto &fact : eff_facts){
                facts_to_mobility[fact.first][fact.second][as]++;
            }
        }
        sum_fact_mobility.resize(g_variable_domain.size());
        for (size_t var = 0; var < g_variable_domain.size(); ++var){
            sum_fact_mobility[var].resize(g_variable_domain[var]);
            for (int val = 0; val < g_variable_domain[var]; ++val){
                for (const auto& [as, num] : facts_to_mobility[var][val]){
                    sum_fact_mobility[var][val] += num;
                }
            }
        }
    } else {
        init_action_schemas();
    }

    if (action_schemas.empty()){
        // mostly for trivially unsolvable task from translator?
        cerr << "ERROR: No action schemas." << endl;
        return FactoredVars();
    }

    compute_potential_leaves();

    if (!check_timeout()){
        return FactoredVars();
    }

    if (add_cg_sccs_){
        add_cg_sccs();
    }

    if (max_merge_steps == 0){
        filter_potential_leaves();
    }

    if (potential_leaves.empty()){
        cout << "No potential leaves." << endl;
        return FactoredVars();
    }

    if (max_merge_steps > 0) {
        merge_potential_leaves();
        filter_potential_leaves();
    }

    if (static_cast<int>(potential_leaves.size()) < min_number_leaves){
        cout << "Only " << potential_leaves.size() <<
                " potential leaves left, but minimum number of leaves is " <<
                min_number_leaves << "." << endl;
        return FactoredVars();
    }

    // LP variables
    vector<double> min_leaf_mobility;
    vector<size_t> non_self_mobile_leaf_actions;
    if (strategy == MM_APPROX){
        min_leaf_mobility.resize(potential_leaves.size(), 0.0);
        non_self_mobile_leaf_actions.resize(potential_leaves.size(), 0);
    }
    vector<bool> can_be_leaf_var(g_variable_domain.size(), false);
    // binary var for each potential leaf; 1 => becomes leaf, 0 => not
    for (const auto &pleaf : potential_leaves) {
        double obj = 0.0;
        if (strategy == MM_APPROX){
            // here obj is minimum leaf mobility
            non_self_mobile_leaf_actions[pleaf.id] = pleaf.num_actions;
            if (!pleaf.self_mobile_as.empty()){
                size_t mob = 0;
                for (size_t act_schema : pleaf.self_mobile_as){
                    mob += action_schemas[act_schema].num_actions;
                    non_self_mobile_leaf_actions[pleaf.id] -= action_schemas[act_schema].num_actions;
                }
                obj = get_log(mob);
                min_leaf_mobility[pleaf.id] = obj;
            }
        } else if (strategy == MML){
            // here, obj is 1 for every potential leaf
            obj = 1.0;
        }
        for (int var : pleaf.vars){
            can_be_leaf_var[var] = true;
        }
        variables.push_back(lp::LPVariable(0.0, 1.0, obj, true));
    }
    size_t act_schema_offset = variables.size();
    if (strategy == MFA){
        // binary variable for each action schema: 1 -> mobile, 0 -> not
        for (size_t as = 0; as < action_schemas.size(); ++as) {
            variables.push_back(lp::LPVariable(0.0, 1.0, 0.0, true));
        }
    }
    // binary var for each action schema of each potential leaf; 1 => is mobile, 0 => not
    vector<vector<size_t>> mob_as_var_ids(potential_leaves.size());
    vector<vector<size_t>> as_pleaf_var_ids;
    if (strategy == MFA){
        // ids to the LP variables where an action schema is part of a potential leaf
        as_pleaf_var_ids.resize(action_schemas.size());
    }
    for (const PotentialLeaf &pleaf : potential_leaves){
        if (strategy == MML &&
                !pleaf.self_mobile_as.empty() &&
                min_flexibility == 0.0 &&
                min_mobility <= 1){
            // if the leaf is self-mobile, there is no need to force
            // one of its action schemas to be mobile
            continue;
        }
        for (size_t act_schema : pleaf.action_schemes){
            mob_as_var_ids[pleaf.id].push_back(variables.size());
            switch (strategy) {
            case MMAS: variables.push_back(lp::LPVariable(0.0, 1.0, 1.0, true)); break;
            case MFA: as_pleaf_var_ids[act_schema].push_back(variables.size());
                      // fall through
            case MML: // fall through
            case MM_OPT: variables.push_back(lp::LPVariable(0.0, 1.0, 0.0, true)); break;
            case MM: variables.push_back(lp::LPVariable(0.0, 1.0, action_schemas[act_schema].num_actions, true)); break;
            case MM_APPROX:
                {double obj_v = 0.0;
                if (find(pleaf.self_mobile_as.begin(), pleaf.self_mobile_as.end(), act_schema) == pleaf.self_mobile_as.end()){
                    // otherwise, mobility is accounted for by the objective value of pleaf.id
                    obj_v = action_schemas[act_schema].num_actions *
                            (get_log(pleaf.num_actions) - min_leaf_mobility[pleaf.id]) /
                            non_self_mobile_leaf_actions[pleaf.id];
                }
                variables.push_back(lp::LPVariable(0.0, 1.0, obj_v, true));}
                break;
                //        MF: variables.push_back(lp::LPVariable(0.0, 1.0, , true)); break; // TODO
            default: cerr << "unknown strategy: " << strategy << endl; exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
            }
        }
    }
    vector<vector<size_t>> as_combs_ids;
    if (strategy == MM_OPT){
        as_combs_ids.resize(potential_leaves.size());
        // binary var for each combination of mobile action schemas of each potential leaf; 1 => combination is mobile, 0 => not
        for (const PotentialLeaf &pleaf : potential_leaves){
            vector<vector<size_t>> combinations;
            vector<size_t> tmp;
            get_combinations(pleaf.action_schemes, combinations, tmp);
            for (const auto &act_schemas : combinations){
                as_combs_ids[pleaf.id].push_back(variables.size());
                size_t num_actions = 0;
                for (size_t as : act_schemas){
                    num_actions += action_schemas[as].num_actions;
                }
                variables.push_back(lp::LPVariable(0.0, 1.0, get_log(num_actions), true));
            }
        }
    }
    vector<size_t> c_vars_ids(g_variable_domain.size(), -1);
    // binary var for each FDR variable; 1 => is in center, 0 => not
    for (size_t var = 0; var < g_variable_domain.size(); ++var){
        if (can_be_leaf_var[var]){
            c_vars_ids[var] = variables.size();
            variables.push_back(lp::LPVariable(0.0, 1.0, 0.0, true));
        }
    }
    vector<size_t> mob_cvars_ids;
    if (strategy == MFA){
        // float var for each FDR fact; 1 => fully mobile, 0 => not mobile
        mob_cvars_ids.resize(g_variable_domain.size());
        for (size_t var = 0; var < g_variable_domain.size(); ++var){
            if (can_be_leaf_var[var]){
                mob_cvars_ids[var] = variables.size();
                for (int val = 0; val < g_variable_domain[var]; ++val){
                    variables.push_back(lp::LPVariable(0.0, 1.0, 1.0));
                }
            }
        }
    }


    // LP constraints
    if (min_flexibility > 0.0){
        for (const PotentialLeaf &pleaf : potential_leaves){
            lp::LPConstraint constraint(-infty, 0.0);
            constraint.insert(pleaf.id, min_flexibility);
            for (size_t as_num = 0; as_num < pleaf.action_schemes.size(); ++as_num){
                constraint.insert(mob_as_var_ids[pleaf.id][as_num], -pleaf.as_flexibility[as_num]);
            }
            constraints.push_back(constraint);
        }
    }

    if (min_mobility > 1){
        for (const PotentialLeaf &pleaf : potential_leaves){
            lp::LPConstraint constraint(-infty, 0.0);
            constraint.insert(pleaf.id, min_mobility);
            for (size_t as_num = 0; as_num < pleaf.action_schemes.size(); ++as_num){
                constraint.insert(mob_as_var_ids[pleaf.id][as_num], -action_schemas[pleaf.action_schemes[as_num]].num_actions);
            }
            constraints.push_back(constraint);
        }
    }

    if (!check_lp_size(constraints.size(), variables.size()) || !check_timeout()){
        return FactoredVars();
    }

    // non-empty intersection between potential leaves
    {
        vector<vector<bool> > pleaf_intersect(potential_leaves.size() - 1);
        for (size_t i = 0; i < pleaf_intersect.size(); ++i){
            pleaf_intersect[i].resize(potential_leaves.size() - i - 1, false);
        }
        for (int var = 0; var < (int) g_variable_domain.size(); ++var){
            for (int pot_leaf_1 : var_to_p_leaves[var]){
                for (int pot_leaf_2 : var_to_p_leaves[var]){
                    if (pot_leaf_1 < pot_leaf_2){
                        pleaf_intersect[pot_leaf_1][pot_leaf_2 - pot_leaf_1 - 1] = true;
                    }
                }
            }
        }
        for (size_t p_leaf_1 = 0; p_leaf_1 < potential_leaves.size(); ++p_leaf_1) {
            for (size_t p_leaf_2 = p_leaf_1 + 1; p_leaf_2 < potential_leaves.size(); ++p_leaf_2) {
                // we need p_leaf_1 < p_leaf_2
                if (pleaf_intersect[p_leaf_1][p_leaf_2 - p_leaf_1 - 1]) {
                    lp::LPConstraint constraint(0.0, 1.0);
                    constraint.insert(p_leaf_1, 1.0);
                    constraint.insert(p_leaf_2, 1.0);
                    constraints.push_back(constraint);
                }
            }
        }
    }

    if (!check_lp_size(constraints.size(), variables.size()) || !check_timeout()){
        return FactoredVars();
    }


    // at least one action schema needs to be mobile in each leaf
    for (size_t pleaf = 0; pleaf < potential_leaves.size(); ++pleaf) {
        if (strategy == MML &&
                !potential_leaves[pleaf].self_mobile_as.empty() &&
                min_flexibility == 0.0 &&
                min_mobility <= 1){
            continue;
        }
        lp::LPConstraint constraint(-infty, 0.0);
        constraint.insert(pleaf, 1.0);
        for (size_t as_num = 0; as_num < potential_leaves[pleaf].action_schemes.size(); ++as_num) {
            constraint.insert(mob_as_var_ids[pleaf][as_num], -1.0);
        }
        constraints.push_back(constraint);
    }


    // set center vars if potential leaf is not a leaf
    for (size_t pleaf = 0; pleaf < potential_leaves.size(); ++pleaf) {
        // only consider the variables that can possibly be leaf variables
        vector<int> vars;
        for (int var : potential_leaves[pleaf].vars){
            if (can_be_leaf_var[var]){
                vars.push_back(var);
            }
        }
        lp::LPConstraint constraint(-infty, vars.size());
        constraint.insert(pleaf, vars.size());
        for (int var : vars) {
            constraint.insert(c_vars_ids[var], 1.0);
        }
        constraints.push_back(constraint);
    }

    if (!check_lp_size(constraints.size(), variables.size()) || !check_timeout()){
        return FactoredVars();
    }


    // set action schemas mobile if (1) it is part of a leaf, and
    // (2) precondition variables outside the leaf are in the center
    for (size_t pleaf = 0; pleaf < potential_leaves.size(); ++pleaf){
        if (strategy == MML &&
                !potential_leaves[pleaf].self_mobile_as.empty() &&
                min_flexibility == 0.0 &&
                min_mobility <= 1){
            continue;
        }
        for (size_t as_num = 0; as_num < potential_leaves[pleaf].action_schemes.size(); ++as_num) {
            set<int> outside_pre_vars;
            for (int var : action_schemas[potential_leaves[pleaf].action_schemes[as_num]].pre_vars){
                if (can_be_leaf_var[var] &&
                        !binary_search(potential_leaves[pleaf].vars.begin(),
                                potential_leaves[pleaf].vars.end(),
                                var)){
                    outside_pre_vars.insert(var);
                }
            }

            // action schema is mobile only if it is a leaf and all pre variables are center
            lp::LPConstraint constraint(-infty, 0.0);
            constraint.insert(pleaf, -1.0);
            constraint.insert(mob_as_var_ids[pleaf][as_num], outside_pre_vars.size() + 1.0);
            for (int var : outside_pre_vars){
                constraint.insert(c_vars_ids[var], -1.0);
            }
            constraints.push_back(constraint);
        }
    }

    if (!check_lp_size(constraints.size(), variables.size()) || !check_timeout()){
        return FactoredVars();
    }

    if (strategy == MM_OPT){
        // for each potential leaf, exactly one combination of its action schemas is mobile
        for (const PotentialLeaf &pleaf : potential_leaves){
            size_t i = 0;
            vector<vector<size_t>> combinations;
            vector<size_t> tmp;
            get_combinations(pleaf.action_schemes, combinations, tmp);
            for (size_t c = 0; c < combinations.size(); ++c){
                lp::LPConstraint constraint(-infty, 0.0);
                constraint.insert(pleaf.id, -1.0);
                constraint.insert(as_combs_ids[pleaf.id][i], 1.0 + combinations[c].size());
                for (size_t as : combinations[c]){
                    // TODO build a map for this
                    size_t id = find(pleaf.action_schemes.begin(), pleaf.action_schemes.end(), as) - pleaf.action_schemes.begin();
                    constraint.insert(mob_as_var_ids[pleaf.id][id], -1.0);
                }
                constraints.push_back(constraint);

                if (combinations[c].size() < pleaf.action_schemes.size()){
                    lp::LPConstraint constraint1(-infty, pleaf.action_schemes.size() - combinations[c].size());
                    constraint1.insert(as_combs_ids[pleaf.id][i], pleaf.action_schemes.size() - combinations[c].size());
                    for (size_t as_num = 0; as_num < pleaf.action_schemes.size(); ++as_num){
                        // TODO avoid searching
                        if (find(combinations[c].begin(), combinations[c].end(), pleaf.action_schemes[as_num]) == combinations[c].end()){
                            constraint1.insert(mob_as_var_ids[pleaf.id][as_num], 1.0);
                        }
                    }
                    constraints.push_back(constraint1);
                }
                ++i;
            }
        }
    }

    if (!check_lp_size(constraints.size(), variables.size()) || !check_timeout()){
        return FactoredVars();
    }


    if (strategy == MFA){
        // an action schema is mobile if it is mobile for a potential leaf
        for (size_t as_id = 0; as_id < action_schemas.size(); ++as_id){
            lp::LPConstraint constraint(-infty, 0.0);
            constraint.insert(act_schema_offset + as_id, 1.0);
            for (size_t as_mob_id : as_pleaf_var_ids[as_id]){
                constraint.insert(as_mob_id, -1.0);
            }
            constraints.push_back(constraint);
        }

        // fact mobility is upper bounded by sum of mobility ratios over affecting action schemas
        for (size_t var = 0; var < g_variable_domain.size(); ++var){
            if (can_be_leaf_var[var]){
                for (int val = 0; val < g_variable_domain[var]; ++val){
                    lp::LPConstraint constraint(-infty, 0.0);
                    constraint.insert(mob_cvars_ids[var] + val, 1.0);
                    for (const auto& [as, num] : facts_to_mobility[var][val]){
                        constraint.insert(act_schema_offset + as, -(double) num / sum_fact_mobility[var][val]);
                    }
                    constraints.push_back(constraint);
                }
            }
        }

        if (min_fact_flexibility > 0.0){
            // average flexibility of all facts in the leaf must be >= min_fact_flexibility
            for (const PotentialLeaf &pleaf : potential_leaves){
                lp::LPConstraint constraint(-infty, 0.0);
                int num_facts = 0;
                for (int var : pleaf.vars){
                    num_facts += g_variable_domain[var];
                    for (int val = 0; val < g_variable_domain[var]; ++val){
                        constraint.insert(mob_cvars_ids[var] + val, -1.0);
                    }
                }
                constraint.insert(pleaf.id, num_facts * min_fact_flexibility);
                constraints.push_back(constraint);
            }
        }
    }


    // save memory
    action_schemas = vector<ActionSchema>();

    if (min_number_leaves >= 2) {
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

    if (!check_lp_size(constraints.size(), variables.size()) || !check_timeout()){
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

    bool leaves_overlap = false;
    vector<bool> is_leaf_var(g_variable_domain.size(), false);
    for (size_t p_leaf = 0; p_leaf < potential_leaves.size(); ++p_leaf) {
        if (solution[p_leaf] == 1) {
            set<int> leaf;
            for (int var : potential_leaves[p_leaf].vars) {
                if (is_leaf_var[var]){
                    leaves_overlap = true;
                    // simple sanity check
                }
                is_leaf_var[var] = true;
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

void LPGeneralFactoring::compute_leaf_flexibility() {
    init_var_to_ops_map();
    for (auto &pl : potential_leaves){
        if (!pl.as_flexibility.empty()){
            continue;
        }
        size_t num_ops = 0;
        vector<bool> handled_op(g_operators.size(), false);
        for (int var : pl.vars){
            for (size_t op_id : var_to_affecting_op[var]){
                if (!handled_op[op_id]){
                    handled_op[op_id] = true;
                    ++num_ops;
                }
            }
        }
        pl.as_flexibility = vector<double>(pl.action_schemes.size(), 0.0);
        for (size_t as_num = 0; as_num < pl.action_schemes.size(); ++as_num){
            double as_flex = (double) action_schemas[pl.action_schemes[as_num]].num_actions / num_ops;
            pl.as_flexibility[as_num] = as_flex;
            pl.max_flexibility += as_flex;
        }
    }
}

void LPGeneralFactoring::filter_potential_leaves() {
    // filter leaves that cannot possible have more than the minimum flexibility or mobility
    set<size_t> erase_leaves;
    if (min_flexibility > 0.0){
        compute_leaf_flexibility();
        for (const auto &pl : potential_leaves){
            if (pl.max_flexibility < min_flexibility){
                erase_leaves.insert(pl.id);
            }
        }
    }
    if (min_mobility > 1) {
        for (const auto &pl : potential_leaves){
            if (pl.num_actions < min_mobility){
                erase_leaves.insert(pl.id);
            }
        }
    }
    cout << "Removed " << erase_leaves.size() << " potential leaves because of minimal flexibility/mobility." << endl;

    potential_leaves.erase(remove_if(potential_leaves.begin(),
            potential_leaves.end(),
            [&erase_leaves](const PotentialLeaf &pl){return find(erase_leaves.begin(),
                    erase_leaves.end(),
                    pl.id) != erase_leaves.end();}),
            potential_leaves.end());

    if (!erase_leaves.empty()){
        size_t id = 0;
        for (auto &pl : potential_leaves){
            pl.id = id++;
        }
        recompute_var_to_p_leaves();
    }
}

void LPGeneralFactoring::recompute_var_to_p_leaves() {
    if (var_to_p_leaves.size() != g_variable_domain.size()){
        var_to_p_leaves = vector<set<size_t> >(g_variable_domain.size(), set<size_t>());
    }
    for (size_t var = 0; var < g_variable_domain.size(); ++var){
        var_to_p_leaves[var].clear();
    }
    for (const PotentialLeaf &pleaf : potential_leaves) {
        for (int var : pleaf.vars) {
            var_to_p_leaves[var].insert(pleaf.id);
        }
    }
}

vector<LPGeneralFactoring::PotentialLeaf> LPGeneralFactoring::compute_potential_leaves() {
    assert(!action_schemas.empty());

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
                potential_leaves.push_back(PotentialLeaf(s, action_schema.eff_vars));
                potential_leaves[s].add_leaf_only_schema(as);
            } else {
                potential_leaves[leaf_lookup[action_schema.eff_vars]].add_leaf_only_schema(as);
            }
        }
    }

    cout << action_schemas.size() << " action schemes" << endl;
    cout << potential_leaves.size() << " potential leaves" << endl;

    recompute_var_to_p_leaves();

    // set the number of leaf-only actions
    for (const PotentialLeaf &p_leaf : potential_leaves) {
        set<size_t> superset_schemes;
        if (p_leaf.vars.size() == 1) {
            for (size_t index : var_to_p_leaves[p_leaf.vars[0]]) {
                superset_schemes.insert(index);
            }
        } else {
            // since we consider all supersets of p_leaf, we can simply take p_leaf.vars[0],
            // since all supersets must also include that variable
            for (size_t index : var_to_p_leaves[p_leaf.vars[0]]) {
                bool superset_schema = true;
                for (int var : p_leaf.vars) {
                    if (!binary_search(potential_leaves[index].vars.begin(), potential_leaves[index].vars.end(), var)){
                        superset_schema = false;
                        break;
                    }
                }
                if (superset_schema) {
                    superset_schemes.insert(index);
                }
            }
        }
        for (size_t index : superset_schemes) {
            for (size_t leaf_only_schema : p_leaf.action_schemes) {
                potential_leaves[index].add_leaf_only_schema(leaf_only_schema);
            }
        }
        if (!check_timeout()){
            return vector<PotentialLeaf>();
        }
    }

    return potential_leaves;
}

void LPGeneralFactoring::add_cg_sccs() {

    FactoredVars sccs = get_sccs();

    if (sccs.size() == 1){
        return;
    }

    utils::HashSet<std::vector<int>> leaf_lookup;

    for (const PotentialLeaf &pleaf : potential_leaves){
        leaf_lookup.insert(pleaf.vars);
    }

    size_t added = 0;
    for (const auto &scc : sccs) {
        int64_t size = 1;
        for (int var : scc){
            size *= g_variable_domain[var];
            if (max_leaf_size != 0 && size > max_leaf_size){
                break;
            }
        }
        if (max_leaf_size != 0 && size > max_leaf_size){
            continue;
        }

        vector<int> vars(scc.begin(), scc.end());
        sort(vars.begin(), vars.end());

        if (leaf_lookup.find(vars) == leaf_lookup.end()){
            size_t s = potential_leaves.size();
            for (int var : scc) {
                var_to_p_leaves[var].insert(s);
            }

            set<size_t> subset_schemes;
            // since we consider all supersets of p_leaf, we can simply take p_leaf.vars[0],
            // since all supersets must also include that variable
            for (int scc_var : scc){
                for (size_t index : var_to_p_leaves[scc_var]) {
                    if (index >= potential_leaves.size() - added){
                        continue;
                    }
                    bool subset_schema = true;
                    for (int var : potential_leaves[index].vars) {
                        if (find(scc.begin(), scc.end(), var) == scc.end()){
                            subset_schema = false;
                            break;
                        }
                    }
                    if (subset_schema) {
                        subset_schemes.insert(index);
                    }
                }
            }

            potential_leaves.push_back(PotentialLeaf(s, vars));

            for (size_t pleaf : subset_schemes){
                assert(pleaf < potential_leaves.size() - added);
                for (const auto &as : potential_leaves[pleaf].action_schemes){
                    potential_leaves[s].add_leaf_only_schema(as);
                }
            }

            ++added;
        }
        if (!check_timeout()){
            return;
        }
    }

    cout << "Added " << added << " causal-graph SCC potential leaves." << endl;
}


void LPGeneralFactoring::merge_potential_leaves() {

    queue<size_t> open;
    for (const PotentialLeaf &p_leaf : potential_leaves) {
        open.push(p_leaf.id);
    }

    const causal_graph::CausalGraph &cg = causal_graph::get_causal_graph();

    size_t added = 0;

    size_t id = potential_leaves.size();
    vector<PotentialLeaf> merged_leaves;
    for (int iteration = 0; iteration < max_merge_steps; ++iteration) {
        while (!open.empty()) {
            const PotentialLeaf &p_leaf = potential_leaves[open.front()];
            open.pop();

            set<size_t> merge_candidates;

            if (merge_overlapping){
                for (int var : p_leaf.vars) {
                    for (size_t index : var_to_p_leaves[var]) {
                        merge_candidates.insert(index);
                    }
                }

                set<size_t> erase_cands;
                for (size_t cand : merge_candidates){
                    const vector<int> &vars = potential_leaves[cand].vars;
                    if (vars.size() == 1 ||
                            includes(p_leaf.vars.begin(), p_leaf.vars.end(), vars.begin(), vars.end()) ||
                            includes(vars.begin(), vars.end(), p_leaf.vars.begin(), p_leaf.vars.end())) {
                        erase_cands.insert(cand);
                    }
                }
                for (size_t c : erase_cands){
                    merge_candidates.erase(c);
                }
            }

            if (merge_dependent){
                for (int var : p_leaf.vars) {
                    for (int c_var : cg.get_predecessors(var)){
                        for (size_t index : var_to_p_leaves[c_var]) {
                            merge_candidates.insert(index);
                        }
                    }
                    for (int c_var : cg.get_successors(var)){
                        for (size_t index : var_to_p_leaves[c_var]) {
                            merge_candidates.insert(index);
                        }
                    }
                }

                set<size_t> erase_cands;
                for (size_t cand : merge_candidates){
                    const vector<int> &vars = potential_leaves[cand].vars;
                    if (includes(p_leaf.vars.begin(), p_leaf.vars.end(), vars.begin(), vars.end()) ||
                            includes(vars.begin(), vars.end(), p_leaf.vars.begin(), p_leaf.vars.end())) {
                        erase_cands.insert(cand);
                    }
                }
                for (size_t c : erase_cands){
                    merge_candidates.erase(c);
                }
            }
            for (size_t cand : merge_candidates) {
                vector<int> merged_vars;
                merged_vars.reserve(p_leaf.vars.size() + potential_leaves[cand].vars.size());
                set_union(p_leaf.vars.begin(),
                        p_leaf.vars.end(),
                        potential_leaves[cand].vars.begin(),
                        potential_leaves[cand].vars.end(),
                        back_inserter(merged_vars));

                //duplicate check
                bool duplicate = false;
                for (size_t j : var_to_p_leaves[merged_vars[0]]) {
                    if (potential_leaves[j].vars == merged_vars) {
                        duplicate = true;
                        break;
                    }
                }
                if (!duplicate) {
                    for (const PotentialLeaf &merged_leaf : merged_leaves) {
                        if (merged_leaf.vars == merged_vars) {
                            duplicate = true;
                            break;
                        }
                    }
                }
                if (duplicate) {
                    continue;
                }

                PotentialLeaf merged_leaf(id, merged_vars);

                //calculate number of leaf actions and leaf-only actions
                set<size_t> overlapping_with_merged_leaf;
                for (int var : merged_vars) {
                    for (size_t j : var_to_p_leaves[var]) {
                        overlapping_with_merged_leaf.insert(j);
                    }
                }
                for (size_t ol_leaf : overlapping_with_merged_leaf) {
                    if (includes(merged_vars.begin(),
                            merged_vars.end(),
                            potential_leaves[ol_leaf].vars.begin(),
                            potential_leaves[ol_leaf].vars.end())) {
                        for (size_t as : potential_leaves[ol_leaf].action_schemes){
                            merged_leaf.add_leaf_only_schema(as);
                        }
                    }
                }

                merged_leaves.push_back(merged_leaf);
                ++id;
            }
        }
        added += merged_leaves.size();
        for (const PotentialLeaf &merged_leaf : merged_leaves) {
            assert(potential_leaves.size() == merged_leaf.id);
            open.push(potential_leaves.size());
            potential_leaves.push_back(merged_leaf);
            for (int var : merged_leaf.vars) {
                var_to_p_leaves[var].insert(merged_leaf.id);
            }
        }
        merged_leaves.clear();
    }
    cout << "Added " << added << " merged leaves." << endl;
}


void LPGeneralFactoring::add_options_to_parser(OptionParser &parser) {

    vector<string> strategies;
    strategies.push_back("mml");
    strategies.push_back("mmas");
    strategies.push_back("mm_opt");
    strategies.push_back("mm_approx");
    strategies.push_back("mfa");
    strategies.push_back("mm");
    parser.add_enum_option<STRATEGY>(
            "strategy",
            strategies,
            "TODO",
            "mml",
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

    parser.add_option<double>(
            "min_fact_flexibility",
            "TODO",
            "0"
    );

    parser.add_option<bool>(
            "add_cg_sccs",
            "TODO",
            "false"
    );

    parser.add_option<int>(
            "max_merge_steps",
            "TODO",
            "0"
    );

    parser.add_option<bool>(
            "merge_dependent",
            "TODO",
            "false"
    );

    parser.add_option<bool>(
            "merge_overlapping",
            "TODO",
            "false"
    );
}

static shared_ptr<Factoring> _parse_lp(OptionParser &parser) {
    // TODO docu
    Factoring::add_options_to_parser(parser);
    LPFactoring::add_options_to_parser(parser);
    LPGeneralFactoring::add_options_to_parser(parser);
    lp::add_lp_solver_option_to_parser(parser);

    Options opts = parser.parse();

    if (!parser.dry_run()) {
        return make_shared<LPGeneralFactoring>(opts);
    }

    return 0;
}

static Plugin<Factoring> _plugin_lp("lp_general", _parse_lp);
}
