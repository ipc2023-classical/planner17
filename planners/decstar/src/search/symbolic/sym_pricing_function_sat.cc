#include "sym_pricing_function_sat.h" 

#include "breadth_first_search.h"
#include "../compliant_paths/compliant_path_graph.h"
#include "../factoring.h"
#include "../globals.h"
#include "solution_bound.h"


using namespace std;

namespace symbolic {

#ifdef USE_CUDD

SymPricingFunctionSAT::
SymPricingFunctionSAT(const SymPricingFunctionSAT *predecessor,
        shared_ptr<SymStateSpaceManager> mgr,
        const SymParamsSearch & searchParams,
        const BDD &goal,
        LeafFactorID factor) :
                    goal_reached(false),
                    factor(factor) {

    if (g_factoring->is_fork_leaf(factor) && g_factoring->get_search_type() != UNSAT) {
        if(predecessor && predecessor->goal_reached){
            goal_reached = predecessor->goal_reached;
            pricing_function = predecessor->pricing_function;
            return;
        }
        SolutionBound sol_bound;
        BreadthFirstSearch search(searchParams, &sol_bound);

        const BDD *predecessor_prices = predecessor ?
                &(predecessor->pricing_function) : nullptr;

        search.init(mgr, true, predecessor_prices,
                make_shared<OppositeFrontierFixed>(goal, *mgr) );

        while (!search.finished () /*&& !sol_bound.solved()*/) {
            if (!search.step()) {
                cerr << "Fatal error: Search truncated before finishing " << endl;
                exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
            }
        }

        pricing_function = search.getClosedTotal();

        if(sol_bound.solved() || !empty_intersection(goal, pricing_function)) {
            pricing_function += goal;
            goal_reached = true;
        }
    } else {
        BreadthFirstSearch search (searchParams);

        if(predecessor) {
            search.init(mgr,  true,  &(predecessor->pricing_function));
        } else {
            search.init(mgr,  true);
        }

        while (!search.finished ()) {
            if (!search.step()) {
                cerr << "Fatal error: Search truncated before finishing " << endl;
                exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
            }
        }

        pricing_function = search.getClosedTotal();

        if(g_factoring->get_search_type() != UNSAT &&
                !empty_intersection(goal, pricing_function)) {
            goal_reached = true;
        }
    }
}

SymPricingFunctionSAT::SymPricingFunctionSAT(SymVariables *,
        const BDD &initial_state, const BDD &goal, LeafFactorID factor) :
	        pricing_function(initial_state),
	        goal_reached(!empty_intersection(initial_state, goal)),
	        factor(factor) {

}


SymPricingFunctionSAT::
SymPricingFunctionSAT(const SymPricingFunctionSAT &predecessor, SymVariables *,
        const BDD &precondition, const BDD &goal) :
        pricing_function(predecessor.pricing_function*precondition),
        goal_reached(predecessor.goal_reached),
        factor(predecessor.factor) {

    if (empty_intersection(goal, pricing_function)){
        goal_reached = false;
    }
}


SymPricingFunctionSAT::
SymPricingFunctionSAT (const SymPricingFunctionSAT &predecessor, SymVariables * ,
        const TransitionRelation & tr, const BDD & goal) :
        pricing_function(tr.image(predecessor.pricing_function)),
        goal_reached(false),
        factor(predecessor.factor) {

    if(!empty_intersection(goal, pricing_function)) {
        goal_reached = true;
    }
}


void SymPricingFunctionSAT::populate_cost_of_leaf_facts(SymVariables * vars,
        function<void(int, int, int)> f) const {

    const vector<vector<bool> > & facts = vars->get_BDD_facts(factor, pricing_function);

    for (int var : g_leaves[factor]) {
        for(int val = 0; val < g_variable_domain[var]; ++val) {
            if(facts[var][val]) {
                f(var, val, CompliantPathGraph::get_min_leaf_action_cost(factor));
            }
        }
    }

    // for (int var : g_leaves[factor]) {
    //     for(int val = 0; val < g_variable_domain[var]; ++val) {
    // 	const BDD & fact = vars->preBDD(var, val);
    // 	if(!empty_intersection(fact, pricing_function)) {
    // 	    f(var, val, g_min_action_cost_per_factor[factor]);
    // 	}
    //     }
    // }
}

void SymPricingFunctionSAT::populate_reached_leaf_facts(SymVariables *vars,
        function<void(int, int)> f) const {

    if (g_factoring->is_fork_leaf(factor) && goal_reached){
        // TODO this looks fishy
        for (const auto &goal : g_goals_per_factor[factor]) {
            f(goal.first, goal.second);
        }
        return;
    }

    const vector<vector<bool> > &facts = vars->get_BDD_facts(factor, pricing_function);

    for (int var : g_leaves[factor]) {
        for(int val = 0; val < g_variable_domain[var]; ++val) {
            if(facts[var][val]) {
                f(var, val);
            }
        }
    }

    // for (int var : g_leaves[factor]) {
    //     for(int val = 0; val < g_variable_domain[var]; ++val) {
    // 	const BDD & fact = vars->preBDD(var, val);
    // 	if(!empty_intersection(fact, pricing_function)) {
    // 	    f(var, val);
    // 	}
    //     }
    // }
}

int SymPricingFunctionSAT::get_goal_cost() const {
    if (goal_reached){
        // TODO same as is explict-state representation.. this is not actually true, might as well be 0
        return CompliantPathGraph::get_min_leaf_action_cost(factor);
    } else {
        return CompliantPathGraph::INF;
    }
}

ostream& operator<< (ostream &os, const SymPricingFunctionSAT &info) {
    return os << info.goal_reached;
}

bool SymPricingFunctionSAT::dominates(const SymPricingFunctionSAT &other) const {
    if (g_factoring->is_fork_leaf(factor) && goal_reached) {
        return true;
    }
    return (pricing_function * other.pricing_function) == other.pricing_function;
}

bool SymPricingFunctionSAT::is_reachable(const BDD &state_set) const {
    return !empty_intersection(pricing_function, state_set);
}

#endif

}
