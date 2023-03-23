#include "sym_controller.h"

#include "debug_macros.h"
#include "../globals.h"
#include "opt_order.h"
#include "../option_parser.h"
#include "sym_state_space_manager.h"
#include "sym_decoupled_manager.h"

using namespace std;


namespace symbolic {

#ifdef USE_CUDD

SymController::SymController(const Options &opts)
    : vars(make_shared<SymVariables>(opts)), 
      mgrParams(opts), searchParams(opts) {
    mgrParams.print_options();
    searchParams.print_options();
}

SymController::SymController(const SymDecoupledManagerOptions &opts)
    : vars(make_shared<SymVariables>(opts)), mgrParams(opts.mgrParams), 
      searchParams(opts.searchParams) {
    mgrParams.print_options();
    searchParams.print_options();
}

    void SymController::initialize () {
        //TODO: This should be done before computing the var order and
	//initializing vars. Done here to avoid memory errors
        vars->init();
    }

void SymController::add_options_to_parser(OptionParser &parser, int maxStepTime, int maxStepNodes) {
    SymVariables::add_options_to_parser(parser);
    SymParamsMgr::add_options_to_parser(parser);
    SymParamsSearch::add_options_to_parser(parser, maxStepTime, maxStepNodes);
}

#endif

}
