#ifndef TRANSITION_COST_PARTITIONING_TASK_INFO_H
#define TRANSITION_COST_PARTITIONING_TASK_INFO_H

#include "types.h"

#include "../pdbs/types.h"
#include "../task_proxy.h"


using namespace std;

namespace cost_saturation {

/**
 * The TaskInfo allows easy access to task related static information
 * that does not change during the computation of saturated cost partitioning.
 */
class TaskInfo {

    int num_variables;
    int num_operators;

    vector<int> operator_costs;

    /**
     * The domain size of each variable
     */
    vector<int> domain_size;


    State initial_state;

    /**
     * The operator pre and post conditions in the concrete domains.
     */
    vector<vector<FactPair>> preconditions_by_operator;
    vector<vector<FactPair>> postconditions_by_operator;

    /**
     * The set of goal facts
     */
    vector<FactPair> goals;

    /**
     * Set bit at position op_id * num_variables + var to true iff the operator
     * has a precondition or an effect on variable var.
     */
    vector<bool> mentioned_variables;

    /**
     * Set bit at position op_id * num_variables + var to true iff the operator
     * has a precondition and (different) effect on variable var.
     */
    vector<bool> pre_eff_variables;

    /**
     * Set bit at position op_id * num_variables + var to true iff the operator
     * has a precondition on variable var.
     */
    vector<bool> precondition_variables;

    /**
     * Set bit at position op_id * num_variables + var to true iff the operator
     * has an effect on variable var.
     */
    vector<bool> effect_variables;

    int get_index(int op_id, int var) const {
        return op_id * num_variables + var;
    }
public:
    /**
     * R6: Moveable and not copyable.
     */
    TaskInfo() = delete;
    explicit TaskInfo(const TaskProxy &task_proxy);
    TaskInfo(const TaskInfo &other) = delete;
    TaskInfo& operator=(const TaskInfo &other) = delete;
    TaskInfo(TaskInfo &&other) = default;
    TaskInfo& operator=(TaskInfo &&other) = default;
    ~TaskInfo() = default;

    const vector<int> &get_operator_costs() const;
    int get_operator_cost(int op) const;
    int get_domain_size(int var) const;
    const vector<int> &get_domain_sizes() const;
    const State &get_initial_state() const;
    /**
     * Get operator preconditions for operator regression.
     */
    int get_precondition_value(int op_id, int var) const;
    int get_postcondition_value(int op_id, int var) const;

    bool operator_has_precondition(int op_id, int var) const;
    const vector<FactPair> &get_goals() const;
    int get_num_variables() const;
    int get_num_operators() const;
    bool operator_mentions_variable(int op_id, int var) const;
    bool operator_induces_self_loop(const pdbs::Pattern &pattern, int op_id) const;
    bool operator_is_active(const pdbs::Pattern &pattern, int op_id) const;
    bool operator_has_effect(int op_id, int var) const;
    int get_num_transitions_from_concrete_operator(const pdbs::Pattern &pattern, int op_id) const;
    int get_num_transitions_from_operator(const pdbs::Pattern &pattern, int op_id) const;

    /**
     * Get the number of loops for an operator
     */
    int get_num_loops(const pdbs::Pattern &pattern, int op_id) const;

};

}

#endif
