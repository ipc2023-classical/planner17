#include "cplex_solver.h"

#include "../utils/system.h"

#include <cassert>
#include <numeric>

using namespace std;

namespace lp {

#ifdef USE_CPLEX
CPLEXSolver::~CPLEXSolver() {
    cplex.end();
    model.end();
    ilo_objective.end();
    ilo_constraints.endElements();
    ilo_constraints.end();
    ilo_variables.endElements();
    ilo_variables.end();
    env.end();
}

CPLEXSolver::CPLEXSolver(int time_limit)
    : is_solved(false),
      has_time_limit(false),
      ilo_variables(IloNumVarArray(env, 0)),
      ilo_objective(IloObjective(env)),
      ilo_constraints(IloRangeArray(env, 0)),
      model(IloModel(env)),
      cplex(IloCplex(env)) {
    cplex.setParam(IloCplex::Param::Threads, 1);
    cplex.setParam(IloCplex::Param::MIP::Tolerances::Integrality, 0.0);
    if (time_limit > 0){
        has_time_limit = true;
        cplex.setParam(IloCplex::Param::TimeLimit, time_limit);
    }
}

void CPLEXSolver::load_problem(LPObjectiveSense sense,
                            const vector<LPVariable> &variables,
                            const vector<LPConstraint> &constraints) {
    IloNumExpr ilo_obj_expr(env);
    for (const LPVariable &var : variables) {
        if (var.is_integer) {
            IloNumVar ilo_var(env, var.lower_bound, var.upper_bound, ILOINT);
            ilo_variables.add(ilo_var);
            ilo_obj_expr += var.objective_coefficient * ilo_var;
        } else {
            IloNumVar ilo_var(env, var.lower_bound, var.upper_bound, ILOFLOAT);
            ilo_variables.add(ilo_var);
            ilo_obj_expr += var.objective_coefficient * ilo_var;
        }
    }
    if (sense == LPObjectiveSense::MINIMIZE) {
        ilo_objective.setExpr(ilo_obj_expr);
        ilo_objective.setSense(IloObjective::Minimize);
        model.add(ilo_objective);
    } else {
        ilo_objective.setExpr(ilo_obj_expr);
        ilo_objective.setSense(IloObjective::Maximize);
        model.add(ilo_objective);
    }

    for (const LPConstraint &constraint : constraints) {
        const vector<int> &vars = constraint.get_variables();
        const vector<double> &coeffs = constraint.get_coefficients();
        assert(vars.size() == coeffs.size());
        IloExpr ilo_constr_expr(env);
        for (size_t i = 0; i < vars.size(); i++) {
            ilo_constr_expr += coeffs[i] * ilo_variables[vars[i]];
        }
        IloRange ilo_constraint (env, constraint.get_lower_bound(), ilo_constr_expr, constraint.get_upper_bound());
        ilo_constraints.add(ilo_constraint);
    }
    model.add(ilo_constraints);
}

double CPLEXSolver::get_infinity() const {
    return IloInfinity;
}

void CPLEXSolver::set_objective_coefficients(const vector<double> &coefficients) {
    assert(static_cast<int>(coefficients.size()) == get_num_variables());
    for (size_t i = 0; i < coefficients.size(); i++) {
        set_objective_coefficient(i,coefficients[i]);
    }
    is_solved = false;
}

void CPLEXSolver::set_objective_coefficient(int index, double coefficient) {
    assert(index < get_num_variables());
    ilo_objective.setLinearCoef(ilo_variables[index], coefficient);
    is_solved = false;
}

void CPLEXSolver::set_constraint_lower_bound(int index, double bound) {
    assert(index < get_num_constraints());
    ilo_constraints[index].setLB(bound);
    is_solved = false;
}

void CPLEXSolver::set_constraint_upper_bound(int index, double bound) {
    assert(index < get_num_constraints());
    ilo_constraints[index].setUB(bound);
    is_solved = false;
}

void CPLEXSolver::set_variable_lower_bound(int index, double bound) {
    assert(index < get_num_variables());
    ilo_variables[index].setLB(bound);
    is_solved = false;
}

void CPLEXSolver::set_variable_upper_bound(int index, double bound) {
    assert(index < get_num_variables());
    ilo_variables[index].setUB(bound);
    is_solved = false;
}

void CPLEXSolver::solve() {
    cplex.extract(model);
    cplex.solve();
    is_solved = true;
}

bool CPLEXSolver::has_optimal_solution() const {
    assert(is_solved);
    return cplex.getStatus() == IloAlgorithm::Optimal;
}

bool CPLEXSolver::has_solution() const {
    assert(is_solved);
    if (cplex.getStatus() == IloAlgorithm::Optimal ||
            cplex.getStatus() == IloAlgorithm::Feasible){
        return true;
    }
    return false;
}

double CPLEXSolver::get_objective_value() const {
    assert(has_solution());
    return cplex.getObjValue();
}

vector<double> CPLEXSolver::extract_solution() const {
    assert(has_solution() && (has_time_limit || has_optimal_solution()));
    cout << "CPLEX status: " << cplex.getStatus() << endl;
    vector<double> solution;
    for (int var = 0; var < get_num_variables(); ++var) {
        if (ilo_variables[var].getType() == ILOFLOAT){
            solution.push_back(cplex.getValue(ilo_variables[var]));
        } else {
            solution.push_back(IloRound(cplex.getValue(ilo_variables[var])));
        }
    }
    return solution;
}

int CPLEXSolver::get_num_variables() const {
    return ilo_variables.getSize();
}

int CPLEXSolver::get_num_constraints() const {
    return ilo_constraints.getSize();
}

void CPLEXSolver::print_statistics() const {
    cout << "LP variables: " << get_num_variables() << endl;
    cout << "LP constraints: " << get_num_constraints() << endl;
}

#endif
}
