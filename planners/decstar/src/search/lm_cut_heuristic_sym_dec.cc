#include "lm_cut_heuristic_sym_dec.h"

#include "compliant_paths/cpg_storage.h"
#include "compliant_paths/cudd_cpg.h"
#include "globals.h"
#include "operator.h"
#include "option_parser.h"
#include "per_state_information.h"
#include "plugin.h"
#include "state.h"
#include "symbolic/sym_decoupled_manager.h"

#include <cassert>
#include <cstdlib>
#include <iostream>
#include <limits>
#include <vector>

using namespace std;
using namespace symbolic;

Storage<CuddCPG<SymPricingFunction>> * LandmarkCutHeuristicSymbolic::cpg_storage;


// construction and destruction
LandmarkCutHeuristicSymbolic::LandmarkCutHeuristicSymbolic(const Options &opts)
: LandmarkCutHeuristic(opts) {
}

// initialization
void LandmarkCutHeuristicSymbolic::initialize() {
#ifdef USE_CUDD
    sym_vars = CuddCPG<SymPricingFunction>::sym_manager->getVars();

    cpg_storage = CuddCPG<SymPricingFunction>::cpg_storage;

    assert(sym_vars);
#else
    cerr << "Need to compile FD with Cudd support to run symbolic decoupled LMcut." << endl;
    exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
#endif

    assert(g_factoring);
    assert(heuristic_type == HEURISTIC_TYPE::STAR);

    cout << "Initializing symbolic landmark cut heuristic for star decoupled search..." << endl;

    ::verify_no_axioms_no_conditional_effects();

    // Build propositions.
    assert(num_propositions == 2);
    propositions.resize(g_variable_domain.size());
    for (size_t var = 0; var < g_variable_domain.size(); ++var) {
        for (int value = 0; value < g_variable_domain[var]; ++value){
            propositions[var].push_back(RelaxedProposition(var, value));
        }
        num_propositions += g_variable_domain[var];
    }

    // Build relaxed operators for operators and axioms.
    for (size_t i = 0; i < g_operators.size(); ++i){
        if(!g_operators[i].is_dead()){
            build_relaxed_operator(g_operators[i]);
        }
    }

    // Build artificial goal proposition and operator.
    vector<RelaxedProposition *> goal_op_pre, goal_op_eff;
    if (g_factoring){
        // this is to keep the goal variable order

        vector<pair<int, int> > goal(g_variable_domain.size(), pair<int, int>(-1, -1));
        for (size_t i = 0; i < g_goal.size(); ++i) {
            goal[g_goal[i].first] = g_goal[i];
        }
        for (size_t i = 0; i < g_leaves.size(); ++i){
            for (size_t j = 0; j < g_goals_per_factor[i].size(); ++j){
                goal[g_goals_per_factor[i][j].first] = g_goals_per_factor[i][j];
            }
        }
        for (size_t i = 0; i < goal.size(); ++i) {
            int var = goal[i].first;
            if (var != -1){
                int val = goal[i].second;
                RelaxedProposition *goal_prop = &propositions[var][val];
                goal_op_pre.push_back(goal_prop);
            }
        }
    } else {
        for (size_t i = 0; i < g_goal.size(); ++i) {
            int var = g_goal[i].first, val = g_goal[i].second;
            RelaxedProposition *goal_prop = &propositions[var][val];
            goal_op_pre.push_back(goal_prop);
        }
    }
    goal_op_eff.push_back(&artificial_goal);
    add_relaxed_operator(goal_op_pre, goal_op_eff, 0, 0);


    // Cross-reference relaxed operators.
    for (size_t i = 0; i < relaxed_operators.size(); ++i) {
        RelaxedOperator *op = &relaxed_operators[i];
        for (size_t j = 0; j < op->precondition.size(); ++j){
            op->precondition[j]->precondition_of.push_back(op);
        }
        for (size_t j = 0; j < op->effects.size(); ++j){
            op->effects[j]->effect_of.push_back(op);
        }
    }

    number_center_effs.resize(propositions.size());
    for (size_t i = 0; i < propositions.size(); ++i){
        number_center_effs[i].reserve(propositions[i].size());
        for (size_t j = 0; j < propositions[i].size(); ++j){
            size_t num_eff = propositions[i][j].effect_of.size();
            number_center_effs[i].push_back(num_eff);
        }
    }
    num_art_center_pre_pre = artificial_precondition.precondition_of.size();
    num_art_center_goal_eff = artificial_goal.effect_of.size();

    assert(relaxed_leaf_operators.empty());
    relaxed_leaf_operators.resize(g_variable_domain.size());

    vector<RelaxedProposition*> precondition(1, &artificial_precondition);

    leaf_facts_price.resize(g_variable_domain.size());
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        for (auto var : g_leaves[factor]){
            leaf_facts_price[var].resize(g_variable_domain[var], 0);
            for (int val = 0; val < g_variable_domain[var]; ++val){
                vector<RelaxedProposition*> effects(1, &propositions[var][val]);
                relaxed_leaf_operators[var].
                push_back(RelaxedOperator(precondition, effects, nullptr, 0));
            }
        }
    }
}

