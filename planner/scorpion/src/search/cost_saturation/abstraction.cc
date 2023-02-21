#include "abstraction.h"

#include "task_info.h"
#include "utils.h"

#include "transition_cost_functions/abstract_transition_cost_function.h"
#include "transition_cost_functions/remaining_transition_cost_function.h"
#include "transition_cost_functions/saturated_transition_cost_function.h"

#include <cassert>

using namespace std;

namespace cost_saturation {
// ____________________________________________________________________________
Abstraction::Abstraction(
    std::shared_ptr<TaskInfo> task_info,
    std::shared_ptr<BddBuilder> bdd_builder,
    unique_ptr<AbstractionFunction> abstraction_function,
    int num_transitions,
    int num_states,
    int init_state_id,
    unordered_set<int> &&goal_states)
    : task_info(task_info),
      bdd_builder(bdd_builder),
      abstraction_function(move(abstraction_function)),
      num_transitions(num_transitions),
      num_states(num_states),
      init_state_id(init_state_id),
      goal_states(std::move(goal_states)) {
}

// ____________________________________________________________________________
void Abstraction::clear_caches() {
    transition_bdd_cache.uninitialize();
}

// ____________________________________________________________________________
void Abstraction::for_each_transition(
    const vector<bool> &si,
    const TransitionCallback &callback) const {
    for_each_transition(
        [&](const Transition &transition){
            if (si[transition.op]) {
                return;
            }
            callback(transition);
        }
    );
}

// ____________________________________________________________________________
int Abstraction::get_abstract_state_id(const State &concrete_state) const {
    assert(abstraction_function);
    return abstraction_function->get_abstract_state_id(concrete_state);
}

void Abstraction::reduce_remaining_costs(
    const AbstractTransitionCostFunction &satcf,
    RemainingTransitionCostFunction& remaining_tcf) const {
    reduce_remaining_costs_operators(satcf, remaining_tcf);
    reduce_remaining_costs_transitions(satcf, remaining_tcf);
}

// ____________________________________________________________________________
void Abstraction::reduce_remaining_costs_operators(
    const vector<int> &si_costs,
    RemainingTransitionCostFunction& remaining_tcf) const {
    int num_operators = task_info->get_num_operators();
    TransitionCostFunction &tcf = remaining_tcf.get_remaining_tcf();
    for (int op_id = 0; op_id < num_operators; ++op_id) {
        int saturated = si_costs[op_id];
        if (saturated == 0 || saturated == INF)
            continue;
        if (saturated == -INF) {
            tcf[op_id].clear();
            tcf[op_id].emplace(INF, bdd_builder->make_one());
            remaining_tcf.mark_operator_as_useless(op_id);
        } else {
            StateCostFunction<std::map<int, BDD>> state_cost_function(bdd_builder);
            for (auto &p : tcf[op_id]) {
                int old_cost_value = p.first;
                if (old_cost_value == INF) {
                    state_cost_function.insert(INF, p.second);
                } else {
                    int new_cost_value = left_subtraction(old_cost_value, saturated);
                    assert(new_cost_value >= 0);
                    state_cost_function.insert(new_cost_value, p.second);
                }
            }
            assert(state_cost_function.verify_completeness());
            tcf[op_id] = move(state_cost_function);
        }
    }
}

// ____________________________________________________________________________
void Abstraction::reduce_remaining_costs_operators(
    const AbstractTransitionCostFunction &satcf,
    RemainingTransitionCostFunction& remaining_tcf) const {
    int num_operators = task_info->get_num_operators();
    const vector<bool> &si = satcf.get_si();
    const vector<int> &si_costs = satcf.get_si_costs();
    TransitionCostFunction &tcf = remaining_tcf.get_remaining_tcf();
    for (int op_id = 0; op_id < num_operators; ++op_id) {
        if (!si[op_id])
            continue;
        int saturated = si_costs[op_id];
        if (saturated == 0 || saturated == INF)
            continue;
        if (saturated == -INF) {
            tcf[op_id].clear();
            tcf[op_id].emplace(INF, bdd_builder->make_one());
            remaining_tcf.mark_operator_as_useless(op_id);
        } else {
            StateCostFunction<std::map<int, BDD>> state_cost_function(bdd_builder);
            for (auto &p : tcf[op_id]) {
                int old_cost_value = p.first;
                if (old_cost_value == INF) {
                    state_cost_function.insert(INF, p.second);
                } else {
                    int new_cost_value = left_subtraction(old_cost_value, saturated);
                    assert(new_cost_value >= 0);
                    state_cost_function.insert(new_cost_value, p.second);
                }
            }
            assert(state_cost_function.verify_completeness());
            tcf[op_id] = move(state_cost_function);
        }
    }
}

// ____________________________________________________________________________
bool Abstraction::is_goal_state(int state_id) const {
    return goal_states.count(state_id);
}

// ____________________________________________________________________________
int Abstraction::get_num_operators() const {
    return task_info->get_num_operators();
}

// ____________________________________________________________________________
int Abstraction::get_num_states() const {
    return num_states;
}

// ____________________________________________________________________________
int Abstraction::get_num_transitions() const {
    return num_transitions;
}

// ____________________________________________________________________________
int Abstraction::get_initial_state_id() const {
    return init_state_id;
}

// ____________________________________________________________________________
unique_ptr<AbstractionFunction> Abstraction::extract_abstraction_function() {
    return move(abstraction_function);
}

// ____________________________________________________________________________
void Abstraction::set_bdd_builder(std::shared_ptr<BddBuilder> bdd_builder_) {
    bdd_builder = bdd_builder_;
}

}
