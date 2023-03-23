#include "sym_decoupled_manager.h"

#include "../compliant_paths/cudd_cpg.h"
#include "../factoring.h"
#include "closed_list.h"
#include "uniform_cost_search.h"
#include "leaf_state_space.h"
#include "../option_parser.h"
#include "../plugin.h"
#include "../globals.h"
#include "../state_registry.h"
#include "sym_pricing_function.h"
#include "sym_pricing_function_sat.h"
#include "sym_pricing_function_debug.h"

using namespace std;


namespace symbolic {

#ifdef USE_CUDD

OpKey::OpKey(const Operator &op, int cost_) : center_pre(op),
        cost (cost_), factor (op.get_affected_factor()) {
}

CenterPrecondition::CenterPrecondition(const Operator &op) {
    for (const auto &pre :  op.get_preconditions(LeafFactorID::CENTER)) {
        conditions.push_back(pre);
    }
    sort(conditions.begin(), conditions.end());
}

bool CenterPrecondition::operator==(const CenterPrecondition &other) const {
    return conditions == other.conditions;
}

bool CenterPrecondition::operator<(const CenterPrecondition &other) const {
    return conditions < other.conditions;
}

bool CenterPrecondition::is_center_applicable(const GlobalState &state) const {
    for (const auto &cond : conditions){
        if (!cond.is_applicable(state)){
            return false;
        }
    }
    return true;
}

template<typename T>
FactorManager<T>::FactorManager(SymVariables *vars_, LeafFactorID factor_,
        bool use_cache_updates_,
        bool use_cache_heuristic_) :
        vars(vars_),
        factor(factor_),
        use_cache_updates(use_cache_updates_),
        use_cache_heuristic(use_cache_heuristic_) {
    assert(factor !=  LeafFactorID::CENTER);
    assert(factor >= 0);
    assert(factor < g_leaves.size());

    trs_by_center_operator_with_leaf_effects.resize(g_operators.size());
    leaf_precondition_by_op.resize(g_operators.size(), vars->oneBDD());
    for(size_t i = 0; i < g_operators.size(); ++i) {
        if (g_operators[i].get_affected_factor() == LeafFactorID::CENTER) {
            const auto & preconditions = g_operators[i].get_preconditions(factor);

            const auto & effects = g_operators[i].get_effects(factor);
            if(!effects.empty()) {
                trs_by_center_operator_with_leaf_effects[i].
                reset(new TransitionRelation(vars, &(g_operators[i]), 0, factor));
            }

            if(!preconditions.empty()){
                vector<pair<int, int> > precondition;
                for (auto &c : preconditions)  {
                    precondition.push_back(make_pair(c.var, c.val));
                }
                leaf_precondition_by_op [i] = vars->getPartialStateBDD(factor, precondition);
            }
        }


    }

    relevant_vars_factor.insert(g_leaves[factor].begin(),
            g_leaves[factor].end());

    set<int> nonRelVars;
    for (size_t i = 0; i < g_variable_domain.size(); ++i) {
        if(g_belongs_to_factor[i] != factor) {
            nonRelVars.insert(i);
        }
    }

    nonRelVarsCube = vars->getCubePre(nonRelVars);    // * vars->getCubep(nonRelVars);
    nonRelVarsCubeWithPrimes = nonRelVarsCube * vars->getCubeEff(nonRelVars);

    // Init initial state
    vector<pair<int, int>> abstract_ini;
    for (int var : g_leaves[factor]) {
        abstract_ini.push_back(pair<int, int> (var, g_initial_state_data[var]));
    }
    initialState = vars->getPartialStateBDD(factor, abstract_ini);

    //Init goal
    vector<pair<int, int>> abstract_goal;
    for (auto goal_var : g_goals_per_factor[factor]) {
        abstract_goal.push_back(goal_var);
    }
    goal = vars->getPartialStateBDD(factor, abstract_goal);
}

template<class T>
BDD SymDecoupledManager<T>::get_leaf_precondition(const Operator &op, LeafFactorID factor) const {
    return factor_managers[factor].get_leaf_precondition(op);
}

template<class T>
void SymDecoupledManager<T>::initialize(OperatorCost cost_type_) {
    if(!factor_managers.empty())  {
        return;
    }
    cost_type = cost_type_;
    SymController::initialize();
    factor_managers.reserve(g_leaves.size());
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor) {
        factor_managers.push_back(FactorManager<T>(vars.get(), factor,
                use_cache_updates, use_cache_heuristic));
    }

