#include "projection.h"

#include "bdd_builder.h"
#include "transition_cost_functions/abstract_transition_cost_function.h"
#include "transition_cost_functions/remaining_transition_cost_function.h"
#include "transition_cost_functions/saturated_transition_cost_function.h"
#include "task_info.h"
#include "types.h"
#include "utils.h"

#include "../task_proxy.h"

#include "../algorithms/priority_queues.h"
#include "../pdbs/match_tree.h"
#include "../task_utils/task_properties.h"
#include "../utils/collections.h"
#include "../utils/logging.h"
#include "../utils/math.h"
#include "../utils/memory.h"

#include <cassert>
#include <unordered_map>

using namespace std;

namespace cost_saturation {

// ____________________________________________________________________________
ProjectionFunction::ProjectionFunction(
    const pdbs::Pattern &pattern, const vector<int> &hash_multipliers) {
    assert(pattern.size() == hash_multipliers.size());
    variables_and_multipliers.reserve(pattern.size());
    for (size_t i = 0; i < pattern.size(); ++i) {
        variables_and_multipliers.emplace_back(pattern[i], hash_multipliers[i]);
    }
}

// ____________________________________________________________________________
int ProjectionFunction::get_abstract_state_id(const State &concrete_state) const {
    int index = 0;
    for (const VariableAndMultiplier &pair : variables_and_multipliers) {
        index += pair.hash_multiplier * concrete_state[pair.pattern_var].get_value();
    }
    return index;
}

// ____________________________________________________________________________
Projection::Projection(
    shared_ptr<TaskInfo> task_info,
    shared_ptr<BddBuilder> bdd_builder,
    unique_ptr<AbstractionFunction> abstraction_function,
    int num_transitions,
    int num_states,
    int init_state_id,
    unordered_set<int> &&goal_states,
    const pdbs::Pattern &pattern,
    array_pool_template::ArrayPool<int> &&label_to_operators,
    vector<RankedOperator> &&ranked_operators,
    unique_ptr<pdbs::MatchTree> &&match_tree_backward,
    vector<int> &&hash_multipliers,
    vector<int> &&pattern_domain_sizes,
    int num_label_transitions,
    vector<int> &&label_transition_id_offset)
    : Abstraction(task_info, bdd_builder, move(abstraction_function), num_transitions, num_states, init_state_id, move(goal_states)),
      pattern(pattern),
      label_to_operators(move(label_to_operators)),
      ranked_operators(move(ranked_operators)),
      match_tree_backward(move(match_tree_backward)),
      hash_multipliers(move(hash_multipliers)),
      pattern_domain_sizes(move(pattern_domain_sizes)),
      num_label_transitions(num_label_transitions),
      label_transition_id_offset(move(label_transition_id_offset)) {
}

// ____________________________________________________________________________
Projection::~Projection() {
}

AbstractTransitionCostFunction Projection::get_default_saturated_cost_function() const {
    return AbstractTransitionCostFunction(task_info->get_num_operators(), num_label_transitions);
}

// ____________________________________________________________________________
bool Projection::increment_to_next_state(vector<FactPair> &facts) const {
    for (FactPair &fact : facts) {
        ++fact.value;
        if (fact.value > pattern_domain_sizes[fact.var] - 1) {
            fact.value = 0;
        } else {
            return true;
        }
    }
    return false;
}


// ____________________________________________________________________________
const vector<FactPair> &Projection::compute_state(int state_id) const {
    state_facts.clear();
    // state facts ordered descending for variable id (= consistent with bdd topdown variable order)
    for (int i = pattern.size() - 1; i >= 0; --i) {
        int temp = state_id / hash_multipliers[i];
        int val = temp % pattern_domain_sizes[i];
        int var = pattern[i];
        state_facts.emplace_back(var, val);
    }
    return state_facts;
}

// ____________________________________________________________________________
int Projection::get_transition_id(int source_id, int ranked_op_id) const {
    const RankedOperator& op = ranked_operators[ranked_op_id];
    source_id -= op.precondition_hash;
    /* source_id = precondition_hash[o] + sum_{v not mentioned in operator and v in pattern} hash_multipliers[v] * s[v] */
    // Step 1: extract underlying state values s[v].
    abstract_facts.clear();
    int concrete_op_id = *label_to_operators.get_slice(op.label).begin();
    // abstract facts are stored reversed (compared to for_each_transition).
    for (int i = (int)pattern.size() - 1; i >= 0; --i) {
        int var = pattern[i];
        if (!task_info->operator_mentions_variable(concrete_op_id, var)) {
            int val = source_id / hash_multipliers[i];
            source_id -= val * hash_multipliers[i];
            abstract_facts.emplace_back(i, val);
        }
    }
    assert(source_id == 0);
    // Step 2: find new representation in space of hash_multipliers without any gaps.
    // move to specific range of transition ids that belong to this abstract operator.
    int transition_id = label_transition_id_offset[ranked_op_id];
    // the hash multiplier changes according to domain size.
    int hash_multiplier = 1;
    // reverse abstract facts again to fit for_each_transition again.
    for (int i = 0; i < (int)abstract_facts.size(); ++i) {
        FactPair &fact = abstract_facts[(int)abstract_facts.size() - 1 - i];
        transition_id += hash_multiplier * fact.value;
        hash_multiplier *= pattern_domain_sizes[fact.var];
    }
    return transition_id;
}

// ____________________________________________________________________________
vector<int> Projection::compute_saturated_costs(
    const vector<int> &h_values) const {
    int num_operators = get_num_operators();

    int num_labels = label_to_operators.size();
    vector<int> saturated_label_costs(num_labels, -INF);

    for_each_label_transition(
        [&saturated_label_costs, &h_values](const Transition &t) {
            assert(utils::in_bounds(t.src, h_values));
            assert(utils::in_bounds(t.target, h_values));
            int src_h = h_values[t.src];
            int target_h = h_values[t.target];
            if (src_h == INF || target_h == INF) {
                return;
            }
            int &needed_costs = saturated_label_costs[t.op];
            needed_costs = max(needed_costs, src_h - target_h);
        });

    vector<int> saturated_costs(num_operators, -INF);
    /* To prevent negative cost cycles, we ensure that all operators inducing
       self-loops (among possibly other transitions) have non-negative costs. */
    for (int op_id = 0; op_id < num_operators; ++op_id) {
        if (operator_induces_self_loop(op_id)) {
            saturated_costs[op_id] = 0;
        }
    }

    for (int label_id = 0; label_id < num_labels; ++label_id) {
        int saturated_label_cost = saturated_label_costs[label_id];
        for (int op_id : label_to_operators.get_slice(label_id)) {
            saturated_costs[op_id] = max(saturated_costs[op_id], saturated_label_cost);
        }
    }
    return saturated_costs;
}


// ____________________________________________________________________________
void Projection::compute_saturated_costs(
    const vector<int> &h_values,
    AbstractTransitionCostFunction &stcf) const {
    int num_operators = task_info->get_num_operators();
    int num_labels = label_to_operators.size();

    // state dependent label costs are the same for each underlying operator
    vector<int> &sd_label_costs = stcf.get_sd_costs();
    fill(sd_label_costs.begin(), sd_label_costs.end(), -INF);

    vector<int> si_label_costs(num_labels, -INF);
    vector<bool> si_label(num_labels, true);
    for_each_label_transition(
        [&](const Transition &transition) {
            int source_id = transition.src;
            int target_id = transition.target;
            assert(utils::in_bounds(source_id, h_values));
            assert(utils::in_bounds(target_id, h_values));
            int source_h = h_values[source_id];
            int target_h = h_values[target_id];
            if (source_h == INF || target_h == INF ||
                source_h == -INF || target_h == -INF) {
                // saturated cost of this transition remains -INF
                return;
            }
            const int label_id = transition.op;
            const int needed = source_h - target_h;
            // stcf deviates from socf:
            if (si_label[label_id] &&
                si_label_costs[label_id] != needed &&
                si_label_costs[label_id] != -INF) {
                si_label[label_id] = false;
            }
            sd_label_costs[transition.id] = needed;
            si_label_costs[label_id] = max(needed, si_label_costs[label_id]);
        }
    );

    /*
      Transform state-independent saturated label costs to saturated operator costs
      because operators might induce self loops.
     */
    vector<int> &si_costs = stcf.get_si_costs();
    fill(si_costs.begin(), si_costs.end(), -INF);

    vector<bool> &si = stcf.get_si();
    fill(si.begin(), si.end(), true);

    for (int op_id = 0; op_id < num_operators; ++op_id) {
        if (operator_induces_self_loop(op_id)) {
            /* To prevent negative cost cycles we ensure that all operators
               inducing self-loops have non-negative costs. */
            si_costs[op_id] = 0;
        }
    }

    for (int label_id = 0; label_id < num_labels; ++label_id) {
        for (int op_id : label_to_operators.get_slice(label_id)) {
            // stcf deviates from socf:
            if (si_label_costs[label_id] != 0) {
                si[op_id] = false;
            }
            si_costs[op_id] = max(si_costs[op_id], si_label_costs[label_id]);
        }
    }
}

// ____________________________________________________________________________
void Projection::reduce_remaining_costs_transitions(
    const AbstractTransitionCostFunction &satcf,
    RemainingTransitionCostFunction& remaining_tcf) const {
    int num_operators = task_info->get_num_operators();
    const vector<bool> &si = satcf.get_si();
    const vector<int> &sd_costs = satcf.get_sd_costs();
    /* 1. Compute saturated transition cost function. */
    SaturatedTransitionCostFunction stcf(num_operators, StateCostFunction<unordered_map<int, BDD>>(bdd_builder));
    for_each_transition(
        [&](const Transition &transition) {
            // the transition id comes from the labelled transition
            int saturated = sd_costs[transition.id];
            // we identified saturating -INF in state-dependent manner as too costly.
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

// ____________________________________________________________________________
vector<int> Projection::compute_goal_distances(const vector<int> &operator_costs) const {
    assert(all_of(operator_costs.begin(), operator_costs.end(), [](int c) {return c >= 0;}));

    // Assign each label the cost of cheapest operator that the label covers.
    int num_labels = label_to_operators.size();
    vector<int> label_costs;
    label_costs.reserve(num_labels);
    for (int label_id = 0; label_id < num_labels; ++label_id) {
        int min_cost = INF;
        for (int op_id : label_to_operators.get_slice(label_id)) {
            min_cost = min(min_cost, operator_costs[op_id]);
        }
        label_costs.push_back(min_cost);
    }

    vector<int> distances(num_states, INF);

    // Initialize queue.
    priority_queues::AdaptiveQueue<int> pq;
    for (int goal : goal_states) {
        pq.push(0, goal);
        distances[goal] = 0;
    }

    // Reuse vector to save allocations.
    vector<int> applicable_operators;

    // Run Dijkstra loop.
    while (!pq.empty()) {
        pair<int, size_t> node = pq.pop();
        int distance = node.first;
        int state_index = node.second;
        assert(utils::in_bounds(state_index, distances));
        if (distance > distances[state_index]) {
            continue;
        }

        // Regress abstract state.
        applicable_operators.clear();
        match_tree_backward->get_applicable_operator_ids(
            state_index, applicable_operators);
        for (int ranked_op_id : applicable_operators) {
            const RankedOperator &op = ranked_operators[ranked_op_id];
            int predecessor = state_index - op.hash_effect;
            assert(utils::in_bounds(op.label, label_costs));
            int alternative_cost = (label_costs[op.label] == INF) ?
                INF : distances[state_index] + label_costs[op.label];
            assert(utils::in_bounds(predecessor, distances));
            if (alternative_cost < distances[predecessor]) {
                distances[predecessor] = alternative_cost;
                pq.push(alternative_cost, predecessor);
            }
        }
    }
    return distances;
}

// ____________________________________________________________________________
std::vector<int> Projection::compute_goal_distances(
    const RemainingTransitionCostFunction &sdac,
    AbstractTransitionCostFunction &tcf) const {
    vector<int> distances(get_num_states(), INF);
    vector<int> &sd_costs = tcf.get_sd_costs();
    fill(sd_costs.begin(), sd_costs.end(), 0);
    // Initialize queue.
    priority_queues::AdaptiveQueue<size_t> pq;
    for (int goal_state_id : goal_states) {
        pq.push(0, goal_state_id);
        distances[goal_state_id] = 0;
    }

    // Reuse vector to save allocations.
    vector<int> applicable_operators;

    // Run Dijkstra loop.
    while (!pq.empty()) {
        pair<int, size_t> node = pq.pop();
        int distance = node.first;
        int state_index = node.second;
        assert(utils::in_bounds(state_index, distances));
        if (distance > distances[state_index]) {
            continue;
        }
        // Regress abstract state.
        applicable_operators.clear();
        match_tree_backward->get_applicable_operator_ids(
            state_index, applicable_operators);
        for (int ranked_op_id : applicable_operators) {
            const RankedOperator &op = ranked_operators[ranked_op_id];
            int predecessor = state_index - op.hash_effect;  // in old code we have + here
            assert(utils::in_bounds(predecessor, distances));
            int required = distances[predecessor] - distances[state_index];
            int cost = 0;
            int transition_id = get_transition_id(predecessor, ranked_op_id);  // source
            if (required > 0) {
                int min_op_cost = INF;
                for (int concrete_op_id : label_to_operators.get_slice(op.label)) {
                    min_op_cost = min(min_op_cost, sdac.determine_remaining_costs(concrete_op_id));
                }
                cost = min_op_cost;
                if (cost < required) {
                    int min_tr_cost = INF;
                    // In the transition, any concrete_op_id yields same bdd because
                    // operators underlying label have same preconditions and effects.
                    const BDD& transition_bdd = make_bdd_and_cache(Transition(transition_id, *label_to_operators.get_slice(op.label).begin(), predecessor, state_index));
                    for (int concrete_op_id : label_to_operators.get_slice(op.label)) {
                        min_tr_cost = min(min_tr_cost, sdac.determine_remaining_costs(concrete_op_id, transition_bdd, INF));
                    }
                    cost = min_tr_cost;
                }
            }
            assert(cost >= 0);
            sd_costs[transition_id] = cost;
            int alt_distance = (cost == INF) ? INF : distance + cost;
            assert(alt_distance >= 0);
            if (distances[predecessor] > alt_distance) {
                distances[predecessor] = alt_distance;
                pq.push(alt_distance, predecessor);
            }
        }
    }
    return distances;
}

// ____________________________________________________________________________
bool Projection::operator_is_active(int op_id) const {
    return task_info->operator_is_active(pattern, op_id);
}

// ____________________________________________________________________________
bool Projection::operator_induces_self_loop(int op_id) const {
    return task_info->operator_induces_self_loop(pattern, op_id);
}

// ____________________________________________________________________________
void Projection::for_each_transition(const TransitionCallback &callback) const {
    return for_each_label_transition(
        [this, &callback](const Transition &t) {
            for (int op_id : label_to_operators.get_slice(t.op)) {
                callback(Transition(t.id, op_id, t.src, t.target));
            }
        });
}

// ____________________________________________________________________________
const unordered_set<int> &Projection::get_goal_states() const {
    assert(goal_states.size() > 0);
    return goal_states;
}

// ____________________________________________________________________________
int Projection::get_num_transitions(int op_id) const {
    return task_info->get_num_transitions_from_concrete_operator(pattern, op_id);
}

// ____________________________________________________________________________
BDD Projection::make_bdd(int state_id) const {
    return bdd_builder->make_bdd(compute_state(state_id));
}

// ____________________________________________________________________________
const BDD& Projection::make_bdd_and_cache(const Transition &transition) const {
    if (transition_bdd_cache.is_uninitialized()) {
        transition_bdd_cache.initialize(num_label_transitions);
    }
    if (!transition_bdd_cache.exists(transition.id)) {
        transition_bdd_cache.insert(
            transition.id,
            bdd_builder->make_bdd(compute_state(transition.src), transition.op));
    }
    return transition_bdd_cache.get(transition.id);
}

// ____________________________________________________________________________
BDD Projection::make_bdd(const Transition &transition) const {
    return bdd_builder->make_bdd(compute_state(transition.src), transition.op);
}

const pdbs::Pattern &Projection::get_pattern() const {
    return pattern;
}

void Projection::dump() const {
    cout << "Ranked operators: " << ranked_operators.size()
         << ", goal states: " << goal_states.size() << "/" << num_states
         << endl;
}
}
