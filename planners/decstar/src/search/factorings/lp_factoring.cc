#include "lp_factoring.h"

#include "../option_parser.h"
#include "../plugin.h"
#include "../factoring.h"
#include "../lp/lp_solver.h"
#include "../lp/cplex_solver.h"
#include "../task_utils/causal_graph.h"
#include "../globals.h"
#include "../operator.h"
#include "../utils/hash.h"
#include "../utils/timer.h"

#include <algorithm>
#include <iostream>


using namespace std;


static const string CPLEX_ERROR_MEMORY_1 = "CPLEX Error  1001: Out of memory.\n";
static const string CPLEX_ERROR_MEMORY_2 = "not enough memory";

namespace lp_factoring {
LPFactoring::LPFactoring(const options::Options &opts) : Factoring(opts),
        cplex_time_limit(opts.get<int>("cplex_time_limit")),
        memory_limit(opts.get<int>("memory_limit")),
        lp_solver_type(opts.get<lp::LPSolverType>("lpsolver")),
        timer(utils::Timer()) {
#ifdef USE_CPLEX
    lp::CPLEXSolver solver;
#else
    lp::LPSolver solver(lp_solver_type);
#endif
    infty = solver.get_infinity();
}

bool LPFactoring::check_lp_size(size_t num_constraints, size_t /*num_variables*/) const {
    if (memory_limit != -1 && num_constraints >= (size_t) memory_limit * 2500){
        // this limit corresponds to around 10 million constraints with 4GB memory limit
        // the maximum-sized ILP that could be solved in the experiments with this limit
        // had around 5 million constraints
        cerr << "Too many LP constraints, aborting: " << num_constraints << endl;
        return false;
    }
    return true;
}

bool LPFactoring::check_timeout() const {
    if (factoring_timer.is_expired()){
        exit_if_timeout();
        return false;
    }
    return true;
}

vector<double> LPFactoring::solve_lp(lp::LPObjectiveSense sense,
        vector<lp::LPVariable> &variables,
        vector<lp::LPConstraint> &constraints,
        bool fail_on_out_of_memory,
        bool solve_lp_relaxation) const {

    int time_limit = cplex_time_limit > 0 ? cplex_time_limit : -1;
    if (factoring_timer.get_remaining_time() != numeric_limits<double>::infinity()){
        // TODO: this check seems to work; make sure that this is actually guaranteed by the standard
        int f_limit = factoring_timer.get_remaining_time();
        time_limit = time_limit > 0 ? min(f_limit, time_limit) : f_limit;
    }

    if (constraints.empty()){
        cout << "WARNING: no constraints specified. Adding dummy constraint to prevent errors." << endl;
        lp::LPConstraint dummy(0, 1);
        dummy.insert(0, 1);
        constraints.push_back(dummy);
    }

    if (solve_lp_relaxation && time_limit == -1){
        cout << "WARNING: time limit not supported when solving LP relaxation, limit will be ignored." << endl;
        time_limit = -1;
    }

#ifndef NDEBUG
    dump_lp(sense, variables, constraints);
#endif


#ifdef USE_CPLEX
    lp::CPLEXSolver solver(time_limit);
#else
    lp::LPSolver solver(lp_solver_type);
    if (time_limit != -1){
        cout << "WARNING: CPLEX not found, ignoring time limit." << endl;
        time_limit = -1;
    }
    fail_on_out_of_memory = !fail_on_out_of_memory; // HACK prevent unused variable error
#endif

    if (solve_lp_relaxation){
        for (auto &var : variables){
            var.is_integer = false;
        }
    }

#ifdef USE_CPLEX
    try {
#endif
        solver.load_problem(sense, variables, constraints);

        constraints = vector<lp::LPConstraint>(); // save memory TODO does this really make a difference?

        solver.print_statistics();

        cout << "LP construction time: " << timer << endl;

        timer.reset();

        solver.solve();

#ifdef USE_CPLEX
    } catch (const IloException &excpt) {
        string error_message = excpt.getMessage();
        if (!fail_on_out_of_memory && (error_message == CPLEX_ERROR_MEMORY_1 ||
                error_message == CPLEX_ERROR_MEMORY_2)) {
            // TODO refine the check
            cerr << "Error while factoring planning task: CPLEX out of Memory" << endl;
            return vector<double>();
        } else {
            cerr << "CPLEX error : " << error_message << endl;
            exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
        }
    }
#endif

    cout << "LP solving time: " << timer << endl;

    vector<double> solution;

    if (time_limit == -1) {
        if (!solver.has_optimal_solution()){
            cout << "no optimal solution to LP found, factoring failed" << endl;
            return solution;
        }
    } else {
#ifdef USE_CPLEX
        if (!solver.has_solution()){
            cout << "no solution to LP found, factoring failed" << endl;
            return solution;
        }
#endif
    }

    solution = solver.extract_solution();

    cout << "LP objective value: " << solver.get_objective_value() << endl;

    return solution;
}

void LPFactoring::dump_lp(lp::LPObjectiveSense sense, const vector<lp::LPVariable> &vars, const vector<lp::LPConstraint> &constrs) const {
    if (sense == lp::LPObjectiveSense::MAXIMIZE){
        cout << "Linear Program: maximize objective value" << endl;
    } else {
        cout << "Linear Program: minimize objective value" << endl;
    }
    cout << vars.size() << " variables" << endl;
    cout << constrs.size() << " constraints" << endl;

    if (vars.size() > 100 || constrs.size() > 100){
        cout << "WARNING: not printing LP as it is too big" << endl;
        return;
    }

    cout << "variables: " << endl;
    int i = 0;
    for (auto &var : vars){
        cout << "x" << i++ << ": range " << var.lower_bound << " .. " << var.upper_bound << "; objective value " << var.objective_coefficient << (var.is_integer ? ", is integer variable" : "") << endl;
    }

    cout << endl;

    for (auto &constr : constrs){
        cout << constr.get_lower_bound() << " < ";
        for (size_t i = 0; i < constr.get_variables().size(); ++i){
             cout << constr.get_coefficients()[i] << " * x" << constr.get_variables()[i] << (i < constr.get_variables().size() - 1 ? " + " : "");
        }
        cout << " < " << constr.get_upper_bound() << endl;
    }
}

void LPFactoring::add_options_to_parser(options::OptionParser &parser) {
    parser.add_option<int>(
        "cplex_time_limit",
        "CPLEX time limit in seconds",
        "-1"
    );

    parser.add_option<int>(
        "memory_limit",
        "CPLEX memory limit in MB",
        "-1"
    );

}
}
