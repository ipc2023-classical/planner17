#include "weighted_evaluator.h"

#include <cstdlib>
#include <sstream>

#include "option_parser.h"
#include "plugin.h"

using namespace std;

WeightedEvaluator::WeightedEvaluator(const Options &opts)
    : evaluator(opts.get<shared_ptr<Evaluator>>("eval")),
      w(opts.get<int>("weight")) {
}

WeightedEvaluator::WeightedEvaluator(shared_ptr<Evaluator> eval, int weight)
    : evaluator(eval), w(weight) {
}


WeightedEvaluator::~WeightedEvaluator() {
}

void WeightedEvaluator::evaluate(int g, bool preferred) {
    evaluator->evaluate(g, preferred);
    value = w * evaluator->get_value();
    // TODO: catch overflow?
}

bool WeightedEvaluator::is_dead_end() const {
    return evaluator->is_dead_end();
}

bool WeightedEvaluator::dead_end_is_reliable() const {
    return evaluator->dead_end_is_reliable();
}

int WeightedEvaluator::get_value() const {
    return value;
}

void WeightedEvaluator::get_involved_heuristics(std::set<Heuristic*> &hset) {
    evaluator->get_involved_heuristics(hset);
}

static shared_ptr<Evaluator> _parse(OptionParser &parser) {
    parser.document_synopsis(
        "Weighted evaluator",
        "Multiplies the value of the scalar evaluator with the given weight.");
    parser.add_option<shared_ptr<Evaluator>>("eval", "scalar evaluator");
    parser.add_option<int>("weight", "weight");
    Options opts = parser.parse();
    if (parser.dry_run())
        return 0;
    else
        return make_shared<WeightedEvaluator>(opts);
}

static Plugin<Evaluator> _plugin("weight", _parse);
