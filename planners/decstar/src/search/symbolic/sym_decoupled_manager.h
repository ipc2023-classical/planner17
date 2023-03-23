#ifndef SYMBOLIC_SYM_DECOUPLED_MANAGER_H
#define SYMBOLIC_SYM_DECOUPLED_MANAGER_H

#include "cudd_method.h"
#include "../ext/boost/dynamic_bitset.hpp"
#include "../operator_cost.h"
#include "sym_controller.h"

#include <functional>
#include <unordered_map>

namespace options {
class Options;
}

namespace symbolic {

#ifdef USE_CUDD

class SymStateSpaceManager;
class ClosedList;

class CenterPrecondition {
    std::vector<Condition> conditions;

public:

    CenterPrecondition(const Operator &op);

    bool operator==(const CenterPrecondition &other) const;

    bool operator<(const CenterPrecondition &other) const;

    bool is_center_applicable(const GlobalState &state) const;

};

class OpKey {
public:
    CenterPrecondition center_pre;
    int cost;
    LeafFactorID factor;

    OpKey(const Operator &op, int cost);

    bool operator==(const OpKey &other) const {
        return factor == other.factor &&
                cost == other.cost &&
                center_pre == other.center_pre;
    }

    bool operator<(const OpKey &other) const {
        if (factor < other.factor) return true;
        if (factor > other.factor) return false;
        if (cost < other.cost) return true;
        if (cost > other.cost) return false;
        if (center_pre < other.center_pre) return true;
        return false;
    }
};

template<typename T>
class Cache {
    std::unordered_map<DdNode *, std::shared_ptr<T> > reachability_info;

    std::shared_ptr<SymStateSpaceManager> manager;
public:
    Cache(std::shared_ptr<SymStateSpaceManager> manager_) : manager(manager_) {}

    std::shared_ptr<SymStateSpaceManager> get_manager() const {
        return manager;
    }

    std::shared_ptr<T> get_reachability_info(DdNode * node) const {
        auto cached = reachability_info.find(node);

        if(cached != reachability_info.end()) {
            return cached->second;
        }
        return nullptr;
    }

    void add_reachability_info(DdNode * node, std::shared_ptr<T> info)  {
        reachability_info.emplace(node, info);
    }

};


template<typename T>
class FactorManager {
    SymVariables *vars;
    LeafFactorID factor;
    std::set<int> relevant_vars_factor;

    const bool use_cache_updates;
    const bool use_cache_heuristic;

    mutable std::unordered_map<boost::dynamic_bitset<>, Cache<T>> info_by_center_precondition;
    mutable std::unordered_map<DdNode *, std::vector<std::pair<int, int> > > cached_leaf_fact_reachability;

    std::vector<CenterPrecondition> center_preconditions;

    //For each index in center_preconditions we store a list of trs
    std::vector<std::vector<TransitionRelation>> trs_by_center_precondition;

    std::vector<std::shared_ptr<TransitionRelation>> trs_by_center_operator_with_leaf_effects;

    std::vector<BDD> leaf_precondition_by_op;
    BDD nonRelVarsCube, nonRelVarsCubeWithPrimes;

    BDD goal;
    BDD initialState;

    // The following methods use center_preconditions_checked to
    // boost efficiency.
    mutable boost::dynamic_bitset<> center_preconditions_checked;


    void check_center_preconditions(const GlobalState &center_state) const {
        for (size_t i = 0; i < center_preconditions.size(); ++i) {
            center_preconditions_checked[i] =
                    center_preconditions[i].is_center_applicable(center_state);
        }
    }
    std::map<int, std::vector<TransitionRelation>> get_transition_relations() const {
        std::map<int, std::vector<TransitionRelation> > res;
        for (size_t i = 0; i < center_preconditions_checked.size(); ++i) {
            if(center_preconditions_checked[i]) {
                for(const auto & tr : trs_by_center_precondition[i]) {
                    res[tr.getCost()].push_back(tr);
                }
            }
        }
        return res;
    }

public:
    FactorManager(SymVariables *vars, LeafFactorID factor,
            bool use_cache_updates,
            bool use_cache_heuristic);

    const BDD & get_leaf_precondition(const Operator &op) const {
        return leaf_precondition_by_op[op.get_id()];
    }

    const TransitionRelation & get_tr(const Operator &op) const {
        return *(trs_by_center_operator_with_leaf_effects[op.get_id()]);
    }

