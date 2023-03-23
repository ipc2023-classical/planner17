#include "additive_heuristic.h"

#include "compliant_paths/compliant_path_graph.h"
#include "compliant_paths/cpg_storage.h"
#include "state.h"
#include "operator.h"
#include "option_parser.h"
#include "plugin.h"

#include <cassert>
#include <vector>

using namespace std;

namespace additive_heuristic {
// construction and destruction
AdditiveHeuristic::AdditiveHeuristic(const Options &opts)
    : RelaxationHeuristic(opts),
      did_write_overflow_warning(false) {
    cout << "Initializing additive heuristic..." << endl;
}

void AdditiveHeuristic::write_overflow_warning() {
    if (!did_write_overflow_warning) {
        // TODO: Should have a planner-wide warning mechanism to handle
        // things like this.
        cout << "WARNING: overflow on h^add! Costs clamped to "
             << MAX_COST_VALUE << endl;
        cerr << "WARNING: overflow on h^add! Costs clamped to "
             << MAX_COST_VALUE << endl;
        did_write_overflow_warning = true;
    }
}

// heuristic computation
void AdditiveHeuristic::setup_exploration_queue() {
    queue.clear();

    for (Proposition &prop : propositions) {
        prop.cost = -1;
        prop.marked = false;
    }

    // Deal with operators and axioms without preconditions.
    for (UnaryOperator &op : unary_operators) {
        op.unsatisfied_preconditions = op.num_preconditions;
        op.cost = op.base_cost; // will be increased by precondition costs

        if (op.unsatisfied_preconditions == 0)
            enqueue_if_necessary(op.effect, op.base_cost, get_op_id(op));
    }
}

void AdditiveHeuristic::setup_exploration_queue_state(const GlobalState &state) {
    for (int var = 0; var < (int) g_variable_domain.size(); ++var) {
        if (heuristic_type == HEURISTIC_TYPE::STD ||
                g_belongs_to_factor[var] == LeafFactorID::CENTER){
            PropID init_prop = get_prop_id(var, state[var]);
            enqueue_if_necessary(init_prop, 0, NO_OP);
        }
    }
}

void AdditiveHeuristic::setup_exploration_queue_state(const vector<int> &state) {
    for (int var = 0; var < (int) g_variable_domain.size(); ++var) {
        if (heuristic_type == HEURISTIC_TYPE::STD ||
                g_belongs_to_factor[var] == LeafFactorID::CENTER){
            PropID init_prop = get_prop_id(var, state[var]);
            enqueue_if_necessary(init_prop, 0, NO_OP);
        }
    }
}

void AdditiveHeuristic::setup_exploration_queue_decoupled_leaf_states(const GlobalState &state) {
    const CompliantPathGraph *cpg = CPGStorage::storage->get_cpg(state);

    if (heuristic_type == HEURISTIC_TYPE::CENTER){
        cpg->populate_reached_leaf_facts(function<void(int, int)> ([&] (int var, int val) {
            enqueue_if_necessary(get_prop_id(var, val), 0, NO_OP);
        }));
    } else {
        cpg->populate_cost_of_leaf_facts(function<void(int, int, int)> ([&] (int var, int val, int cost) {
            enqueue_if_necessary(get_prop_id(var, val), cost, NO_OP);
            if (g_goals_per_factor[g_belongs_to_factor[var]].empty()){
                enqueue_if_necessary(get_prop_id(g_variable_domain.size(), g_belongs_to_factor[var]), cost, NO_OP);
            }
        }));
    }
}

void AdditiveHeuristic::relaxed_exploration() {
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
            increase_cost(unary_op->cost, prop_cost);
            --unary_op->unsatisfied_preconditions;
            assert(unary_op->unsatisfied_preconditions >= 0);
            if (unary_op->unsatisfied_preconditions == 0)
                enqueue_if_necessary(unary_op->effect,
                                     unary_op->cost, op_id);
        }
    }
}

