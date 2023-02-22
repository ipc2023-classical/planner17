#ifndef TRANSITION_COST_PARTITIONING_EXPLICIT_ABSTRACTION_CEGAR_H
#define TRANSITION_COST_PARTITIONING_EXPLICIT_ABSTRACTION_CEGAR_H

#include "explicit_abstraction.h"
#include "types.h"

#include "split_tree.h"

#include "cudd.h"
#include "cuddObj.hh"

#include <memory>
#include <vector>
#include <functional>

using namespace std;

namespace cost_saturation {

/*
  An ExplicitAbstractionCegar is an instantiation of an ExplicitAbstraction
  from a given abstraction generated with CEGAR.
*/
class ExplicitAbstractionCegar : public ExplicitAbstraction {
  private:
    /**
     * We store a treelike version of the refinement hierarchy
     * without domain abstraction to efficiently store cartesian abstract states.
     */
    SplitTree split_tree;

  public:
    /**
     * R6: Moveable and not copyable.
     */
    ExplicitAbstractionCegar() = delete;
    ExplicitAbstractionCegar(
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
      cegar::SplitTree &&split_tree);
    ExplicitAbstractionCegar(const ExplicitAbstractionCegar &other) = delete;
    ExplicitAbstractionCegar& operator=(const ExplicitAbstractionCegar &other) = delete;
    ExplicitAbstractionCegar(ExplicitAbstractionCegar &&other) = default;
    ExplicitAbstractionCegar& operator=(ExplicitAbstractionCegar &&other) = default;
    virtual ~ExplicitAbstractionCegar() = default;

    virtual BDD make_bdd(int state_id) const override;
    virtual const BDD& make_bdd_and_cache(const Transition &transition) const override;
    virtual BDD make_bdd(const Transition &transition) const override;

  virtual void dump() const override;
};

}

#endif