    void add_transition_relation(const CenterPrecondition &center_pre,
            const TransitionRelation &tr) {
        for(size_t i = 0; i < center_preconditions.size(); ++i) {
            if(center_pre == center_preconditions[i]) {
                trs_by_center_precondition[i].push_back(tr);
                return;
            }
        }
        center_preconditions.push_back(center_pre);
        trs_by_center_precondition.resize(center_preconditions.size());
        trs_by_center_precondition.back().push_back(tr);
        center_preconditions_checked.resize(center_preconditions.size());
    }

    const BDD & get_goal() const {
        return goal;
    }

    const BDD & get_initial_state() const {
        return initialState;
    }

    std::shared_ptr<SymStateSpaceManager> get_leaf_state_space(const SymParamsMgr &params,
            const GlobalState &center_state) const;

    std::shared_ptr<SymStateSpaceManager> get_leaf_state_space(const SymParamsMgr &params,
            const std::map<int, std::vector<TransitionRelation>> &trs) const;

    std::shared_ptr<T>
    update_prices_via_propagation(std::shared_ptr<T> predecessor,
            const GlobalState &center_state,
            const SymParamsMgr &params,
            const SymParamsSearch &searchParams);

    std::shared_ptr<T>
    update_prices_via_operator(std::shared_ptr<T> predecessor, const Operator &op);

    void populate_reached_leaf_facts(const T &info, std::function<void(int, int)> f) const;

    void populate_cost_of_leaf_facts(const T &info, std::function<void(int, int, int)> f) const;

};


std::shared_ptr<ClosedList> perform_uniform_cost_search
(std::shared_ptr<SymStateSpaceManager> mgr,
        const SymParamsSearch & searchParams,
        const std::map<int, BDD>  * prices = nullptr);

#endif

class SymDecoupledManagerOptions {
public:
#ifdef USE_CUDD
    SymParamsMgr mgrParams; //Parameters for SymStateSpaceManager configuration.
    SymParamsSearch searchParams; //Parameters to search the original state space
#endif

    //Parameters to initialize the CUDD manager
    const long cudd_init_nodes; //Number of initial nodes
    const long cudd_init_cache_size; //Initial cache size
    const long cudd_init_available_memory; //Maximum available memory (bytes)
    const bool gamer_ordering;


    const bool use_cache_updates;
    const bool use_cache_heuristic;

    SymDecoupledManagerOptions();
    SymDecoupledManagerOptions(const Options &opts);

    static void add_options_to_parser(OptionParser &parser);
};

#ifdef __GNUG__
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-parameter"
#endif

template<typename T>
#ifdef USE_CUDD
class SymDecoupledManager : public SymController {
#else
class SymDecoupledManager {
#endif

    bool use_cache_updates;
    bool use_cache_heuristic;

    OperatorCost cost_type;

#ifdef USE_CUDD
    std::vector<FactorManager<T>> factor_managers;

    std::shared_ptr<SymStateSpaceManager> get_leaf_state_space(LeafFactorID factor,
            const GlobalState &center_state) const;

    BDD get_leaf_precondition(const Operator &op, LeafFactorID factor) const;

    const BDD & get_goal(LeafFactorID factor) const;

    const BDD & get_initial_state(LeafFactorID factor) const;

    int apply_leaf_precondition(const Operator &op, LeafFactorID factor,
                std::map<int, BDD> & prices) const;
#endif

public:

    CUDD_METHOD(SymDecoupledManager(const SymDecoupledManagerOptions &opts))

    CUDD_METHOD(void initialize(OperatorCost cost_type))

    CUDD_METHOD(void get_leaf_compliant_plan(const std::vector<StateID> & center_states,
            const std::vector<OperatorID> &center_path,
            LeafFactorID factor,
            std::vector<std::vector<OperatorID> > &leaf_plans) const)

    CUDD_METHOD(bool is_applicable(const Operator &op, const std::vector<std::shared_ptr<T>> &leaf_prices) const)

    CUDD_METHOD(std::shared_ptr<T> get_initial_state_prices(LeafFactorID factor,
            const GlobalState &center_state))

    CUDD_METHOD(std::shared_ptr<T>
    update_prices_via_operator(std::shared_ptr<T> predecessor,
            LeafFactorID factor, const Operator &op))

    CUDD_METHOD(std::shared_ptr<T>
    update_prices_via_propagation(std::shared_ptr<T> predecessor,
            LeafFactorID factor, const GlobalState &center_state))

    CUDD_METHOD(void populate_reached_leaf_facts(const T &info, std::function<void(int, int)> f) const)

    CUDD_METHOD(void populate_cost_of_leaf_facts(const T &info, std::function<void(int, int, int)> f) const)

};

#ifdef __GNUG__
#pragma GCC diagnostic pop
#endif

}



#endif
