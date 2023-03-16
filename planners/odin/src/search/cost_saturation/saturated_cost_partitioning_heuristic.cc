#include "saturated_cost_partitioning_heuristic.h"

#include "bdd_builder.h"
#include "task_info.h"
#include "abstraction.h"
#include "abstraction_generator.h"
#include "cost_partitioning_heuristic.h"
#include "cost_partitioning_heuristic_collection_generator.h"
#include "max_cost_partitioning_heuristic.h"
#include "utils.h"

#include "transition_cost_functions/abstract_transition_cost_function.h"
#include "transition_cost_functions/remaining_transition_cost_function.h"

#include "../option_parser.h"
#include "../plugin.h"

#include "../algorithms/partial_state_tree.h"
#include "../task_utils/task_properties.h"
#include "../utils/markup.h"

using namespace std;

namespace cost_saturation {
CostPartitioningHeuristic compute_saturated_cost_partitioning(
    const Abstractions &abstractions,
    const vector<int> &order,
    RemainingTransitionCostFunction &remaining_tcf,
    const vector<int> &,
    int max_num_transitions) {
    assert(abstractions.size() == order.size());
    CostPartitioningHeuristic cp_heuristic;
    for (int pos : order) {
        const Abstraction &abstraction = *abstractions[pos];
        if (abstraction.get_num_transitions() > max_num_transitions) {
            //cout << "si" << endl;
            // state-independent
            vector<int> costs(abstraction.get_num_operators());
            for (int op_id = 0; op_id < abstraction.get_num_operators(); ++op_id) {
                costs[op_id] = remaining_tcf.determine_remaining_costs(op_id);
            }
            vector<int> h_values = abstraction.compute_goal_distances(costs);
            vector<int> saocf = abstraction.compute_saturated_costs(h_values);
            cp_heuristic.add_h_values(pos, move(h_values));
            abstraction.reduce_remaining_costs_operators(saocf, remaining_tcf);
        } else {
            //cout << "sd" << endl;
            // state-dependent
            AbstractTransitionCostFunction satcf = abstraction.get_default_saturated_cost_function();
            vector<int> h_values = abstraction.compute_goal_distances(remaining_tcf, satcf);
            abstraction.compute_saturated_costs(h_values, satcf);
            cp_heuristic.add_h_values(pos, move(h_values));
            abstraction.reduce_remaining_costs(satcf, remaining_tcf);
        }
    }
    return cp_heuristic;
}

static void cap_h_values(int h_cap, vector<int> &h_values) {
    assert(h_cap != -INF);
    for (int &h : h_values) {
        if (h != INF) {
            h = min(h, h_cap);
        }
    }
}

CostPartitioningHeuristic compute_perim_saturated_cost_partitioning(
    const Abstractions &abstractions,
    const vector<int> &order,
    RemainingTransitionCostFunction &remaining_tcf,
    const vector<int> &abstract_state_ids,
    int max_num_transitions) {
    assert(abstractions.size() == order.size());
    CostPartitioningHeuristic cp_heuristic;
    for (int pos : order) {
        const Abstraction &abstraction = *abstractions[pos];
        if (abstraction.get_num_transitions() > max_num_transitions) {
            //cout << "si" << endl;
            // state-independent
            vector<int> costs(abstraction.get_num_operators());
            for (int op_id = 0; op_id < abstraction.get_num_operators(); ++op_id) {
                costs[op_id] = remaining_tcf.determine_remaining_costs(op_id);
            }
            vector<int> h_values = abstraction.compute_goal_distances(costs);
            int h_cap = h_values[abstract_state_ids[pos]];
            cap_h_values(h_cap, h_values);
            vector<int> saocf = abstraction.compute_saturated_costs(h_values);
            cp_heuristic.add_h_values(pos, move(h_values));
            abstraction.reduce_remaining_costs_operators(saocf, remaining_tcf);
        } else {
            //cout << "sd" << endl;
            // state-dependent
            AbstractTransitionCostFunction satcf = abstraction.get_default_saturated_cost_function();
            vector<int> h_values = abstraction.compute_goal_distances(remaining_tcf, satcf);
            int h_cap = h_values[abstract_state_ids[pos]];
            cap_h_values(h_cap, h_values);
            abstraction.compute_saturated_costs(h_values, satcf);
            cp_heuristic.add_h_values(pos, move(h_values));
            abstraction.reduce_remaining_costs(satcf, remaining_tcf);
        }
    }
    return cp_heuristic;
}

static CostPartitioningHeuristic compute_perimstar_saturated_cost_partitioning(
    const Abstractions &abstractions,
    const vector<int> &order,
    RemainingTransitionCostFunction &sdac,
    const vector<int> &abstract_state_ids,
    int max_num_transitions) {
    CostPartitioningHeuristic cp = compute_perim_saturated_cost_partitioning(
        abstractions, order, sdac, abstract_state_ids, max_num_transitions);
    cp.add(compute_saturated_cost_partitioning(
               abstractions, order, sdac, abstract_state_ids, max_num_transitions));
    return cp;
}

void add_saturator_option(OptionParser &parser) {
    parser.add_enum_option<Saturator>(
        "saturator",
        {"all", "perim", "perimstar"},
        "function that computes saturated cost functions",
        "all",
        {"preserve estimates of all states",
         "preserve estimates of states in perimeter around goal",
         "compute 'perim' first and then 'all' with remaining costs"});
}

void add_stcp_option(OptionParser &parser) {
    parser.add_option<int>(
        "max_num_transitions",
        "The maximum number of transitions per abstraction",
        "infinity",
        Bounds("0", "infinity"));
}

TCPFunction get_cp_function_from_options(const Options &opts) {
    Saturator saturator_type = opts.get<Saturator>("saturator");
    TCPFunction cp_function = nullptr;
    if (saturator_type == Saturator::ALL) {
        cp_function = compute_saturated_cost_partitioning;
    } else if (saturator_type == Saturator::PERIM) {
        cp_function = compute_perim_saturated_cost_partitioning;
    } else if (saturator_type == Saturator::PERIMSTAR) {
        cp_function = compute_perimstar_saturated_cost_partitioning;
    } else {
        ABORT("Invalid value for saturator.");
    }
    return cp_function;
}

static shared_ptr<Evaluator> _parse(OptionParser &parser) {
    parser.document_synopsis(
        "Saturated transition cost partitioning",
        "Compute the maximum over multiple saturated transition cost partitioning "
        "heuristics using different orders. For details, see " +
        utils::format_conference_reference(
            {"Dominik Drexler", "Jendrik Seipp", "David Speck"},
            "Subset-Saturated Transition Cost Partitioning",
            "https://rlplab.com/papers/drexler-et-al-icaps2021.pdf",
            "Proceedings of the Thirty-First International Conference on Automated Planning and Scheduling (ICAPS 2021)",
            "131-139",
            "AAAI Press",
            "2021"));
    parser.document_note(
        "Difference to cegar()",
        "The cegar() plugin computes a single saturated cost partitioning over "
        "Cartesian abstraction heuristics. In contrast, "
        "saturated_cost_partitioning() supports computing the maximum over "
        "multiple saturated cost partitionings using different heuristic "
        "orders, and it supports both Cartesian abstraction heuristics and "
        "pattern database heuristics. While cegar() interleaves abstraction "
        "computation with cost partitioning, saturated_cost_partitioning() "
        "computes all abstractions using the original costs.");

    prepare_parser_for_cost_partitioning_heuristic(parser);
    add_saturator_option(parser);
    add_stcp_option(parser);
    add_order_options_to_parser(parser);

    options::Options opts = parser.parse();
    if (parser.help_mode())
        return nullptr;

    if (parser.dry_run())
        return nullptr;

    shared_ptr<AbstractTask> task = opts.get<shared_ptr<AbstractTask>>("transform");
    TaskProxy task_proxy(*task);
    vector<int> ocf = task_properties::get_operator_costs(task_proxy);
    shared_ptr<cost_saturation::TaskInfo> task_info =
        make_shared<cost_saturation::TaskInfo>(task_proxy);
    shared_ptr<cost_saturation::BddBuilder> bdd_builder =
        make_shared<cost_saturation::BddBuilder>(task_info);
    unique_ptr<DeadEnds> dead_ends = utils::make_unique_ptr<DeadEnds>();
    Abstractions abstractions = generate_abstractions(
        task, opts.get_list<shared_ptr<AbstractionGenerator>>("abstractions"), task_info, bdd_builder, dead_ends.get());
    TCPFunction tcp_function = get_cp_function_from_options(opts);
    int max_num_transitions = opts.get<int>("max_num_transitions");
    RemainingTransitionCostFunction remaining_tcf(task_info, bdd_builder);
    vector<CostPartitioningHeuristic> cp_heuristics =
        get_cp_heuristic_collection_generator_from_options(opts).generate_cost_partitionings(
            task_proxy, abstractions, ocf, remaining_tcf, tcp_function, max_num_transitions);
    return make_shared<MaxCostPartitioningHeuristic>(
        opts,
        move(abstractions),
        move(cp_heuristics),
        move(dead_ends));
}

static Plugin<Evaluator> _plugin("stcp", _parse, "heuristics_cost_partitioning");
}

/*
./fast-downward.py --debug --keep-sas-file --transform-task preprocess-h2 ../../benchmarks/downward-benchmarks-master/gripper/prob01.pddl --search "astar(stcp([projections(sys_scp(max_time=100, max_time_per_restart=10)),cartesian()], saturator=all, max_time=1, orders=greedy_orders(), max_orders=2), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))"

ml buildenv-intel/2018a-eb
ml Automake/1.16.1
ml CMake/3.23.2

*/