#ifndef SYMBOLIC_SYM_PRICING_FUNCTION_DEBUG_H
#define SYMBOLIC_SYM_PRICING_FUNCTION_DEBUG_H

#include "sym_pricing_function.h" 
#include "sym_pricing_function_sat.h" 

namespace symbolic {

class SymPricingFunctionDebug {
    SymPricingFunction opt;
    SymPricingFunctionSAT sat;

    LeafFactorID factor;

public:

#ifdef USE_CUDD
    // Constructor for the initial state without manager
    SymPricingFunctionDebug(SymVariables * vars, const BDD & initial_state, const BDD & goal, LeafFactorID factor) :
        opt(vars, initial_state, goal, factor),
        sat(vars, initial_state, goal, factor),
        factor(factor) {
        assert(opt.reachable == sat.pricing_function);
        assert((opt.goal_cost  == -1) == (!sat.goal_reached));
    }

    // Constructor for update step. If pricing function is null, the initial state is used
    SymPricingFunctionDebug(const SymPricingFunctionDebug *o,
            std::shared_ptr<SymStateSpaceManager> mgr,
            const SymParamsSearch &params,
            const BDD &goal,
            LeafFactorID factor);

    // Constructor for applying leaf precondition
    SymPricingFunctionDebug(const SymPricingFunctionDebug &o, SymVariables *vars,
            const BDD &precondition, const BDD &goal) :
                opt(o.opt, vars, precondition, goal),
                sat(o.sat, vars, precondition, goal),
                factor(o.factor) {
        assert(opt.reachable == sat.pricing_function);
        assert((opt.goal_cost  == -1) == (!sat.goal_reached));
    }

    // Constructor for applying leaf transition
    SymPricingFunctionDebug(const SymPricingFunctionDebug & o, SymVariables * vars,
            const TransitionRelation & precondition, const BDD & goal);
#endif


    bool dominates(const SymPricingFunctionDebug &other) const {
        assert(opt.dominates(other.opt) == sat.dominates(other.sat));
        assert((opt.goal_cost  == -1) == (!sat.goal_reached));
        return sat.dominates(other.sat);
    }

    int get_goal_cost() const {
        assert((opt.goal_cost  == -1) == (!sat.goal_reached));
        return sat.get_goal_cost();
    }

    LeafFactorID get_factor() const {
        return factor;
    }

#ifdef USE_CUDD
    void populate_cost_of_leaf_facts(SymVariables *vars,
            std::function<void(int, int, int)> f) const {
        sat.populate_cost_of_leaf_facts(vars, f);
    }

    void populate_reached_leaf_facts(SymVariables *vars,
            std::function<void(int, int)> f) const {
        sat.populate_reached_leaf_facts(vars, f);
    }

    bool is_reachable(const BDD &state_set) const {
        assert(opt.is_reachable(state_set) == sat.is_reachable(state_set));
        assert((opt.goal_cost  == -1) == (!sat.goal_reached));
        return sat.is_reachable(state_set);
    }

    DdNode * get_unique_identifier() const {
        return sat.get_unique_identifier();
    }
#endif

    friend std::ostream& operator<< (std::ostream& stream, const SymPricingFunctionDebug & info);
};

}

#endif
