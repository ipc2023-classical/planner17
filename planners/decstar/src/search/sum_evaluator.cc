#include "sum_evaluator.h"

#include <limits>
#include <cassert>

#include "option_parser.h"
#include "plugin.h"

using namespace std;

SumEvaluator::SumEvaluator(const Options &opts)
    : CombiningEvaluator(opts.get_list<shared_ptr<Evaluator>>("evals")) {
}

SumEvaluator::SumEvaluator(const std::vector<shared_ptr<Evaluator>> &evals)
    : CombiningEvaluator(evals) {
}

SumEvaluator::~SumEvaluator() {
}

int SumEvaluator::combine_values(const vector<int> &values) {
    int result = 0;
    for (size_t i = 0; i < values.size(); ++i) {
        assert(values[i] >= 0);
        result += values[i];
        assert(result >= 0); // Check against overflow.
    }
    return result;
}



static shared_ptr<Evaluator> _parse(OptionParser &parser) {
    parser.document_synopsis("Sum evaluator",
                             "Calculates the sum of the sub-evaluators.");

    parser.add_list_option<shared_ptr<Evaluator>>("evals",
                                              "at least one scalar evaluator");
    Options opts = parser.parse();

    opts.verify_list_non_empty<shared_ptr<Evaluator>>("evals");

    if (parser.dry_run())
        return 0;
    else
        return make_shared<SumEvaluator>(opts);
}

static Plugin<Evaluator> _plugin("sum", _parse);
