#include "explicit_abstraction.h"

#include "types.h"
#include "transition_cost_functions/abstract_transition_cost_function.h"
#include "transition_cost_functions/remaining_transition_cost_function.h"
#include "transition_cost_functions/saturated_transition_cost_function.h"
#include "task_info.h"
#include "bdd_builder.h"
#include "utils.h"

#include "../utils/collections.h"
#include "../utils/logging.h"
#include "../utils/strings.h"

#include <unordered_set>

using namespace std;

namespace cost_saturation {
static void dijkstra_search(
    const vector<vector<Successor>> &graph,
    const vector<int> &costs,
    priority_queues::AdaptiveQueue<int> &queue,
    vector<int> &distances) {
    assert(all_of(costs.begin(), costs.end(), [](int c) {return c >= 0;}));
    while (!queue.empty()) {
        pair<int, int> top_pair = queue.pop();
        int distance = top_pair.first;
        int state = top_pair.second;
        int state_distance = distances[state];
        assert(state_distance <= distance);
        if (state_distance < distance) {
            continue;
        }
        for (const Successor &transition : graph[state]) {
            int successor = transition.state;
            int op = transition.op;
            assert(utils::in_bounds(op, costs));
            int cost = costs[op];
            assert(cost >= 0);
            int successor_distance = (cost == INF) ? INF : state_distance + cost;
            assert(successor_distance >= 0);
            if (distances[successor] > successor_distance) {
                distances[successor] = successor_distance;
                queue.push(successor_distance, successor);
            }
        }
    }
}


// ____________________________________________________________________________
static void dijkstra_search_tcf(
  const Abstraction &abstraction,
  const vector<vector<Successor>> &graph,
  const RemainingTransitionCostFunction &remaining_tcf,
  AbstractTransitionCostFunction &atcf,
  priority_queues::AdaptiveQueue<int> &queue,
  vector<int> &distances) {
    vector<int> &sd_costs = atcf.get_sd_costs();
    fill(sd_costs.begin(), sd_costs.end(), 0);
    while (!queue.empty()) {
        pair<int, int> top_pair = queue.pop();
        int distance = top_pair.first;
        int state = top_pair.second;
        int state_distance = distances[state];
        assert(state_distance <= distance);
        if (distance > state_distance) {
            continue;
        }
        // mark the state after popping it from the queue
        for (const Successor &transition : graph[state]) {
            assert(utils::in_bounds(transition.state, distances));
            assert(utils::in_bounds(state, distances));
            int successor = transition.state;
            int required = distances[successor] - distances[state];
            int cost = 0;
            int op_id = transition.op;
            if (required > 0) {
                cost = remaining_tcf.determine_remaining_costs(op_id);
                if (cost < required) {
                    cost = remaining_tcf.determine_remaining_costs(op_id, abstraction.make_bdd_and_cache(Transition(transition.id, op_id, successor, state)), required);
                }
            }
            assert(cost >= 0);
            sd_costs[transition.id] = cost;
            int successor_distance = (cost == INF) ? INF : state_distance + cost;
            assert(successor_distance >= 0);
            if (distances[successor] > successor_distance) {
                distances[successor] = successor_distance;
                queue.push(successor_distance, successor);
            }
        }
    }
}


ostream &operator<<(ostream &os, const Successor &successor) {
    os << "(" << successor.op << ", " << successor.state << ")";
    return os;
}


ExplicitAbstraction::ExplicitAbstraction(
    shared_ptr<TaskInfo> task_info,
    shared_ptr<BddBuilder> bdd_builder,
    unique_ptr<AbstractionFunction> abstraction_function,
    int num_transitions,
    int num_states,
    int init_state_id,
    unordered_set<int> &&goal_states,
    vector<std::vector<Successor>> &&backward_graph,
    vector<int> &&num_transitions_by_operator,
    vector<bool> &&has_loop,
    vector<bool> &&has_outgoing)
    : Abstraction(task_info, bdd_builder, move(abstraction_function), num_transitions, num_states, init_state_id, move(goal_states)),
      backward_graph(move(backward_graph)),
      num_transitions_by_operator(move(num_transitions_by_operator)),
      has_loop(move(has_loop)),
      has_outgoing(move(has_outgoing)) {
#ifndef NDEBUG
    for (int target = 0; target < get_num_states(); ++target) {
        // Check that no transition is stored multiple times.
        vector<Successor> copied_transitions = this->backward_graph[target];
        sort(copied_transitions.begin(), copied_transitions.end());
        assert(utils::is_sorted_unique(copied_transitions));
        // Check that we don't store self-loops.
        assert(all_of(copied_transitions.begin(), copied_transitions.end(),
                      [target](const Successor &succ) {return succ.state != target;}));
    }
#endif
}

AbstractTransitionCostFunction ExplicitAbstraction::get_default_saturated_cost_function() const {
    return AbstractTransitionCostFunction(get_num_operators(), Abstraction::get_num_transitions());
}

vector<int> ExplicitAbstraction::compute_goal_distances(const vector<int> &costs) const {
    vector<int> goal_distances(get_num_states(), INF);
    queue.clear();
    for (int goal_state : goal_states) {
        goal_distances[goal_state] = 0;
        queue.push(0, goal_state);
    }
    dijkstra_search(backward_graph, costs, queue, goal_distances);
    return goal_distances;
}

std::vector<int> ExplicitAbstraction::compute_goal_distances(
    const RemainingTransitionCostFunction &sdac,
    AbstractTransitionCostFunction &tcf) const {
    vector<int> goal_distances(get_num_states(), INF);
    queue.clear();
    for (int goal_state : goal_states) {
        goal_distances[goal_state] = 0;
        queue.push(0, goal_state);
    }
    dijkstra_search_tcf(*this, backward_graph, sdac, tcf, queue, goal_distances);
    return goal_distances;
}

vector<int> ExplicitAbstraction::compute_saturated_costs(
    const vector<int> &h_values) const {
    int num_operators = get_num_operators();
    vector<int> saturated_costs(num_operators, -INF);

    /* To prevent negative cost cycles we ensure that all operators
       inducing self-loops have non-negative costs. */
    for (int op_id = 0; op_id < num_operators; ++op_id) {
        if (has_loop[op_id]) {
            saturated_costs[op_id] = 0;
        }
    }

    int num_states = backward_graph.size();
    for (int target = 0; target < num_states; ++target) {
        assert(utils::in_bounds(target, h_values));
        int target_h = h_values[target];
        if (target_h == INF) {
            continue;
        }

        for (const Successor &transition : backward_graph[target]) {
            int op_id = transition.op;
            int src = transition.state;
            assert(utils::in_bounds(src, h_values));
            int src_h = h_values[src];
            if (src_h == INF) {
                continue;
            }

            const int needed = src_h - target_h;
            saturated_costs[op_id] = max(saturated_costs[op_id], needed);
        }
    }
    return saturated_costs;
}

// ____________________________________________________________________________
void ExplicitAbstraction::compute_saturated_costs(
    const vector<int> &h_values,
    AbstractTransitionCostFunction &stcf) const {
    vector<int> &sd_costs = stcf.get_sd_costs();
    vector<bool> &si = stcf.get_si();
    vector<int> &si_costs = stcf.get_si_costs();
    fill(sd_costs.begin(), sd_costs.end(), -INF);
    // Initially: For each operator holds that stcf does not deviate from socf
    fill(si.begin(), si.end(), true);
    fill(si_costs.begin(), si_costs.end(), -INF);
    for (int target = 0; target < static_cast<int>(backward_graph.size()); ++target) {
        assert(utils::in_bounds(target, h_values));
        int target_h = h_values[target];
        if (target_h == INF || target_h == -INF) {
            continue;
        }
        for (const Successor &transition : backward_graph[target]) {
            int src = transition.state;
            assert(utils::in_bounds(src, h_values));
            int src_h = h_values[src];
            if (src_h == INF || src_h == -INF) {
                continue;
            }
            int op_id = transition.op;
            int needed = src_h - target_h;
            // stcf deviates from socf
            if (si[op_id] &&
                needed != si_costs[op_id] &&
                si_costs[op_id] != -INF) {
                si[op_id] = false;
            }
            sd_costs[transition.id] = needed;
            si_costs[op_id] = max(needed, si_costs[op_id]);
        }
    }
    for (int op_id = 0; op_id < get_num_operators(); ++op_id) {
        if (operator_induces_self_loop(op_id)) {
            // stcf deviates from socf:
            // We require si_costs[op_id] != -INF because only in this specific case
            // we have to iterate over all transitions with label op_id
            if (si_costs[op_id] != 0 && si_costs[op_id] != -INF) {
                si[op_id] = false;
            }
            /* To prevent negative cost cycles we ensure that all operators
               inducing self-loops have non-negative costs. */
            si_costs[op_id] = max(0, si_costs[op_id]);
        }
    }
}

void ExplicitAbstraction::reduce_remaining_costs_transitions(
    const AbstractTransitionCostFunction &satcf,
    RemainingTransitionCostFunction& remaining_tcf) const {
    int num_operators = task_info->get_num_operators();
    const vector<bool> &si = satcf.get_si();
    const vector<int> &sd_costs = satcf.get_sd_costs();
    /* 1. Compute saturated transition cost function. */
    SaturatedTransitionCostFunction stcf(num_operators, StateCostFunction<unordered_map<int, BDD>>(bdd_builder));
    Abstraction::for_each_transition(si,
        [&](const Transition &transition) {
            int saturated = sd_costs[transition.id];
            // we handle negative infinities separately.
            if (saturated == -INF || saturated == 0 || saturated == INF)
                return;

            remaining_tcf.inc_subtractions();

            const BDD& transition_bdd = make_bdd_and_cache(transition);
            assert(transition_bdd != bdd_builder->make_zero());

            stcf[transition.op].insert(saturated, transition_bdd);
        }
    );

    /* 2. Subtract saturated transition cost function.
    */
    TransitionCostFunction new_remaining_tcf(num_operators, StateCostFunction<map<int, BDD>>(bdd_builder));
    TransitionCostFunction &tcf = remaining_tcf.get_remaining_tcf();
    for (int op_id = 0; op_id < num_operators; ++op_id) {
        if (si[op_id]) {
            // steal buckets from old remaining cost function.
            new_remaining_tcf[op_id] = move(tcf[op_id]);
        } else {
            // move states of changed cost values
            for (auto &remaining : tcf[op_id]) {
                for (auto &saturated : stcf[op_id]) { // swap iterations?
                    if (bdd_builder->intersect(remaining.second, saturated.second)) {
                        int new_cost_value = left_subtraction(remaining.first, saturated.first);
                        assert(new_cost_value >= 0);
                        new_remaining_tcf[op_id].insert(new_cost_value, remaining.second * saturated.second);
                        remaining.second *= !saturated.second;  // can become empty set
                    }
                }
            }
            // move states of unchanged cost values
            for (auto &remaining : tcf[op_id]) {
                if (remaining.second == bdd_builder->make_zero()) {
                    continue;
                }
                new_remaining_tcf[op_id].insert(remaining.first, remaining.second);
            }
        }
        assert(new_remaining_tcf[op_id].verify_completeness());
    }
    tcf = move(new_remaining_tcf);
}

int ExplicitAbstraction::get_num_transitions(int op_id) const {
    return num_transitions_by_operator[op_id];
}

bool ExplicitAbstraction::operator_is_active(int op_id) const {
    return has_outgoing[op_id];
}

bool ExplicitAbstraction::operator_induces_self_loop(int op_id) const {
    return has_loop[op_id];
}

void ExplicitAbstraction::for_each_transition(const TransitionCallback &callback) const {
    int num_states = get_num_states();
    for (int target = 0; target < num_states; ++target) {
        for (const Successor &transition : backward_graph[target]) {
            callback(Transition(transition.id, transition.op, transition.state, target));
        }
    }
}

const unordered_set<int> &ExplicitAbstraction::get_goal_states() const {
    return goal_states;
}

void ExplicitAbstraction::dump() const {
    int num_states = get_num_states();

    cout << "States: " << num_states << endl;
    cout << "Goal states: " << goal_states.size() << endl;
    cout << "Operators inducing state-changing transitions: "
         << count(has_outgoing.begin(), has_outgoing.end(), true) << endl;
    cout << "Operators inducing self-loops: "
         << count(has_loop.begin(), has_loop.end(), true) << endl;

    vector<bool> is_goal(num_states, false);
    for (int goal : goal_states) {
        is_goal[goal] = true;
    }

    cout << "digraph transition_system";
    cout << " {" << endl;
    for (int i = 0; i < num_states; ++i) {
        cout << "    node [shape = " << (is_goal[i] ? "doublecircle" : "circle")
             << "] " << i << ";" << endl;
    }
    for (int target = 0; target < num_states; ++target) {
        unordered_map<int, vector<int>> parallel_transitions;
        for (const Successor &succ : backward_graph[target]) {
            int src = succ.state;
            parallel_transitions[src].push_back(succ.op);
        }
        for (const auto &pair : parallel_transitions) {
            int src = pair.first;
            const vector<int> &operators = pair.second;
            cout << "    " << src << " -> " << target
                 << " [label = \"" << utils::join(operators, "_") << "\"];" << endl;
        }
    }
    cout << "}" << endl;
}
}
