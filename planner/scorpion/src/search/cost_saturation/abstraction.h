#ifndef TRANSITION_COST_PARTITIONING_ABSTRACTION_H
#define TRANSITION_COST_PARTITIONING_ABSTRACTION_H

#include "types.h"

#include "cudd.h"
#include "cuddObj.hh"

#include "dd_cache.h"

#include <unordered_set>
#include <vector>
#include <memory>

using namespace std;

class State;

namespace cost_saturation {
class AbstractTransitionCostFunction;
class BddBuilder;
class RemainingTransitionCostFunction;
class TaskInfo;
class TransitionWeights;
struct Transition;
struct AbstractState;

using TransitionCallback = function<void (const Transition &)>;

/**
 * A Transition is a labelled state-changing transition with a unique identifier.
 * The numbering of identifier start at 0 such that they can be used for indexing arrays.
 * The indexing is required in Transition Cost Partitioning
 * where costs are assigned to Transitions.
 */
struct Transition {
    int id;
    int op;
    int src;
    int target;

    Transition(int id, int op, int src, int target) :
      id(id), op(op), src(src), target(target) {
    }
};

class AbstractionFunction {
public:
    virtual ~AbstractionFunction() = default;
    virtual int get_abstract_state_id(const State &concrete_state) const = 0;
};

/**
 * Implements an abstract transition system with abstraction mapping alpha.
 *
 * This implementation focusses on never looping over abstract self-loops
 * due to the fact that this is highly inefficient if the number of self-loops is large.
 * This may look like a problem to compute transition cost functions
 * in states with infinite heuristic values. The problem is solved
 * with iteration over abstract states and performing
 * restrict operation on decision diagrams
 * to find compact representation of the transition cost functions.
 *
 * We can similarly recompute the has_loop and has_outgoing function
 * using bdds efficiently.
 */
class Abstraction {
  protected:
    /**
     * Specialized access to task related information.
     */
    std::shared_ptr<TaskInfo> task_info;

    std::shared_ptr<BddBuilder> bdd_builder;

    /**
     * The abstraction functions alpha.
     */
    unique_ptr<AbstractionFunction> abstraction_function;

    /**
     * The number of abstract state-changing transitions.
     */
    const int num_transitions;

    /**
     * The number of abstract states.
     */
    const int num_states;

    /**
     * The abstract initial state.
     */
    const int init_state_id;

    /**
     * The abstract goal states.
     */
    const unordered_set<int> goal_states;

    /**
     * Cache transition bdds for reuse.
     */
    mutable DDCache<BDD> transition_bdd_cache;

  public:
    /**
     * R6: Moveable and not copyable.
     */
    Abstraction() = delete;
    Abstraction(
      std::shared_ptr<TaskInfo> task_info,
      std::shared_ptr<BddBuilder> bdd_builder,
      unique_ptr<AbstractionFunction> abstraction_function,
      int num_transitions,
      int num_states,
      int init_state_id,
      unordered_set<int> &&goal_states);
    Abstraction(const Abstraction &other) = delete;
    Abstraction& operator=(const Abstraction &other) = delete;
    Abstraction(Abstraction &&other) = default;
    Abstraction& operator=(Abstraction &&other) = default;
    virtual ~Abstraction() = default;

    /**
     * Returns a saturated cost function with preallocated memory.
     */
    virtual AbstractTransitionCostFunction get_default_saturated_cost_function() const = 0;

    /**
     * Clears all caches. Uses swap trick to ensure that memory is freed correctly.
     */
    void clear_caches();

    /**
     * Apply a function to all state-changing transitions.
     */
    virtual void for_each_transition(const TransitionCallback &callback) const = 0;
    /**
     * Apply a function to all state-changing transitions
     * that are not marked as state-indendepent.
     * Note: This function is useful in the subtraction of state-dependent costs.
     */
    virtual void for_each_transition(
      const vector<bool> &si,
      const TransitionCallback &callback) const;

    /**
     * Compute goal distances for operator cost function.
     */
    virtual std::vector<int> compute_goal_distances(const std::vector<int> &ocf) const = 0;
    /**
     * Compute goal distances from sdac data structure
     * and store the transition weights in the abstract transition cost function.
     */
    virtual std::vector<int> compute_goal_distances(
      const RemainingTransitionCostFunction &sdac,
      AbstractTransitionCostFunction &tcf) const = 0;

    /**
     * Compute saturated operator cost function.
     */
    virtual std::vector<int> compute_saturated_costs(const std::vector<int> &h_values) const = 0;
    /**
     * Compute saturated transition cost function with byproducts, i.e.,
     * saturated operator cost function and state-dependent operators.
     */
    virtual void compute_saturated_costs(const vector<int> &h_values, AbstractTransitionCostFunction &stcf) const = 0;

    /**
     * Computes tcf -= saturated_abstract_tcf.
    */
    void reduce_remaining_costs(
      const AbstractTransitionCostFunction &satcf,
      RemainingTransitionCostFunction& remaining_tcf) const;
    void reduce_remaining_costs_operators(
      const vector<int> &saocf,
      RemainingTransitionCostFunction& remaining_tcf) const;
    void reduce_remaining_costs_operators(
      const AbstractTransitionCostFunction &satcf,
      RemainingTransitionCostFunction& remaining_tcf) const;
    virtual void reduce_remaining_costs_transitions(
      const AbstractTransitionCostFunction &satcf,
      RemainingTransitionCostFunction& remaining_tcf) const = 0;

    /**
     * Getters.
     */
    virtual const std::unordered_set<int> &get_goal_states() const = 0;
    bool is_goal_state(int state_id) const;
    int get_num_operators() const;
    int get_num_states() const;
    int get_num_transitions() const;
    virtual int get_num_transitions(int op_id) const = 0;
    int get_initial_state_id() const;

    /**
     * Moves out the abstraction function.
     */
    std::unique_ptr<AbstractionFunction> extract_abstraction_function();
    int get_abstract_state_id(const State &concrete_state) const;

    /**
     * These two functions are considered independent of the reachability mapping that is used.
     * For CEGAR abstractions, we exclude deadend states that are present initially.
     * For Projections, we consider all states.
     * The currently best known way to update this is using bdds.
     * It will be considered in future version.
     */
    virtual bool operator_induces_self_loop(int op_id) const = 0;
    virtual bool operator_is_active(int op_id) const = 0;

    /**
     * Compute a representation of a state.
     */
    virtual BDD make_bdd(int state_id) const = 0;
    /**
     * Compute a BDD that represents the operator regression.
     * This function caches the result for reuse.
     */
    virtual const BDD& make_bdd_and_cache(const Transition &transition) const = 0;
    /**
     * Compute a BDD that represents the operator regression.
     */
    virtual BDD make_bdd(const Transition &transition) const = 0;

    void set_bdd_builder(std::shared_ptr<BddBuilder> bdd_builder);

    virtual void dump() const = 0;
};

}

#endif