void AdditiveHeuristic::mark_preferred_operators(
    const GlobalState &state, PropID goal_id) {
    Proposition *goal = get_proposition(goal_id);
    if (!goal->marked) { // Only consider each subgoal once.
        goal->marked = true;
        OpID op_id = goal->reached_by;
        if (op_id != NO_OP) { // We have not yet chained back to a start node.
            UnaryOperator *unary_op = get_operator(op_id);
            bool is_preferred = true;
            for (PropID precond : get_preconditions(op_id)) {
                mark_preferred_operators(state, precond);
                if (get_proposition(precond)->reached_by != NO_OP) {
                    is_preferred = false;
                }
            }
            int operator_no = unary_op->operator_no;
            if (is_preferred && operator_no != -1) {
                // This is not an axiom.
                const Operator &op = g_operators[operator_no];
                if (heuristic_type == HEURISTIC_TYPE::STD ||
                        op.get_affected_factor() == LeafFactorID::CENTER){
                    // don't mark leaf ops as preferred
                    assert(op.is_applicable(state));
                    set_preferred(op.get_id());
                }
            }
        }
    }
}

void AdditiveHeuristic::mark_preferred_operators(
    const vector<int> &state, PropID goal_id) {
    assert(heuristic_type == HEURISTIC_TYPE::STD);
    Proposition *goal = get_proposition(goal_id);
    if (!goal->marked) { // Only consider each subgoal once.
        goal->marked = true;
        OpID op_id = goal->reached_by;
        if (op_id != NO_OP) { // We have not yet chained back to a start node.
            UnaryOperator *unary_op = get_operator(op_id);
            bool is_preferred = true;
            for (PropID precond : get_preconditions(op_id)) {
                mark_preferred_operators(state, precond);
                if (get_proposition(precond)->reached_by != NO_OP) {
                    is_preferred = false;
                }
            }
            int operator_no = unary_op->operator_no;
            if (is_preferred && operator_no != -1) {
                // This is not an axiom.
                const Operator &op = g_operators[operator_no];
                if (heuristic_type == HEURISTIC_TYPE::STD ||
                        op.get_affected_factor() == LeafFactorID::CENTER){
                    // don't mark leaf ops as preferred
                    set_preferred(op.get_id());
                }
            }
        }
    }
}

int AdditiveHeuristic::compute_add_and_ff(const GlobalState &state) {
    setup_exploration_queue_state(state);
    relaxed_exploration();

    int total_cost = 0;
    for (PropID goal_id : goal_propositions) {
        const Proposition *goal = get_proposition(goal_id);
        int goal_cost = goal->cost;
        if (goal_cost == -1)
            return DEAD_END;
        increase_cost(total_cost, goal_cost);
    }
    return total_cost;
}

int AdditiveHeuristic::compute_add_and_ff(const vector<int> &state) {
    assert(heuristic_type == HEURISTIC_TYPE::STD);
    setup_exploration_queue_state(state);
    relaxed_exploration();

    int total_cost = 0;
    for (PropID goal_id : goal_propositions) {
        const Proposition *goal = get_proposition(goal_id);
        int goal_cost = goal->cost;
        if (goal_cost == -1)
            return DEAD_END;
        increase_cost(total_cost, goal_cost);
    }
    return total_cost;
}

int AdditiveHeuristic::compute_heuristic(const GlobalState &state) {
    setup_exploration_queue();

    if (heuristic_type != HEURISTIC_TYPE::STD){
        setup_exploration_queue_decoupled_leaf_states(state);
    }

    int h = compute_add_and_ff(state);
    if (h != DEAD_END) {
        for (PropID goal_id : goal_propositions)
            mark_preferred_operators(state, goal_id);
    }
    return h;
}

void AdditiveHeuristic::compute_heuristic_for_cegar(const vector<int> &state) {
    assert(heuristic_type == HEURISTIC_TYPE::STD);
    assert(cost_type == OperatorCost::NORMAL);
    setup_exploration_queue();
    int h = compute_add_and_ff(state);
    if (h != DEAD_END) {
        for (PropID goal_id : goal_propositions)
            mark_preferred_operators(state, goal_id);
    }
}

static shared_ptr<Heuristic> _parse(OptionParser &parser) {
    parser.document_synopsis("Additive heuristic", "");
    parser.document_language_support("action costs", "supported");
    parser.document_language_support("conditional effects", "supported");
    parser.document_language_support(
        "axioms",
        "supported (in the sense that the planner won't complain -- "
        "handling of axioms might be very stupid "
        "and even render the heuristic unsafe)");
    parser.document_property("admissible", "no");
    parser.document_property("consistent", "no");
    parser.document_property("safe", "yes for tasks without axioms");
    parser.document_property("preferred operators", "yes");

    Heuristic::add_options_to_parser(parser);
    Options opts = parser.parse();
    if (parser.dry_run())
        return nullptr;
    else
        return make_shared<AdditiveHeuristic>(opts);
}

static Plugin<Evaluator> _plugin("add", _parse);
}
