#ifndef OPERATOR_COUNTING_CONSTRAINT_GENERATOR_H
#define OPERATOR_COUNTING_CONSTRAINT_GENERATOR_H

#include <memory>
#include <vector>

#include "../algorithms/named_vector.h"

class AbstractTask;
class State;

namespace lp {
class LinearProgram;
class LPSolver;
}  // namespace lp

namespace operator_counting {
/*
  Derive from this class to add new operator-counting constraints. We support
  two types of constraints:
    - *Permanent constraints* are created once for the planning task and then
      reused for all states that are evaluated. It is possible (and usually
      necessary) to update the bounds of the constraint for every given state,
      but not the coefficients.
      Example: flow constraints such as
        move_ab + move_ac - move_ba - move_ca <= X,
      where X depends on the value of "at_a" in the current state and goal.
    - *Temporary constraints* are added for a given state and then removed.
      Example: constraints from landmarks generated for a given state, e.g.
      using the LM-Cut method.
*/
class ConstraintGenerator {
public:
    virtual ~ConstraintGenerator() = default;

    /*
      Called upon initialization for the given task. Use this to add permanent
      constraints and perform other initialization.
    */
    virtual void initialize_constraints(
        const std::shared_ptr<AbstractTask> &task, lp::LinearProgram &lp);

    /*
      This is a shortcut to prevent the calls of cache_heuristic, get_cached_heuristic_value and update_constraints to
      do state dependent calculation while still dealing with the same state. Idealy the State object would have something like a StateID
      that makes distinktion easy, but states loose their Id when they get transformed from ancestor tasks.
    */
    virtual void set_active_state(const State &state);

    /*
      Called before evaluating a state. Use this to add temporary constraints
      and to set bounds on permanent constraints for this state. All temporary
      constraints are removed automatically after the evalution.

      Returns true if a dead end was detected and false otherwise.
    */
    virtual bool update_constraints(
        const State &state, lp::LPSolver &lp_solver) = 0;

    /*
      Signal to cache the heuristic computation if possible
    */
    virtual void cache_heuristic(const State &state, lp::LPSolver &lp_solver, double h);

    /*
      Called before evaluating a state to check if solving an LP is necessary.
    */
    virtual int get_cached_heuristic_value(const State &state);
};
}

#endif
