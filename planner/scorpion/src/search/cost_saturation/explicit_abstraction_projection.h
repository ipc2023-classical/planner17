#ifndef TRANSITION_COST_PARTITIONING_EXPLICIT_ABSTRACTION_PROJECTION_H
#define TRANSITION_COST_PARTITIONING_EXPLICIT_ABSTRACTION_PROJECTION_H

#include "explicit_abstraction.h"
#include "types.h"
#include "split_tree.h"

#include "../pdbs/types.h"

#include <unordered_set>
#include <memory>
#include <vector>
#include <functional>

namespace cost_saturation {

/*
  An ExplicitAbstractionCegar is an instantiation of an ExplicitAbstraction
  from a given abstraction generated with CEGAR.
*/
class ExplicitAbstractionProjection : public ExplicitAbstraction {
  private:
    const pdbs::Pattern pattern;
    // Multipliers for each variable for perfect hash function.
    const std::vector<int> hash_multipliers;
    // Domain size of each variable in the pattern.
    const std::vector<int> pattern_domain_sizes;

    // Reuse vector to save allocations.
    mutable std::vector<FactPair> abstract_facts;
    mutable std::vector<FactPair> state_facts;
    /*
      build the pattern state from the given state id
    */
    const std::vector<FactPair> &compute_state(int state_id) const;

  public:
    /**
     * R6: Moveable and not copyable.
     */
    ExplicitAbstractionProjection() = delete;
    ExplicitAbstractionProjection(
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
      std::vector<bool> &&has_outgoing,
      const pdbs::Pattern &pattern,
      std::vector<int> &&hash_multipliers,
      std::vector<int> &&pattern_domain_sizes);
    ExplicitAbstractionProjection(const ExplicitAbstractionProjection &other) = delete;
    ExplicitAbstractionProjection& operator=(const ExplicitAbstractionProjection &other) = delete;
    ExplicitAbstractionProjection(ExplicitAbstractionProjection &&other) = default;
    ExplicitAbstractionProjection& operator=(ExplicitAbstractionProjection &&other) = default;
    virtual ~ExplicitAbstractionProjection() = default;

    virtual BDD make_bdd(int state_id) const override;
    virtual const BDD& make_bdd_and_cache(const Transition &transition) const override;
    virtual BDD make_bdd(const Transition &transition) const override;
};

}

#endif