    bool compute_bound = g_factoring->get_search_type() != SAT &&
            g_factoring->get_search_type() != UNSAT;
    vector<map<int, vector<TransitionRelation>>>
    trs_for_bounding_procedure(g_leaves.size());
    map<OpKey, vector<TransitionRelation>> trs_by_key;

    for(const auto &op : g_operators) {
        LeafFactorID factor = op.get_affected_factor();
        if(factor == LeafFactorID::CENTER) {
            if(compute_bound) {
                for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor) {
                    if(!op.get_effects(factor).empty()) {
                        trs_for_bounding_procedure[factor][0].push_back(
                                TransitionRelation (vars.get(), &op, 0, factor));
                    }
                }
            }
            continue;
        }

        int cost = get_adjusted_action_cost(op, cost_type);
        TransitionRelation tr (vars.get(), &op, cost, factor);
        trs_by_key[OpKey(op, cost)].push_back(tr);
        if(compute_bound) {
            trs_for_bounding_procedure[factor][cost].push_back(tr);
        }
    }

    for (const auto & trk : trs_by_key ) {
        const auto & key = trk.first;
        for (const auto & tr : trk.second) {
            factor_managers[key.factor].add_transition_relation(key.center_pre, tr);
        }
    }

    if (compute_bound){
        int sum_min_goal_costs = 0;

        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
            SolutionBound sol_bound;

            auto mgr = factor_managers[factor].get_leaf_state_space(mgrParams, trs_for_bounding_procedure[factor]);

            UniformCostSearch search (searchParams, &sol_bound);
            search.init(mgr, true,
                    make_shared<OppositeFrontierFixed>(mgr->getGoal(), *mgr));

            cout << "Performing search: ";
            while (!search.finished () && !sol_bound.solved() ) {
                if (!search.step()) {
                    break;
                }
            }

            if (sol_bound.getLowerBound() == numeric_limits<int>::max()) {
                cout << "Detected unsolvable when computing the leaves bound" << endl;
                exit_with(utils::ExitCode::SEARCH_UNSOLVED_INCOMPLETE);
            }
            cout << "LOWER BOUND: " << sol_bound.getLowerBound() << endl;
            if(!sol_bound.solved()) {
                cout << "UPPER BOUND: " << sol_bound.getUpperBound() << endl;
            }

            sum_min_goal_costs += sol_bound.getLowerBound();
            CuddCPG<T>::set_min_leaf_goal_cost(factor, sol_bound.getLowerBound());
        }

        CuddCPG<T>::set_min_leaf_goal_cost(sum_min_goal_costs);
    }
}

template<class T>
bool SymDecoupledManager<T>::is_applicable(const Operator &op, const vector<shared_ptr<T>> &leaf_prices) const {
    for (LeafFactorID factor : op.get_leaf_pre_factors()){
        BDD sym_pre = get_leaf_precondition(op, factor);
        if (!leaf_prices[factor]->is_reachable(sym_pre)){
            return false;
        }
    }
    return true;
}

template<class T>
const BDD & SymDecoupledManager<T>::get_goal(LeafFactorID factor) const {
    return factor_managers[factor].get_goal();
}

template<class T>
const BDD & SymDecoupledManager<T>::get_initial_state (LeafFactorID factor) const {
    return factor_managers[factor].get_initial_state();
}

template<class T>
int SymDecoupledManager<T>::apply_leaf_precondition(const Operator & op, LeafFactorID factor,
        map<int, BDD> & prices) const {

    map<int, BDD> new_prices;
    int inc_g = -1;

    if(op.has_effect_on(factor)) {
        const auto & tr = factor_managers[factor].get_tr(op);

        for(const auto & iter : prices) {
            BDD res = tr.image(iter.second);

            if(!res.IsZero()) {
                if(inc_g == -1) {
                    inc_g = iter.first;
                }
                new_prices[iter.first - inc_g] = res;
            }
        }
    } else {
        const BDD & precondition = get_leaf_precondition(op, factor);

        for(const auto & iter : prices) {
            BDD res = iter.second * precondition;

            if(!res.IsZero()) {
                if(inc_g == -1) {
                    inc_g = iter.first;
                }
                new_prices[iter.first - inc_g] = res;
            }
        }
    }

    new_prices.swap(prices);
    return inc_g;

}

