#include "constraint_generator.h"

#include "../heuristic.h"
#include "../plugin.h"

using namespace std;

namespace operator_counting {
void ConstraintGenerator::initialize_constraints(
    const shared_ptr<AbstractTask> &, lp::LinearProgram &) {
}

void ConstraintGenerator::cache_heuristic(const State &, lp::LPSolver &, double h) {
}

int ConstraintGenerator::get_cached_heuristic_value(const State &) {
    // return Heuristic::NO_VALUE; value is protected
    return -2;  // Todo NO_VALUE would be preferred here
}

void ConstraintGenerator::set_active_state(const State &) {}

static PluginTypePlugin<ConstraintGenerator> _type_plugin(
    "ConstraintGenerator",
    // TODO: Replace empty string by synopsis for the wiki page.
    "");
}
