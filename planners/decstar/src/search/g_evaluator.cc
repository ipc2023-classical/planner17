#include "g_evaluator.h"

#include "option_parser.h"
#include "plugin.h"

using namespace std;

GEvaluator::GEvaluator() {
}

GEvaluator::~GEvaluator() {
}

void GEvaluator::evaluate(int g, bool) {
    value = g;
}

bool GEvaluator::is_dead_end() const {
    return false;
}

bool GEvaluator::dead_end_is_reliable() const {
    return true;
}

int GEvaluator::get_value() const {
    return value;
}

static shared_ptr<Evaluator> _parse(OptionParser &parser) {
    parser.document_synopsis("g-value evaluator",
                             "Returns the current g-value of the search.");
    parser.parse();
    if (parser.dry_run())
        return 0;
    else
        return make_shared<GEvaluator>();
}

static Plugin<Evaluator> _plugin("g", _parse);