template<typename T>
shared_ptr<SymStateSpaceManager>
SymDecoupledManager<T>::get_leaf_state_space(LeafFactorID factor, const GlobalState &center_state) const {
    return factor_managers[factor].get_leaf_state_space(mgrParams, center_state);
}

template<typename T>
shared_ptr<SymStateSpaceManager>
FactorManager<T>::get_leaf_state_space(const SymParamsMgr &params,
        const GlobalState & center_state) const {

    check_center_preconditions(center_state);

    shared_ptr<LeafStateSpace> res;
    auto trs = get_transition_relations();
    if(!trs.empty()){
        res = make_shared<LeafStateSpace>(vars, params, factor,
                relevant_vars_factor,
                nonRelVarsCube, nonRelVarsCubeWithPrimes,
                initialState, goal,
                trs);
    }

    return res;
}

template<typename T>
shared_ptr<SymStateSpaceManager>
FactorManager<T>::get_leaf_state_space(const SymParamsMgr &params,
        const map <int, vector<TransitionRelation>> & trs) const {

    return make_shared<LeafStateSpace>(vars, params, factor,
            relevant_vars_factor,
            nonRelVarsCube, nonRelVarsCubeWithPrimes,
            initialState, goal, trs);
}

shared_ptr<ClosedList>  perform_uniform_cost_search (shared_ptr<SymStateSpaceManager> mgr,
        const SymParamsSearch & searchParams,
        const map<int, BDD > * predecessor_prices) {

    UniformCostSearch search (searchParams);

    search.init(mgr,  true,  predecessor_prices);

    while (!search.finished ()) {
        if (!search.step()) {
            cerr << "Fatal error: Search truncated before finishing " << endl;
            exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
        }
    }

    return search.getClosedRef();
}

template<typename T>
shared_ptr<T>
SymDecoupledManager<T>::get_initial_state_prices(LeafFactorID factor,
        const GlobalState & initial_center_state) {

    auto mgr = get_leaf_state_space(factor, initial_center_state);

    if(mgr) {
        return make_shared<T>(nullptr, mgr, searchParams, get_goal(factor), factor);
    } else {
        return make_shared<T>(vars.get(),
                get_initial_state(factor),
                get_goal(factor),
                factor);
    }
}

template<typename T>
shared_ptr<T> SymDecoupledManager<T>::update_prices_via_propagation(
        shared_ptr<T> predecessor, LeafFactorID factor,
        const GlobalState & center_state) {
    return factor_managers[factor].update_prices_via_propagation(predecessor, center_state,
            mgrParams, searchParams);
}


template<typename T>
shared_ptr<T> SymDecoupledManager<T>::update_prices_via_operator(
        shared_ptr<T> predecessor, LeafFactorID factor, const Operator & op) {
    return factor_managers[factor].update_prices_via_operator(predecessor, op);
}

template<typename T>
shared_ptr<T> FactorManager<T>::update_prices_via_operator (shared_ptr<T> predecessor, const Operator & op) {

    if (g_factoring->get_profile() != FORK) {
        auto effects = op.get_effects(factor);
        if(effects.empty()) {
            if (op.has_precondition_on(factor)) {
                return make_shared<T>(*predecessor, vars, get_leaf_precondition(op), goal);
            }
        } else {
            return make_shared<T>(*predecessor, vars, get_tr(op), goal);
        }
    }
    return predecessor;
}

