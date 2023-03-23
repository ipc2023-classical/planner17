#include "sym_pricing_function_debug.h"

using namespace std;

namespace symbolic {

#ifdef USE_CUDD

//Constructor for update step. If pricing function is null, the initial state is used
SymPricingFunctionDebug::SymPricingFunctionDebug(const SymPricingFunctionDebug *o,
        shared_ptr<SymStateSpaceManager> mgr,
        const SymParamsSearch & params,
        const BDD & goal,
        LeafFactorID factor) :
	        opt((o ? &(o->opt) : nullptr) , mgr, params, goal, factor),
	        sat((o ? &(o->sat) : nullptr), mgr, params, goal, factor),
	        factor(factor) {
    assert(!o || o->opt.reachable == o->sat.pricing_function);
    if(opt.reachable != sat.pricing_function) {
        opt.reachable.print(1, 2);
        sat.pricing_function.print(1, 2);
    }
    assert(opt.reachable == sat.pricing_function);
    assert((opt.goal_cost  == -1) == (!sat.goal_reached));
}

//Constructor for applying leaf transition
SymPricingFunctionDebug::SymPricingFunctionDebug(const SymPricingFunctionDebug &o,
        SymVariables *vars,
        const TransitionRelation &precondition, const BDD &goal) :
	        opt(o.opt, vars, precondition, goal),
	        sat(o.sat, vars, precondition, goal),
	        factor(o.factor) {

    assert(o.opt.reachable  == o.sat.pricing_function);
    assert((o.opt.goal_cost  == -1) == (!o.sat.goal_reached));

    assert(opt.reachable == sat.pricing_function);

    if((opt.goal_cost  == -1) != (!sat.goal_reached)){
        cout << opt.goal_cost << endl;
        cout << sat.goal_reached << endl;
        opt.reachable.print(1,2);
        sat.pricing_function.print(1,2);
    }
    assert((opt.goal_cost  == -1) == (!sat.goal_reached));
}

ostream& operator<< (ostream &os, const SymPricingFunctionDebug &info) {
    return os << info.opt;
}

#endif

}
