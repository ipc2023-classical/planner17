#ifndef SYMBOLIC_SYM_CONTROLLER_H
#define SYMBOLIC_SYM_CONTROLLER_H

//Shared class for SymEngine and smas_heuristic

#include "sym_state_space_manager.h"
#include "sym_enums.h"
#include "sym_params_search.h"
#include "solution_bound.h"

#include <vector>
#include <memory>
#include <limits>

namespace options {
class OptionParser;
class Options;
}

namespace symbolic {

#ifdef USE_CUDD

class SymSolution;
class SymVariables;
class SymPH;

class SymDecoupledManagerOptions; 

class SymController : public SolutionBound {
protected:
    std::shared_ptr<SymVariables> vars; //The symbolic variables are declared here

    SymParamsMgr mgrParams; //Parameters for SymStateSpaceManager configuration.
    SymParamsSearch searchParams; //Parameters to search the original state space

public:
    SymController(const Options &opts);
    SymController(const SymDecoupledManagerOptions &opts);

    virtual ~SymController() {}

    void initialize();

    inline SymVariables *getVars() {
        return vars.get();
    }

    inline const SymParamsMgr &getMgrParams() const {
        return mgrParams;
    }

    inline const SymParamsSearch &getSearchParams() const {
        return searchParams;
    }

    static void add_options_to_parser(OptionParser &parser,
                                      int maxStepTime, int maxStepNodes);
};

#endif

}
#endif