template<typename T>
shared_ptr<T> FactorManager<T>::update_prices_via_propagation (std::shared_ptr<T> predecessor,
        const GlobalState & center_state,
        const SymParamsMgr & mgrParams,
        const SymParamsSearch & searchParams) {

    check_center_preconditions(center_state);
    shared_ptr<SymStateSpaceManager> mgr;

    Cache<T> * cache = nullptr;
    if (use_cache_updates) {
        auto cached = info_by_center_precondition.find(center_preconditions_checked);

        if(cached != info_by_center_precondition.end()) {
            cache = &(cached->second);
            auto entry = cache->get_reachability_info(predecessor->get_unique_identifier());
            if(entry) {
                return entry;
            }

            mgr = cache->get_manager();
        }
    }

    if(!mgr && !cache) {
        shared_ptr<LeafStateSpace> res;
        auto trs = get_transition_relations();
        if(!trs.empty()){
            mgr = make_shared<LeafStateSpace>(vars, mgrParams, factor,
                    relevant_vars_factor,
                    nonRelVarsCube, nonRelVarsCubeWithPrimes,
                    initialState, goal,
                    trs);
        }

        if(use_cache_updates) {
            auto cached = info_by_center_precondition.emplace(center_preconditions_checked,
                    Cache<T>(mgr));
            cache = &(cached.first->second);
        }
    }


    if (!mgr) {//No leaf actions, copy from predecessor
        return predecessor;
    }


    utils::Timer t_profile;

    auto res = make_shared<T>(predecessor.get(), mgr, searchParams, get_goal(), factor);

    if(use_cache_updates) {
        cache->add_reachability_info(predecessor->get_unique_identifier(), res);
    }

    return res;
}


template<typename T>
void FactorManager<T>::populate_reached_leaf_facts(const T & info, function<void(int, int)> f) const{
    if(use_cache_heuristic) {
        auto id = info.get_unique_identifier();
        auto item = cached_leaf_fact_reachability.find(id);

        if (item != cached_leaf_fact_reachability.end()) {
            for (const auto & call : item->second ) {
                f(call.first, call.second);
            }
            return;
        }
        vector<pair<int, int> > cache_calls;
        info.populate_reached_leaf_facts (vars,
                [&] (int a, int b){
            cache_calls.push_back(make_pair(a, b));
            f(a, b);
        });
        cached_leaf_fact_reachability.emplace(id, cache_calls);

    } else {
        info.populate_reached_leaf_facts(vars, f);
    }
}

template<typename T>
void FactorManager<T>::populate_cost_of_leaf_facts(const T & info, function<void(int, int, int)> f) const {
    if(use_cache_heuristic) {
        cout << "Error: use cache heuristic is not implemented." << endl;
        exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
    }
    info.populate_cost_of_leaf_facts(vars, f);
}

template<typename T>
void SymDecoupledManager<T>::populate_reached_leaf_facts(const T & info, function<void(int, int)> f) const {
    factor_managers[info.get_factor()].populate_reached_leaf_facts(info, f);
}

template<typename T>
void SymDecoupledManager<T>::populate_cost_of_leaf_facts(const T & info, function<void(int, int, int)> f) const {
    factor_managers[info.get_factor()].populate_cost_of_leaf_facts(info, f);
}



template<typename T>
void SymDecoupledManager<T>::
get_leaf_compliant_plan(const vector<StateID> &center_states,
        const vector<OperatorID> &center_path,
        LeafFactorID factor,
        vector<vector<OperatorID>> &leaf_plans) const {

    vector<shared_ptr<ClosedList>> path_reconstructed;

    vector<int> inc_g(center_states.size(), 0);
    auto mgr = get_leaf_state_space(factor, g_state_registry->lookup_state(center_states[0]));


    if(mgr) {
        path_reconstructed.push_back(perform_uniform_cost_search(mgr, searchParams));
    }else {
        auto new_closed = make_shared<ClosedList> ();
        auto state_space = factor_managers[factor].get_leaf_state_space(mgrParams,
                map<int, vector<TransitionRelation>>());
        new_closed->init(state_space.get(), nullptr);
        new_closed->insert(0, state_space->getInitialState());
        path_reconstructed.push_back(new_closed);
    }

    for(size_t i = 0; i < center_path.size(); ++i) {
        const GlobalState &center_state = g_state_registry->lookup_state(center_states[i+1]);
        const Operator &op = g_operators[center_path[i]];

        auto closed_i = path_reconstructed[i]->getClosedList(); //Make copy

        if (g_factoring->get_profile() != FORK && (op.has_precondition_on(factor) || op.has_effect_on(factor))) {
            inc_g[i] += apply_leaf_precondition(op, factor, closed_i);
        }

        auto mgr_i = get_leaf_state_space(factor, center_state);

        if(mgr_i) {
            path_reconstructed.push_back(perform_uniform_cost_search(mgr_i, searchParams, &closed_i));
        } else {
            auto new_closed = make_shared<ClosedList> ();
            auto state_space = factor_managers[factor].
                    get_leaf_state_space(mgrParams, map<int, vector<TransitionRelation>>());
            new_closed->init(state_space.get(), nullptr);
            for(const auto &item : closed_i) {
                new_closed->insert(item.first, item.second);
            }
            path_reconstructed.push_back(new_closed);
        }
    }

    auto solution = path_reconstructed.back()->checkCut(nullptr, get_goal(factor), 0, true);
    BDD goal_states = solution.getCut();
    int goal_cost = solution.getH();

    //Now we go backward trying to reconstruct from the goal
    for(int i = (int) path_reconstructed.size() - 1; i >= 0; --i) {

        const GlobalState &center_state = g_state_registry->lookup_state(center_states[i]);

        map<int, vector<TransitionRelation>> trs;
        for(const auto & op : g_operators) {
            if(op.get_affected_factor() != factor) {
                continue;
            }
            if(op.is_center_applicable(center_state)) {
                int cost = get_adjusted_action_cost(op, cost_type);
                trs[cost].push_back(TransitionRelation(vars.get(),
                        &op, cost, factor));
            }
        }

        vector<OperatorID> plan;
        auto res = path_reconstructed[i]->extract_partial_path(trs, goal_states, goal_cost, true, plan);
        reverse(plan.begin(), plan.end());
        leaf_plans[i].insert(leaf_plans[i].end(), plan.begin(), plan.end());
        if(i > 0) {
            goal_states = res.first;
            goal_cost = res.second + inc_g[i-1];

            if(g_operators[center_path[i-1]].has_effect_on(factor)) {
                const auto & tr = factor_managers[factor].get_tr(g_operators[center_path[i-1]]);
                goal_states = tr.preimage(goal_states);
            }
        }
    }
}


