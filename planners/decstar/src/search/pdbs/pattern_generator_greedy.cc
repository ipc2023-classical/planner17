#include "pattern_generator_greedy.h"

#include "pattern_filter.h"
#include "pattern_information.h"
#include "utils.h"

#include "../option_parser.h"
#include "../plugin.h"
#include "../task_proxy.h"

#include "../task_utils/variable_order_finder.h"
#include "../utils/logging.h"
#include "../utils/math.h"
#include "../utils/timer.h"

#include <iostream>

using namespace std;

namespace pdbs {
PatternGeneratorGreedy::PatternGeneratorGreedy(const Options &opts)
    : PatternGenerator(opts),
      max_states(opts.get<int>("max_states")),
      pattern_filter(get_pattern_filter_from_options(opts)) {
}

string PatternGeneratorGreedy::name() const {
    return "greedy pattern generator";
}

PatternInformation PatternGeneratorGreedy::compute_pattern(const shared_ptr<AbstractTask> &task) {
    TaskProxy task_proxy(*task);
    Pattern pattern;
    variable_order_finder::VariableOrderFinder order(
        task_proxy, variable_order_finder::GOAL_CG_LEVEL);
    VariablesProxy variables = task_proxy.get_variables();

    int size = 1;
    while (true) {
        if (order.done())
            break;
        int next_var_id = order.next();
        VariableProxy next_var = variables[next_var_id];
        int next_var_size = next_var.get_domain_size();

        if (!utils::is_product_within_limit(size, next_var_size, max_states))
            break;

        if (pattern_filter && !pattern_filter->can_add_var_to_pattern(pattern, next_var_id)) {
            continue;
        }

        pattern.push_back(next_var_id);
        size *= next_var_size;
    }

    PatternInformation pattern_info(task_proxy, move(pattern), log);

    if (pattern_filter) {
        if (!pattern_filter->is_pattern_ok(pattern_info.get_pattern())) {
            cerr << "generated pattern is illegal according to "
                    "pattern filter" << endl;
            utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
        }
    }

    return pattern_info;
}

static shared_ptr<PatternGenerator> _parse(OptionParser &parser) {
    parser.add_option<int>(
        "max_states",
        "maximal number of abstract states in the pattern database.",
        "1000000",
        Bounds("1", "infinity"));
    add_generator_options_to_parser(parser);
    add_pattern_filter_option_to_parser(parser);

    Options opts = parser.parse();
    if (parser.dry_run())
        return nullptr;

    return make_shared<PatternGeneratorGreedy>(opts);
}

static Plugin<PatternGenerator> _plugin("greedy", _parse);
}
