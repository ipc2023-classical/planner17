#include "sym_pricing_function.h"

#include "closed_list.h"
#include "../compliant_paths/compliant_path_graph.h"
#include "../factoring.h"
#include "solution_bound.h"
#include "uniform_cost_search.h"

using namespace std;

namespace symbolic {

#ifdef USE_CUDD
SymPricingFunction::SymPricingFunction(const SymPricingFunction *predecessor,
        shared_ptr<SymStateSpaceManager> mgr,
        const SymParamsSearch &searchParams,
        const BDD &goal,
        LeafFactorID factor) :
                goal_cost(CompliantPathGraph::INF),
                factor(factor) {

    if (g_factoring->is_fork_leaf(factor)) {
        SolutionBound sol_bound;

        UniformCostSearch search(searchParams, &sol_bound);

        const map<int, BDD> *predecessor_prices = predecessor ?
                &(predecessor->prices) :  nullptr;

        search.init(mgr, true, predecessor_prices,
                make_shared<OppositeFrontierFixed>(goal, *mgr));

        while (!search.finished () && !sol_bound.solved()) {
            if (!search.step()) {
                cerr << "Fatal error: Search truncated before finishing " << endl;
                exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
            }
        }

        auto closed = search.getClosed();
        prices = closed->getClosedList();
        reachable = closed->getClosed();

        assert(sol_bound.getLowerBound() == sol_bound.getUpperBound());

        if(sol_bound.solved() &&
                sol_bound.getUpperBound() < numeric_limits<int>::max()) {
            goal_cost = sol_bound.getUpperBound();
            if (prices.count(goal_cost)) {
                prices[goal_cost] += goal;
            } else {
                prices[goal_cost] = goal;
            }
            reachable += goal;
            pricing_function = closed->getHeuristicRealHNotClosed(goal_cost);
        } else {
            pricing_function = closed->getHeuristicRealHNotClosed();
        }

        assert(all_of(prices.begin(), prices.end(),
                [&](const pair<const int, BDD> & it) {
            return it.second <= reachable;
        }
        ));

    } else {
        UniformCostSearch search (searchParams);

        const map<int, BDD> *predecessor_prices = predecessor ?  &(predecessor->prices) : nullptr;

        search.init(mgr,  true, predecessor_prices);

        while (!search.finished ()) {
            if (!search.step()) {
                cerr << "Fatal error: Search truncated before finishing " << endl;
                exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
            }
        }

        auto closed = search.getClosed();
        prices = closed->getClosedList();
        reachable = closed->getClosed();
        pricing_function = closed->getHeuristicRealHNotClosed();

        assert(all_of(prices.begin(), prices.end(),
                [&](const pair<const int, BDD> & it) {
            return it.second <= reachable;
        }
        ));
        for (const auto & pr : prices) {
            if (!empty_intersection(pr.second, goal)) {
                goal_cost = pr.first;
                break;
            }
        }
    }
}

SymPricingFunction::SymPricingFunction(SymVariables *vars,
        const BDD &initial_state,
        const BDD &goal,
        LeafFactorID factor) :
	        reachable(initial_state),
	        goal_cost(empty_intersection(initial_state, goal) ? CompliantPathGraph::INF : 0),
	        factor(factor) {

    prices[0] = initial_state;

    pricing_function = (!initial_state).Add() * vars->getADD(numeric_limits<int>::max());

    assert(all_of(prices.begin(), prices.end(),
            [&](const pair<const int, BDD> & it) {
        return it.second <= reachable;
    }
    ));
}

SymPricingFunction::SymPricingFunction(const SymPricingFunction &info, SymVariables *vars,
        const  BDD &precondition, const BDD &goal) :
                reachable(info.reachable),
                pricing_function(info.pricing_function),
                goal_cost(CompliantPathGraph::INF),
                factor(info.factor) {

    assert(!empty_intersection(precondition, reachable));

    int inc_g = CompliantPathGraph::get_pruning_options().include_min_price_in_g() ? -1 : 0;

    reachable *= precondition;

    for(const auto &iter : info.prices) {
        BDD res = iter.second * precondition;

        if(!res.IsZero()) {
            if (inc_g == -1) {
                inc_g = iter.first;
            }
            prices[iter.first - inc_g] = res;
        }
    }

    assert(inc_g >= 0);

    assert(all_of(prices.begin(), prices.end(),
            [&](const pair<const int, BDD> & it) {
        return it.second <= reachable;
    }
    ));

    pricing_function *= precondition.Add();
    pricing_function += ((!precondition).Add() * vars->getADD(numeric_limits<int>::max()));

    assert(!CompliantPathGraph::get_pruning_options().include_min_price_in_g() ||
            vars->getADD(inc_g) == pricing_function.FindMin());
    if (inc_g > 0) {
        pricing_function -= reachable.Add() * vars->getADD(inc_g);
        g_inc_g_by += inc_g;
    }

    //TODO: Optimize this by computing the goal cost during the search
    for (const auto &pr : prices) {
        if (!empty_intersection(pr.second, goal)) {
            goal_cost = pr.first;
            break;
        }
    }

    assert((goal_cost == -1) == empty_intersection(goal, reachable));

    assert(all_of(prices.begin(), prices.end(),
            [&](const pair<const int, BDD> & it) {
        return it.second <= reachable;
    }
    ));

}

SymPricingFunction::SymPricingFunction(const SymPricingFunction &info, SymVariables *vars,
        const TransitionRelation &tr, const BDD &goal) :
                reachable(vars->zeroBDD()),
                pricing_function(vars->getADD(0)),
                goal_cost(CompliantPathGraph::INF),
                factor(info.factor) {

    int inc_g = CompliantPathGraph::get_pruning_options().include_min_price_in_g() ? -1 : 0;

    for(const auto &iter : info.prices) {
        BDD res = tr.image(iter.second);

        if(!res.IsZero()) {
            if(inc_g == -1) {
                inc_g = iter.first;
            }
            int new_cost = iter.first - inc_g;
            prices[new_cost] = res;
            reachable += res;
            pricing_function += res.Add() * vars->getADD(new_cost);
        }
    }

    assert(inc_g >= 0);

    pricing_function += ((!reachable).Add()*vars->getADD(numeric_limits<int>::max()));

    if(inc_g > 0) {
        g_inc_g_by += inc_g;
    }

    // TODO: Optimize this by computing the goal cost during the search
    for (const auto &pr : prices) {
        if (!empty_intersection(pr.second, goal)) {
            goal_cost = pr.first;
            break;
        }
    }

    assert((goal_cost == CompliantPathGraph::INF) == empty_intersection(goal, reachable));

    assert(all_of(prices.begin(), prices.end(),
            [&](const pair<const int, BDD> & it) {
        return it.second <= reachable;
    }
    ));
}

void SymPricingFunction::populate_cost_of_leaf_facts(SymVariables *vars,
        function<void(int, int, int)> f) const {

    const vector<vector<int> > &prices = vars->get_ADD_fact_prices(factor, pricing_function);

#ifndef NDEBUG
    // TODO some of these assertions fail even in the original code
    for (int var : g_leaves[factor]) {
        for(int val = 0; val < g_variable_domain[var]; ++val) {
            const BDD &fact = vars->preBDD(var, val);
            if(!empty_intersection(fact, reachable)) {
                ADD intersection  = (pricing_function*fact.Add()) +
                        (((!fact).Add())*vars->getADD(numeric_limits<int>::max()));

                int cost = Cudd_V(intersection.FindMin().getRegularNode());
                assert(cost >= 0);
                assert(cost != numeric_limits<int>::max());
                cout << prices[var][val] << " -- " << cost << endl;
                assert(prices[var][val] == cost);
            } else {
                assert(prices[var][val] == numeric_limits<int>::max());
            }
        }
    }
#endif

    for (int var : g_leaves[factor]) {
        for(int val = 0; val < g_variable_domain[var]; ++val) {
            if(prices[var][val] != numeric_limits<int>::max()) {
                f(var, val, prices[var][val]);
            }
        }
    }
}

int SymPricingFunction::get_min_price() const {
    // TODO this is really awful!
    // probably update the minimum price on the fly
    for (int price = 0; price < numeric_limits<int>::max(); ++price){
        if (prices.find(price) != prices.end()){
            return price;
        }
    }
    assert(0);
    cerr << "there always has to be a leaf state with finite price" << endl;
    exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
}

void SymPricingFunction::populate_reached_leaf_facts(SymVariables *vars,
        function<void(int, int)> f) const {
    const vector<vector<bool>> &facts = vars->get_BDD_facts(factor, reachable);

#ifndef NDEBUG
    for(size_t var = 0; var < facts.size(); ++var) {
        for(size_t val = 0; val < facts[var].size(); ++val) {
            if(g_belongs_to_factor[var] == factor) {
                assert(facts[var][val] == is_reachable(vars->preBDD(var, val)));
            }
        }
    }
#endif

    for (int var : g_leaves[factor]) {
        for(int val = 0; val < g_variable_domain[var]; ++val) {
            if(facts[var][val]) {
                f(var, val);
            }
            // Assertion for debugging: else {
            //     for (const auto & pr : prices) {
            // 	assert (empty_intersection(pr.second, fact));
            //     }
            //     ADD notFact = ((!fact).Add())* vars->getADD(numeric_limits<int>::max());
            //     assert (Cudd_V(((fact.Add()*pricing_function) + notFact).FindMin().getRegularNode())
            // 	    == numeric_limits<int>::max());
            // }
        }
    }
}

ostream& operator<< (ostream &os, const SymPricingFunction &info) {
    return os << info.goal_cost;
}

bool SymPricingFunction::dominates(const SymPricingFunction &other) const {
    return pricing_function <= other.pricing_function;
}

bool SymPricingFunction::is_reachable(const BDD &state_set) const {
    return !empty_intersection(reachable, state_set);
}
#endif

}