template<typename T>
SymDecoupledManager<T>::SymDecoupledManager(const SymDecoupledManagerOptions &opts)  :
    SymController(opts),
    use_cache_updates(opts.use_cache_updates),
    use_cache_heuristic(opts.use_cache_heuristic),
    cost_type(NORMAL) {
}

#endif

SymDecoupledManagerOptions::SymDecoupledManagerOptions() :
        cudd_init_nodes(16000000L),
        cudd_init_cache_size(16000000L),
        cudd_init_available_memory(0L),
        gamer_ordering(true),
        use_cache_updates(true),
        use_cache_heuristic(true) {
}

SymDecoupledManagerOptions::SymDecoupledManagerOptions(const Options &opts) :
#ifdef USE_CUDD
        mgrParams(opts), searchParams(opts),
#endif
        cudd_init_nodes(opts.get<long>("cudd_init_nodes")),
        cudd_init_cache_size(opts.get<long>("cudd_init_cache_size")),
        cudd_init_available_memory(opts.get<long>("cudd_init_available_memory")),
        gamer_ordering(opts.get<bool>("gamer_ordering")),
        use_cache_updates(opts.get<bool> ("use_cache_updates") || opts.get<bool> ("use_cache")),
        use_cache_heuristic(opts.get<bool> ("use_cache_heuristic") || opts.get<bool> ("use_cache")) {
}

void SymDecoupledManagerOptions::add_options_to_parser(OptionParser &parser) {
    parser.add_option<bool>("use_cache",
            "use cache",
            "false");

    parser.add_option<bool>("use_cache_updates",
            "use cache",
            "true");

    parser.add_option<bool>("use_cache_heuristic",
            "use cache",
            "false");
}

static shared_ptr<SymDecoupledManagerOptions> _parse(OptionParser &parser) {
#ifdef USE_CUDD
    SymController::add_options_to_parser(parser, 1800e3, 1e7);
#endif

    SymDecoupledManagerOptions::add_options_to_parser(parser);

    Options opts = parser.parse();

    if (!parser.dry_run()) {
        return make_shared<SymDecoupledManagerOptions>(opts);
    }

    return 0;
}

static PluginTypePlugin<SymDecoupledManagerOptions> _type_plugin(
    "SymDecoupledManagerOptions",
    "TODO",
    "sym_decoupled_manager_options");

static Plugin<SymDecoupledManagerOptions> _plugin("cudd_decoupled_manager", _parse);

template class SymDecoupledManager<SymPricingFunction>;
template class SymDecoupledManager<SymPricingFunctionSAT>;
template class SymDecoupledManager<SymPricingFunctionDebug>;

}