#ifdef USE_CUDD
void LandmarkCutHeuristicSymbolic::update_leaf_prices(LeafFactorID factor, ADD pricing_function, bool init) {
    if(init) {
        for (int var : g_leaves[factor]){
            for (int val = 0; val < g_variable_domain[var]; ++val){
                leaf_facts_price[var][val] = numeric_limits<int>::max();
            }
        }
    }

#ifndef NDEBUG
    vector<vector<int>> old_leaf_facts_price = leaf_facts_price;
#endif
    sym_vars->get_ADD_fact_prices(factor, pricing_function, leaf_facts_price);


#ifndef NDEBUG
    for (auto var : g_leaves[factor]){
        for (int val = 0; val < g_variable_domain[var]; ++val){
            if(init || old_leaf_facts_price [var][val] < numeric_limits<int>::max()) {
                BDD fact = sym_vars->preBDD(var, val);

                ADD intersection  = (pricing_function*fact.Add()) +
                        (((!fact).Add())*sym_vars->getADD(numeric_limits<int>::max()));

                int new_val = Cudd_V(intersection.FindMin().getRegularNode());

                assert(leaf_facts_price [var][val] == new_val);
            } else if (!init) {
                  // TODO assert fails always
//                assert(leaf_facts_price [var][val] == numeric_limits<int>::max());
            }
        }
    }

#endif

    // for (auto var : g_leaves[factor]){
    //  for (int val = 0; val < g_variable_domain[var]; ++val){
    //      if(init || leaf_facts_price [var][val] < numeric_limits<int>::max()) {
    //      BDD fact = sym_manager->preBDD(var, val);

    //      ADD intersection  = (pricing_function*fact.Add()) +
    //          (((!fact).Add())*sym_manager->getADD(numeric_limits<int>::max()));

    //      int new_val = Cudd_V(intersection.FindMin().getRegularNode());

    //      assert(new_val >= 0);
    //      assert(init || new_val <= leaf_facts_price [var][val]);

    //      leaf_facts_price [var][val] = new_val;
    //      }
    //  }
    // }
}
#endif

int LandmarkCutHeuristicSymbolic::compute_heuristic(const GlobalState &state) {
#ifdef USE_CUDD
    const CuddCPG<SymPricingFunction> *cpg = static_cast<const CuddCPG<SymPricingFunction>*>(cpg_storage->get_cpg(state));
    vector<ADD> prices_factor;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        prices_factor.push_back(*cpg->sym_leaf_info[factor]->get_pricing_function());
    }
