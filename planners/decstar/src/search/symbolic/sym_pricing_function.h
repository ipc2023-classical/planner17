#ifndef SYMBOLIC_SYM_PRICING_FUNCTION_H
#define SYMBOLIC_SYM_PRICING_FUNCTION_H

#include "cudd_method.h"
#include "sym_variables.h"

#include <functional>


namespace symbolic {

class SymStateSpaceManager;
class SymParamsSearch;
class TransitionRelation;

#ifdef __GNUG__
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-parameter"
#endif

class SymPricingFunction {
    friend class SymPricingFunctionDebug;

#ifdef USE_CUDD
    std::map<int, BDD> prices;
    BDD reachable;
    ADD pricing_function;
#endif

    int goal_cost;
    LeafFactorID factor;

public:

#ifdef USE_CUDD
    // Constructor for the initial state without manager
    SymPricingFunction(SymVariables *vars,
            const BDD &initial_state, const BDD &goal, LeafFactorID factor);

    // Constructor for update step. If pricing function is null, the initial state is used
    SymPricingFunction(const SymPricingFunction *o,
            std::shared_ptr<SymStateSpaceManager> mgr,
            const SymParamsSearch &params,
            const BDD &goal,
            LeafFactorID factor);

    // Constructor for applying leaf precondition
    SymPricingFunction(const SymPricingFunction &o, SymVariables *vars,
            const BDD &precondition, const BDD &goal);

    // Constructor for applying leaf transition
    SymPricingFunction(const SymPricingFunction &o, SymVariables *vars,
            const TransitionRelation &precondition, const BDD &goal);
#endif

    CUDD_METHOD(bool dominates(const SymPricingFunction &other) const)

    CUDD_METHOD(int get_min_price() const)

    CUDD_METHOD(friend std::ostream& operator<<(std::ostream &stream, const SymPricingFunction &info))

    int get_goal_cost() const {
        return goal_cost;
    }

    LeafFactorID get_factor() const {
        return factor;
    }

#ifdef USE_CUDD
    bool is_reachable(const BDD &state_set) const;

    const ADD * get_pricing_function() const {
        return &pricing_function;
    }

    void populate_cost_of_leaf_facts(SymVariables *vars,
            std::function<void(int, int, int)> f) const;

    void populate_reached_leaf_facts(SymVariables *vars,
            std::function<void(int, int)> f) const;

    DdNode * get_unique_identifier() const {
        return pricing_function.getNode();
    }
#endif

};

#ifdef __GNUG__
#pragma GCC diagnostic pop
#endif

}

#endif
