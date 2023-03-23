#include "max_heuristic.h"

#include "compliant_paths/compliant_path_graph.h"
#include "compliant_paths/cpg_storage.h"
#include "state.h"
#include "option_parser.h"
#include "plugin.h"

#include <cassert>
#include <functional>
#include <vector>

using namespace std;

namespace max_heuristic {
/*
  TODO: At the time of this writing, this shares huge amounts of code
        with h^add, and the two should be refactored so that the
        common code is only included once, in so far as this is
        possible without sacrificing run-time. We may want to avoid
        virtual calls in the inner-most loops; maybe a templated
        strategy pattern is an option. Right now, the only differences
        to the h^add code are the use of max() instead of add() and
        the lack of preferred operator support (but we might actually
        reintroduce that if it doesn't hurt performance too much).
 */

// construction and destruction
HSPMaxHeuristic::HSPMaxHeuristic(const Options &opts)
    : RelaxationHeuristic(opts) {
    cout << "Initializing HSP max heuristic..." << endl;
}

// heuristic computation
void HSPMaxHeuristic::setup_exploration_queue() {
    queue.clear();

    for (Proposition &prop : propositions)
        prop.cost = -1;

    // Deal with operators and axioms without preconditions.
    for (UnaryOperator &op : unary_operators) {
        op.unsatisfied_preconditions = op.num_preconditions;
        op.cost = op.base_cost; // will be increased by precondition costs

        if (op.unsatisfied_preconditions == 0)
            enqueue_if_necessary(op.effect, op.base_cost);
    }
}

void HSPMaxHeuristic::setup_exploration_queue_state(const GlobalState &state) {
    for (int var = 0; var < (int) g_variable_domain.size(); ++var) {
        if (heuristic_type == HEURISTIC_TYPE::STD ||
                g_belongs_to_factor[var] == LeafFactorID::CENTER){
            PropID init_prop = get_prop_id(var, state[var]);
            enqueue_if_necessary(init_prop, 0);
        }
    }
}

void HSPMaxHeuristic::relaxed_exploration() {
    int unsolved_goals = goal_propositions.size();
    while (!queue.empty()) {
        pair<int, PropID> top_pair = queue.pop();
        int distance = top_pair.first;
        PropID prop_id = top_pair.second;
        Proposition *prop = get_proposition(prop_id);
        int prop_cost = prop->cost;
        assert(prop_cost >= 0);
        assert(prop_cost <= distance);
        if (prop_cost < distance)
            continue;
        if (prop->is_goal && --unsolved_goals == 0)
            return;
        for (OpID op_id : precondition_of_pool.get_slice(
                 prop->precondition_of, prop->num_precondition_occurences)) {
            UnaryOperator *unary_op = get_operator(op_id);
            unary_op->cost = max(unary_op->cost,
                                 unary_op->base_cost + prop_cost);
            --unary_op->unsatisfied_preconditions;
            assert(unary_op->unsatisfied_preconditions >= 0);
            if (unary_op->unsatisfied_preconditions == 0)
                enqueue_if_necessary(unary_op->effect, unary_op->cost);
        }
    }
}

int HSPMaxHeuristic::compute_heuristic(const GlobalState &state) {
    setup_exploration_queue();

    if (heuristic_type != HEURISTIC_TYPE::STD){
        const CompliantPathGraph *cpg = CPGStorage::storage->get_cpg(state);

        if (heuristic_type == HEURISTIC_TYPE::CENTER){
            cpg->populate_reached_leaf_facts(function<void(int, int)> ([&] (int var, int val) {
                enqueue_if_necessary(get_prop_id(var, val), 0);
            }));
        } else {
            cpg->populate_cost_of_leaf_facts(function<void(int, int, int)> ([&] (int var, int val, int cost) {
                enqueue_if_necessary(get_prop_id(var, val), cost);
                if (g_goals_per_factor[g_belongs_to_factor[var]].empty()){
                    enqueue_if_necessary(get_prop_id(g_variable_domain.size(), g_belongs_to_factor[var]), cost);
                }
            }));
        }
    }

    setup_exploration_queue_state(state);
    relaxed_exploration();

    int total_cost = 0;
    for (PropID goal_id : goal_propositions) {
        const Proposition *goal = get_proposition(goal_id);
        int goal_cost = goal->cost;
        if (goal_cost == -1)
            return DEAD_END;
        total_cost = max(total_cost, goal_cost);
    }
    return total_cost;
}

static shared_ptr<Heuristic> _parse(OptionParser &parser) {
    parser.document_synopsis("Max heuristic", "");
    parser.document_language_support("action costs", "supported");
    parser.document_language_support("conditional effects", "supported");
    parser.document_language_support(
        "axioms",
        "supported (in the sense that the planner won't complain -- "
        "handling of axioms might be very stupid "
        "and even render the heuristic unsafe)");
    parser.document_property("admissible", "yes for tasks without axioms");
    parser.document_property("consistent", "yes for tasks without axioms");
    parser.document_property("safe", "yes for tasks without axioms");
    parser.document_property("preferred operators", "no");

    Heuristic::add_options_to_parser(parser);
    Options opts = parser.parse();
    if (parser.dry_run())
        return nullptr;
    else
        return make_shared<HSPMaxHeuristic>(opts);
}


static Plugin<Evaluator> _plugin("hmax", _parse);
}
