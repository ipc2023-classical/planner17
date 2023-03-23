#include "max_scp_heuristic_exponential_broken.h"

#include "decoupled_pdb_utils.h"
#include "pattern_filter.h"
#include "types.h"

#include "../globals.h"
#include "../option_parser.h"
#include "../plugin.h"
#include "../task_proxy.h"

#include "../compliant_paths/cpg_storage.h"
#include "../compliant_paths/explicit_state_cpg.h"

#include "../cost_saturation/cost_partitioning_heuristic.h"
#include "../cost_saturation/cost_partitioning_heuristic_collection_generator.h"
#include "../cost_saturation/projection.h"
#include "../cost_saturation/saturated_cost_partitioning_heuristic.h"
#include "../cost_saturation/utils.h"

#include "../tasks/root_task.h"
#include "../task_utils/task_properties.h"

using namespace cost_saturation;
using namespace std;

namespace pdbs {
MaxSCPHeuristicExponentialBroken::MaxSCPHeuristicExponentialBroken(
    const options::Options &opts,
    Abstractions &&abstractions,
    CPHeuristics &&cp_heuristics)
    : MaxSCPHeuristic(opts, move(abstractions), move(cp_heuristics)) {
    unordered_set<LeafFactorID> aff_leaves;
    for (size_t abs = 0; abs < abstractions.size(); ++abs) {
        if (abstractions[abs]) {
            get_leaf_factors_of_pattern(patterns[abs], aff_leaves);
        }
    }
    affected_leaves = vector<LeafFactorID>(aff_leaves.begin(), aff_leaves.end());
}

void MaxSCPHeuristicExponentialBroken::compute_min_distance(
    const ExplicitStateCPG *cpg,
    vector<int> &member_state,
    int i,
    int sum_prices,
    vector<int> &min_d) const {

    int number_states = cpg->get_number_states(affected_leaves[i]);
    LeafStateHash id(0);
    while (number_states > 0){
        if (cpg->has_leaf_state(id, affected_leaves[i])){
            --number_states;

            set_leaf_facts(id, affected_leaves[i], member_state);

            int price = cpg->get_cost_of_state(id, affected_leaves[i]);
            if (i < static_cast<int>(affected_leaves.size()) - 1){
                // recursion
                compute_min_distance(cpg, member_state, i + 1, sum_prices + price, min_d);
            } else {
                // end recursion
                vector<int> member_abs_state_ids = get_abstract_state_ids(abstraction_functions, member_state);
                for (size_t cp_id = 0; cp_id < cp_heuristics.size(); ++cp_id) {
                    int sum_h = cp_heuristics[cp_id].compute_heuristic(member_abs_state_ids);
                    if (sum_h != INF) {
                        min_d[cp_id] = min(min_d[cp_id], sum_prices + price + sum_h);
                    }
                }
            }
        }
        ++id;
    }
}

int MaxSCPHeuristicExponentialBroken::compute_heuristic(const GlobalState &state) {
    int max_h;
    if (affected_leaves.empty()){
        // compute maximal heuristic value for the center state
        vector<int> abstract_state_ids = get_abstract_state_ids(
            abstraction_functions, state);
        max_h = compute_max_h(cp_heuristics, abstract_state_ids);
    } else {
        // compute minimum heuristic value across all member states
        vector<int> member_state(g_variable_domain.size(), -1);
        set_center_facts(state, member_state);
        vector<int> min_h (cp_heuristics.size(), numeric_limits<int>::max());
        const ExplicitStateCPG *prices = dynamic_cast<const ExplicitStateCPG*>(CPGStorage::storage->get_cpg(state));
        compute_min_distance(prices, member_state, 0, 0, min_h);
        max_h = *std::max_element(min_h.begin(),min_h.end());
    }
    assert(max_h >= 0);
    if (max_h == numeric_limits<int>::max()) {
        return DEAD_END;
    }
    return max_h;
}

static shared_ptr<Evaluator> _parse(OptionParser &parser) {
    prepare_parser_for_cost_partitioning_heuristic(parser);
    add_saturator_option(parser);
    add_order_options_to_parser(parser);
    Heuristic::add_options_to_parser(parser);

    options::Options opts = parser.parse();
    if (parser.help_mode())
        return nullptr;

    if (parser.dry_run())
        return nullptr;

    // TODO: in modern FD, use the task from options
//    shared_ptr<AbstractTask> task = opts.get<shared_ptr<AbstractTask>>("transform");
    shared_ptr<AbstractTask> task = tasks::g_root_task;
    TaskProxy task_proxy(*task);
    vector<int> costs = task_properties::get_operator_costs(task_proxy);
    Abstractions abstractions = generate_abstractions(
        task, opts.get_list<shared_ptr<AbstractionGenerator>>("abstractions"));
    CPFunction cp_function = get_cp_function_from_options(opts);
    CPHeuristics cp_heuristics =
        get_cp_heuristic_collection_generator_from_options(opts).generate_cost_partitionings(
            task_proxy, abstractions, costs, cp_function);
    return make_shared<MaxSCPHeuristicExponentialBroken>(
        opts,
        move(abstractions),
        move(cp_heuristics));
}

static Plugin<Evaluator> _plugin("max_scp_exp_broken", _parse);
}
