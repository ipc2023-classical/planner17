#ifndef COST_SATURATION_PROJECTION_H
#define COST_SATURATION_PROJECTION_H

#include "abstraction.h"
#include "task_info.h"

#include "../abstract_task.h"

#include "../algorithms/array_pool.h"
#include "../pdbs/types.h"

#include <functional>
#include <vector>

class OperatorProxy;
class TaskProxy;
class VariablesProxy;

namespace pdbs {
class MatchTree;
}

namespace cost_saturation {
using Facts = std::vector<FactPair>;
using OperatorCallback =
    std::function<void (Facts &, Facts &, Facts &, const std::vector<int> &)>;

// We distinguish between concrete operators, ranked operators and labels.
struct RankedOperator {
    int label;
    int precondition_hash;
    int hash_effect;

    RankedOperator(int label, int precondition_hash, int hash_effect)
        : label(label),
          precondition_hash(precondition_hash),
          hash_effect(hash_effect) {
    }
};


class ProjectionFunction : public AbstractionFunction {
    struct VariableAndMultiplier {
        int pattern_var;
        int hash_multiplier;

        VariableAndMultiplier(int pattern_var, int hash_multiplier)
            : pattern_var(pattern_var),
              hash_multiplier(hash_multiplier) {
        }
    };
    std::vector<VariableAndMultiplier> variables_and_multipliers;

public:
    ProjectionFunction(
        const pdbs::Pattern &pattern, const std::vector<int> &hash_multipliers);

    virtual int get_abstract_state_id(const State &concrete_state) const override;
};


class Projection : public Abstraction {
    const pdbs::Pattern pattern;
    const array_pool_template::ArrayPool<int> label_to_operators;

    const std::vector<RankedOperator> ranked_operators;
    const std::unique_ptr<pdbs::MatchTree> match_tree_backward;

    // Multipliers for each variable for perfect hash function.
    const std::vector<int> hash_multipliers;

    // Domain size of each variable in the pattern.
    const std::vector<int> pattern_domain_sizes;

    /*
      Given an abstract state (represented as a vector of facts), compute the
      "next" fact. Return true iff there is a next fact.
    */
    bool increment_to_next_state(std::vector<FactPair> &facts) const;

    /*
      Apply a function to all state-changing transitions in the projection
      (including unreachable and unsolvable transitions).
    */
    template<class Callback>
    void for_each_label_transition(const Callback &callback) const {
        // Reuse vector to save allocations.
        std::vector<FactPair> abstract_facts;

        int id = 0;
        int ranked_op_id = 0;
        for (const RankedOperator &ranked_operator : ranked_operators) {
            // Choose any operator covered by the label.
            int concrete_op_id = *label_to_operators.get_slice(ranked_operator.label).begin();
            abstract_facts.clear();
            for (size_t i = 0; i < pattern.size(); ++i) {
                int var = pattern[i];
                if (!task_info->operator_mentions_variable(concrete_op_id, var)) {
                    abstract_facts.emplace_back(i, 0);
                }
            }

            bool has_next_match = true;
            while (has_next_match) {
                int state = ranked_operator.precondition_hash;
                for (const FactPair &fact : abstract_facts) {
                    state += hash_multipliers[fact.var] * fact.value;
                }
                assert(id == get_transition_id(state, ranked_op_id));
                callback(Transition(id++,
                                    ranked_operator.label,
                                    state,
                                    state + ranked_operator.hash_effect));
                has_next_match = increment_to_next_state(abstract_facts);
            }
            ++ranked_op_id;
        }
    }

    // Reuse vector to save allocations.
    mutable vector<FactPair> abstract_facts;
    mutable vector<FactPair> state_facts;
    /*
      build the pattern state from the given state id
    */
    const vector<FactPair> &compute_state(int state_id) const;

    // To compute transition id:
    const int num_label_transitions;
    const vector<int> label_transition_id_offset;

    /**
     * Perfect hash function that computes the transition_id
     * for a given pair of source state and abstract operator id.
     * Note: the operator must be applicable in the state.
     */
    int get_transition_id(int source_id, int ranked_op_id) const;

public:
    Projection(
        std::shared_ptr<TaskInfo> task_info,
        std::shared_ptr<BddBuilder> bdd_builder,
        std::unique_ptr<AbstractionFunction> abstraction_function,
        int num_transitions,
        int num_states,
        int init_state_id,
        std::unordered_set<int> &&goal_states,
        const pdbs::Pattern &pattern,
        array_pool_template::ArrayPool<int> &&label_to_operators,
        std::vector<RankedOperator> &&ranked_operators,
        std::unique_ptr<pdbs::MatchTree> &&match_tree_backward,
        std::vector<int> &&hash_multipliers,
        std::vector<int> &&pattern_domain_sizes,
        int num_label_transitions,
        std::vector<int> &&label_transition_id_offset);
    virtual ~Projection() override;

    virtual AbstractTransitionCostFunction get_default_saturated_cost_function() const override;

    virtual std::vector<int> compute_goal_distances(
        const std::vector<int> &operator_costs) const override;
    virtual std::vector<int> compute_goal_distances(
      const RemainingTransitionCostFunction &sdac,
      AbstractTransitionCostFunction &tcf) const override;
    virtual std::vector<int> compute_saturated_costs(
        const std::vector<int> &h_values) const override;
    virtual void compute_saturated_costs(
        const vector<int> &h_values,
        AbstractTransitionCostFunction &stcf) const override;
    virtual void reduce_remaining_costs_transitions(
      const AbstractTransitionCostFunction &satcf,
      RemainingTransitionCostFunction& remaining_tcf) const override;
    virtual bool operator_is_active(int op_id) const override;
    virtual bool operator_induces_self_loop(int op_id) const override;
    virtual void for_each_transition(const TransitionCallback &callback) const override;

    virtual const std::unordered_set<int> &get_goal_states() const override;
    virtual int get_num_transitions(int op_id) const override;

    virtual BDD make_bdd(int state_id) const override;
    virtual const BDD& make_bdd_and_cache(const Transition &transition) const override;
    virtual BDD make_bdd(const Transition &transition) const override;

    const pdbs::Pattern &get_pattern() const;
    virtual void dump() const override;
};
}

#endif
