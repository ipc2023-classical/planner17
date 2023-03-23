#ifndef LP_CPLEX_SOLVER_H
#define LP_CPLEX_SOLVER_H

#include "lp_solver.h"

#include <functional>
#include <memory>
#include <vector>

#ifdef USE_CPLEX
#ifdef __GNUG__
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-parameter"
#pragma GCC diagnostic ignored "-Wignored-attributes"
#pragma GCC diagnostic ignored "-Wdeprecated-copy"
#endif
#include <ilcplex/ilocplex.h>
#ifdef __GNUG__
#pragma GCC diagnostic pop
#endif
#endif


/*
  All methods that use COIN specific classes only do something useful
  if the planner is compiled with USE_LP. Otherwise, they just print
  an error message and abort.
*/
#ifdef USE_CPLEX
#define CPLEX_METHOD(X) X;
#else
#define CPLEX_METHOD(X) NO_RETURN X { \
        ABORT("CPLEX method called but the planner was compiled without CPLEX support."); \
}
#endif


namespace lp {

#ifdef __GNUG__
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wunused-parameter"
#endif
class CPLEXSolver {
    bool is_solved;
    bool has_time_limit;
#ifdef USE_CPLEX
    IloEnv env;
    IloNumVarArray ilo_variables;
    IloObjective ilo_objective;
    IloRangeArray ilo_constraints;
    IloModel model;
    IloCplex cplex;
#endif
public:
    CPLEX_METHOD(explicit CPLEXSolver(int time_limit = -1))

    ~CPLEXSolver();

    CPLEX_METHOD(void load_problem(
            LPObjectiveSense sense,
            const std::vector<LPVariable> &variables,
            const std::vector<LPConstraint> &constraints))

    CPLEX_METHOD(double get_infinity() const)

    CPLEX_METHOD(void set_objective_coefficients(const std::vector<double> &coefficients))
    CPLEX_METHOD(void set_objective_coefficient(int index, double coefficient))
    CPLEX_METHOD(void set_constraint_lower_bound(int index, double bound))
    CPLEX_METHOD(void set_constraint_upper_bound(int index, double bound))
    CPLEX_METHOD(void set_variable_lower_bound(int index, double bound))
    CPLEX_METHOD(void set_variable_upper_bound(int index, double bound))

    CPLEX_METHOD(void solve())

    /*
      Return true if the solving the LP showed that it is bounded feasible and
      the discovered solution is guaranteed to be optimal. We test for
      optimality explicitly because solving the LP sometimes finds suboptimal
      solutions due to numerical difficulties.
      The LP has to be solved with a call to solve() before calling this method.
    */
    CPLEX_METHOD(bool has_optimal_solution() const)

    /*
      Return true if the solving the LP showed that it is bounded feasible.
      The LP has to be solved with a call to solve() or populate() before calling this method.
     */
    CPLEX_METHOD(bool has_solution() const)

    /*
      Return the objective value found after solving an LP.
      The LP has to be solved with a call to solve() and has to have an optimal
      solution before calling this method.
    */
    CPLEX_METHOD(double get_objective_value() const)

    /*
      Return the solution found after solving an LP as a vector with one entry
      per variable.
      The LP has to be solved with a call to solve() and has to have an (optimal)
      solution before calling this method. If a time limit has been set, the
      solution may be suboptimal.
    */
    CPLEX_METHOD(std::vector<double> extract_solution() const)

    CPLEX_METHOD(int get_num_variables() const)
    CPLEX_METHOD(int get_num_constraints() const)

    CPLEX_METHOD(void print_statistics() const)
};
#ifdef __GNUG__
#pragma GCC diagnostic pop
#endif
}

#endif
