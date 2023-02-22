#ifndef COST_SATURATION_EXPLICIT_ABSTRACTION_H
#define COST_SATURATION_EXPLICIT_ABSTRACTION_H

#include "abstraction.h"

#include "../algorithms/priority_queues.h"

#include <memory>
#include <unordered_set>
#include <utility>
#include <vector>

namespace cost_saturation {
struct Successor {
    int id;
    int op;
    int state;

    Successor(int id, int op, int state)
        : id(id),
          op(op),
          state(state) {
    }

    bool operator<(const Successor &other) const {
        return std::make_pair(op, state) < std::make_pair(other.op, other.state);
    }

    bool operator>=(const Successor &other) const {
        return !(*this < other);
    }
};

std::ostream &operator<<(std::ostream &os, const Successor &successor);


class ExplicitAbstraction : public Abstraction {
protected:
    /**
     * Store state-changing transitions explicitely.
     */
    std::vector<std::vector<Successor>> backward_graph;

    /**
     * num_transitions_by_operator[op] is the number of state-changing transitions that operator op induces.
     */
    const vector<int> num_transitions_by_operator;

    /**
     * has_loop[op]=true iff operator op induces an abstract self-loop.
     */
    const vector<bool> has_loop;
    /**
     * has_outgoing[op]=true iff operator op induces an abstract state-chancging transition.
     */
    const vector<bool> has_outgoing;

    /**
     * Priority queue for distance analysis.
     */
    mutable priority_queues::AdaptiveQueue<int> queue;

public:
    /**
     * R6: Moveable and not copyable.
     */
    ExplicitAbstraction() = delete;
    ExplicitAbstraction(
      std::shared_ptr<TaskInfo> task_info,
      std::shared_ptr<BddBuilder> bdd_builder,
      std::unique_ptr<AbstractionFunction> abstraction_function,
      int num_transitions,
      int num_states,
      int init_state_id,
      std::unordered_set<int> &&goal_states,
      std::vector<std::vector<Successor>> &&backward_graph,
      std::vector<int> &&num_transitions_by_operator,
      std::vector<bool> &&has_loop,
      std::vector<bool> &&has_outgoing);
    ExplicitAbstraction(const ExplicitAbstraction& other) = delete;
    ExplicitAbstraction& operator=(const ExplicitAbstraction &other) = delete;
    ExplicitAbstraction(ExplicitAbstraction &&other) = default;
    ExplicitAbstraction& operator=(ExplicitAbstraction &&other) = default;

    virtual AbstractTransitionCostFunction get_default_saturated_cost_function() const override;

    virtual std::vector<int> compute_goal_distances(
        const std::vector<int> &costs) const override;
    virtual std::vector<int> compute_goal_distances(
      const RemainingTransitionCostFunction &sdac,
      AbstractTransitionCostFunction &tcf) const override;
    virtual std::vector<int> compute_saturated_costs(
        const std::vector<int> &h_values) const override;
    virtual void compute_saturated_costs(
        const vector<int> &h_values,
        AbstractTransitionCostFunction &satcf) const override;
    virtual void reduce_remaining_costs_transitions(
      const AbstractTransitionCostFunction &satcf,
      RemainingTransitionCostFunction& remaining_tcf) const override;

    virtual int get_num_transitions(int op_id) const override;
    virtual bool operator_is_active(int op_id) const override;
    virtual bool operator_induces_self_loop(int op_id) const override;

    virtual void for_each_transition(const TransitionCallback &callback) const override;
    virtual const std::unordered_set<int> &get_goal_states() const override;
    virtual void dump() const override;
};
}

#endif