#endif

    dereference_ops();

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor) {
#ifdef USE_CUDD
        update_leaf_prices(factor, prices_factor[factor], true);
#endif

        for (int var : g_leaves[factor]){
            for (int val = 0; val < g_variable_domain[var]; ++val){
                RelaxedOperator *op = &relaxed_leaf_operators[var][val];
                op->base_cost = leaf_facts_price[var][val];
                op->cost = op->base_cost * COST_MULTIPLIER;

                if(leaf_facts_price [var][val] != numeric_limits<int>::max()) {

                    assert(val < g_variable_domain[var]);
                    assert(op->precondition.size() == 1);
                    assert(op->effects.size() == 1);
                    assert(find(op->precondition[0]->precondition_of.begin(),
                            op->precondition[0]->precondition_of.end(),
                            op) == op->precondition[0]->precondition_of.end());

                    assert(find(op->effects[0]->effect_of.begin(),
                            op->effects[0]->effect_of.end(),
                            op) == op->effects[0]->effect_of.end());

                    op->precondition[0]->precondition_of.push_back(op);
                    op->effects[0]->effect_of.push_back(op);

                    //cout << op->effects[0]->var << " " << op->effects[0]->value << ": " << op->cost << "\n";
                }
            }
        }
    }

    //cout << endl;

    for (size_t i = 0; i < relaxed_operators.size(); ++i) {
        RelaxedOperator &op = relaxed_operators[i];
        op.cost = op.base_cost * COST_MULTIPLIER;
    }

    //cout << "*" << flush;
    int total_cost = 0;

    // The following two variables could be declared inside the loop
    // ("second_exploration_queue" even inside second_exploration),
    // but having them here saves reallocations and hence provides a
    // measurable speed boost.
    vector<RelaxedOperator *> cut;
    vector<RelaxedProposition *> second_exploration_queue;
    first_exploration(state);
    // validate_h_max();  // too expensive to use even in regular debug mode
    if (artificial_goal.status == UNREACHED) {
        return DEAD_END;
    }

    while (artificial_goal.h_max_cost != 0) {
        vector<vector<pair<int, int> >>  leaf_facts_in_cut (g_leaves.size());
        //cout << "h_max = " << artificial_goal.h_max_cost << "..." << endl;
        //cout << "total_cost = " << total_cost << "..." << endl;
        mark_goal_plateau(&artificial_goal);
        assert(cut.empty());
        second_exploration(state, second_exploration_queue, cut);
        assert(!cut.empty());
        int cut_cost = numeric_limits<int>::max();
        for (size_t i = 0; i < cut.size(); ++i) {
            assert (0 <= cut[i]->cost &&
                    cut[i]->cost < numeric_limits<int>::max());
            cut_cost = min(cut_cost, cut[i]->cost);
            if (COST_MULTIPLIER > 1) {
                /* We're using this "if" here because COST_MULTIPLIER
                   is currently a global constant and usually 1, which
                   allows the optimizer to get rid of this additional
                   minimization (which is always correct, but not
                   necessary if COST_MULTIPLIER == 1.

                   If COST_MULTIPLIER turns into an option, this code
                   should be changed. I would assume that the savings
                   by the "if" are negligible anyway, but this should
                   be tested.

                   The whole cut cost computation could also be made
                   more efficient in the unit-cost case, where all
                   cuts have cost 1 and the cost decrement could be
                   moved directly to the place where the actions for
                   the cut are collected; indeed, we would not need to
                   collect the cut in a vector at all. But again, I
                   doubt this would have a huge impact, and it would
                   only be applicable in the unit-cost (or zero- and
                   unit-cost) case.
                 */
                cut_cost = min(cut_cost, cut[i]->base_cost);
            }
        }

        for (size_t i = 0; i < cut.size(); ++i) {
            if (cut[i]->op != nullptr) {
                cut[i]->cost -= cut_cost;
            } else {
                assert(cut[i]->precondition.size() == 1 && cut[i]->effects.size() == 1);
                const auto &eff = cut[i]->effects[0];
                assert(eff->var >= 0);
                // update the cost of this fact in the BDDs
                leaf_facts_in_cut[g_belongs_to_factor[eff->var]].push_back(make_pair(eff->var, eff->val));
            }
        }

        // update cost of facts in the pricing functions
        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor) {
            if(leaf_facts_in_cut[factor].empty()) {
                continue;
            }

#ifdef USE_CUDD
            BDD cutBDD = sym_vars->zeroBDD();
            for (const auto &fact : leaf_facts_in_cut[factor]) {
                cutBDD += sym_vars->preBDD(fact.first, fact.second);
            }
            ADD cutADD = cutBDD.Add() * sym_vars->getADD(cut_cost);
            prices_factor[factor] =
                    (prices_factor[factor] - cutADD).Maximum(sym_vars->getADD(0));

            update_leaf_prices(factor, prices_factor[factor], false);
#endif

            for (int var : g_leaves[factor]){
                for (int val = 0; val < g_variable_domain[var]; ++val){
                    assert(leaf_facts_price[var][val] <= relaxed_leaf_operators[var][val].base_cost);
                    assert(leaf_facts_price[var][val] >= 0);

                    //if(leaf_facts_price [var][val] < relaxed_leaf_operators[var][val]->cost) {
                    relaxed_leaf_operators[var][val].cost = leaf_facts_price[var][val];
                    //}
                }
            }
        }

        //cout << "{" << cut_cost << "}" << flush;
        total_cost += cut_cost;

        first_exploration_incremental(cut);
        // validate_h_max();  // too expensive to use even in regular debug mode
        // TODO: Need better name for all explorations; e.g. this could
        //       be "recompute_h_max"; second_exploration could be
        //       "mark_zones" or whatever.
        cut.clear();

        // TODO: Make this more efficient. For example, we can use
        //       a round-dependent counter for GOAL_ZONE and BEFORE_GOAL_ZONE,
        //       or something based on total_cost, in which case we don't
        //       need a per-round reinitialization.
        for (size_t var = 0; var < propositions.size(); ++var) {
            for (size_t value = 0; value < propositions[var].size(); ++value) {
                RelaxedProposition &prop = propositions[var][value];
                if (prop.status == GOAL_ZONE || prop.status == BEFORE_GOAL_ZONE)
                    prop.status = REACHED;
            }
        }
        artificial_goal.status = REACHED;
        artificial_precondition.status = REACHED;
    }
    //cout << "[" << total_cost << "]" << flush;
    //cout << "**************************" << endl;
    return (total_cost + COST_MULTIPLIER - 1) / COST_MULTIPLIER;
}

/* TODO:
   It looks like the change in r3638 reduced the quality of the heuristic
   a bit (at least a preliminary glance at Elevators-03 suggests that).
   The only arbitrary aspect is the tie-breaking policy in choosing h_max
   supporters, so maybe that is adversely affected by the incremental
   procedure? In that case, maybe we should play around with this a bit,
   e.g. use a different tie-breaking rule in every round to spread out the
   values a bit.
 */

static shared_ptr<Heuristic> _parse(OptionParser &parser) {
    parser.document_synopsis("Landmark-cut heuristic", "");
    parser.document_language_support("action costs", "supported");
    parser.document_language_support("conditional effects", "not supported");
    parser.document_language_support("axioms", "not supported");
    parser.document_property("admissible", "yes");
    parser.document_property("consistent", "no");
    parser.document_property("safe", "yes");
    parser.document_property("preferred operators", "no");

    Heuristic::add_options_to_parser(parser);
    Options opts = parser.parse();
    if (parser.dry_run())
        return 0;
    else
        return make_shared<LandmarkCutHeuristicSymbolic>(opts);
}


static Plugin<Evaluator> _plugin("lmcut_sym_dec", _parse);
