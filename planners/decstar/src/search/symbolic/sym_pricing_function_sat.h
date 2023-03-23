#ifndef SYMBOLIC_SYM_PRICING_FUNCTION_SAT_H
#define SYMBOLIC_SYM_PRICING_FUNCTION_SAT_H

#include "cudd_method.h"
#include "sym_variables.h"

#include <functional>

#ifdef __GNUG__
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-parameter"
#endif

namespace symbolic {

class SymStateSpaceManager;
class SymParamsSearch;
class TransitionRelation;

class SymPricingFunctionSAT {
    friend class SymPricingFunctionDebug;
#ifdef USE_CUDD
    BDD pricing_function;
#endif
    bool goal_reached;
    LeafFactorID factor;

public:

#ifdef USE_CUDD
    //Constructor for the initial state without manager
    SymPricingFunctionSAT(SymVariables * vars,
            const BDD &initial_state, const BDD &goal, LeafFactorID factor);

    //Constructor for update step. If pricing function is null, the initial state is used
    SymPricingFunctionSAT(const SymPricingFunctionSAT *predecessor,
            std::shared_ptr<SymStateSpaceManager> mgr,
            const SymParamsSearch &params,
            const BDD &goal,
            LeafFactorID factor);

    //Constructor for applying leaf precondition
    SymPricingFunctionSAT (const SymPricingFunctionSAT &predecessor, SymVariables *vars,
            const BDD &precondition, const BDD &goal);

    //Constructor for applying leaf transition
    SymPricingFunctionSAT (const SymPricingFunctionSAT &o, SymVariables *vars,
            const TransitionRelation &tr, const BDD &goal);
#endif


    CUDD_METHOD(bool dominates(const SymPricingFunctionSAT &other) const)

    CUDD_METHOD(int get_goal_cost() const)

    LeafFactorID get_factor() const {
        return factor;
    }

    friend std::ostream& operator<< (std::ostream &stream, const SymPricingFunctionSAT &info);

#ifdef USE_CUDD
    bool is_reachable(const BDD &state_set) const;

    DdNode * get_unique_identifier() const {
        return pricing_function.getNode();
    }

    void populate_cost_of_leaf_facts(SymVariables *vars,
            std::function<void(int, int, int)> f) const;

    void populate_reached_leaf_facts(SymVariables *vars,
            std::function<void(int, int)> f) const;
#endif
};
}

#ifdef __GNUG__
#pragma GCC diagnostic pop
#endif

#endif
