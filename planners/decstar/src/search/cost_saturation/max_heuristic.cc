#include "max_heuristic.h"

#include "abstraction.h"
#include "max_cost_partitioning_heuristic.h"
#include "utils.h"

#include "../option_parser.h"
#include "../plugin.h"

#include "../tasks/root_task.h"
#include "../task_utils/task_properties.h"

using namespace std;

namespace cost_saturation {
MaxHeuristic::MaxHeuristic(const Options &opts, Abstractions abstractions)
    : Heuristic(opts) {
    // TODO: in modern FD, this is the task of the heuristic
    vector<int> costs = task_properties::get_operator_costs(TaskProxy(*tasks::g_root_task));
    for (auto &abstraction : abstractions) {
        h_values_by_abstraction.push_back(abstraction->compute_goal_distances(costs));
        abstraction_functions.push_back(abstraction->extract_abstraction_function());
    }
}

int MaxHeuristic::compute_heuristic(const GlobalState &ancestor_state) {
    int max_h = 0;
    for (size_t i = 0; i < abstraction_functions.size(); ++i) {
        int local_state_id = abstraction_functions[i]->get_abstract_state_id(ancestor_state);
        int h = h_values_by_abstraction[i][local_state_id];
        assert(h >= 0);
        if (h == INF) {
            return DEAD_END;
        }
        max_h = max(max_h, h);
    }
    return max_h;
}


static shared_ptr<Heuristic> _parse(OptionParser &parser) {
    parser.document_synopsis(
        "Maximum over abstractions",
        "Maximize over a set of abstraction heuristics.");

    prepare_parser_for_cost_partitioning_heuristic(parser);

    Options opts = parser.parse();
    if (parser.help_mode())
        return nullptr;

    if (parser.dry_run())
        return nullptr;

    Abstractions abstractions = generate_abstractions(
        // TODO: in modern FD, use the task from options
//        opts.get<shared_ptr<AbstractTask>>("transform"),
        tasks::g_root_task,
        opts.get_list<shared_ptr<AbstractionGenerator>>("abstractions"));

    return make_shared<MaxHeuristic>(opts, move(abstractions));
}

static Plugin<Evaluator> _plugin("maximize", _parse, "heuristics_cost_partitioning");
}
