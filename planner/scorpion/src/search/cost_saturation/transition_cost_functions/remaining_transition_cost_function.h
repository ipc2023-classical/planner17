#ifndef TRANSITION_COST_PARTITIONING_REMAINING_TRANSITION_COST_FUNCTION_H
#define TRANSITION_COST_PARTITIONING_REMAINING_TRANSITION_COST_FUNCTION_H

#include "state_cost_function.h"

#include "../types.h"

#include "../../utils/logging.h"

#include <map>
#include <memory>
#include <vector>

class BDD;

namespace cost_saturation {
class TaskInfo;
class BddBuilder;

using TransitionCostFunction = std::vector<StateCostFunction<std::map<int, BDD>>>;


/**
 * RemainingTransitionCostFunction to represent and manipulate functions of the form c : S x O -> R
 */
class RemainingTransitionCostFunction {
    /**
     * Reference to get task related information.
     */
    std::shared_ptr<TaskInfo> task_info;
    /**
     * Reference to build bdds.
     */
    std::shared_ptr<BddBuilder> bdd_builder;

    /**
     * Store state-dependent costs.
     */
    TransitionCostFunction remaining_tcf;

    /**
     * useless_operators[o] = true iff operator o can be removed from the task.
     */
    vector<bool> useless_operators;

    /**
     * Collect statistics.
     */
    mutable int count_evaluations;
    mutable int count_subtractions;

  public:
    /**
     * R6: Moveable and not copyable.
     */
    RemainingTransitionCostFunction() = delete;
    RemainingTransitionCostFunction(
        std::shared_ptr<TaskInfo> task_info,
        std::shared_ptr<BddBuilder> bdd_builder);
    RemainingTransitionCostFunction(const RemainingTransitionCostFunction& other) = delete;
    RemainingTransitionCostFunction& operator=(const RemainingTransitionCostFunction& other) = delete;
    RemainingTransitionCostFunction(RemainingTransitionCostFunction &&other) = default;
    RemainingTransitionCostFunction& operator=(RemainingTransitionCostFunction&& other) = default;
    ~RemainingTransitionCostFunction() = default;

    /**
     * Reinitialize the cost function with the initially given operator costs.
     */
    void reinitialize();

    int determine_remaining_costs(
        int op_id) const;

    int determine_remaining_costs(
        int op_id,
        const BDD& states,
        int required=INF) const;

    void inc_subtractions();
    void inc_evaluations();

    TransitionCostFunction& get_remaining_tcf();

    void mark_operator_as_useless(int op_id);

    /**
     * Print information about the cost function to the screen.
     */
    void print_statistics() const;
};

}

#endif
