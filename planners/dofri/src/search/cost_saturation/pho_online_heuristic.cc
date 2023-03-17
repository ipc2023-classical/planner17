#include "pho_online_heuristic.h"

#include <fstream>
#include <set>

#include "../algorithms/partial_state_tree.h"
#include "../option_parser.h"
#include "../plugin.h"
#include "../task_utils/task_properties.h"
#include "../utils/markup.h"
#include "../utils/rng_options.h"
#include "abstraction.h"
#include "cost_partitioning_heuristic_collection_generator.h"
#include "uniform_cost_partitioning_heuristic.h"
#include "utils.h"

using namespace std;

namespace cost_saturation {
// TODO: avoid code duplication

PhOOnlineHeuristic::PhOOnlineHeuristic(const options::Options &opts,
                                       Abstractions &abstractions,
                                       TaskProxy &task_proxy,
                                       unique_ptr<DeadEnds> &&dead_ends_)
    : Heuristic(opts),
      dead_ends(move(dead_ends_)),
      lp_solver(opts.get<lp::LPSolverType>("lpsolver")),
      log(utils::get_log_from_options(opts)),
      interval(opts.get<int>("interval")),
      max_size_kb(opts.get<int>("max_size")),
      costs(task_properties::get_operator_costs(task_proxy)),
      size_kb(0),
      num_evaluated_states(0),
      num_scps_computed(0),
      saturated(true) {
    for (const auto &cp : cp_heuristics) {
        size_kb += cp.estimate_size_in_kb();
    }
    const double infinity = lp_solver.get_infinity();
    const size_t num_abstractions = abstractions.size();
    const size_t num_operators = costs.size();
    assert(num_abstractions > 0);
    assert(num_operators > 0);

    vector<vector<int>> saturated_costs_by_abstraction;
    named_vector::NamedVector<lp::LPVariable> variables;
    saturated_costs_by_abstraction.reserve(num_abstractions);
    h_values_by_abstraction.reserve(num_abstractions);
    variables.reserve(num_abstractions);
    vector<int> zero_costs(num_operators, 0);
    for (size_t i = 0; i < num_abstractions; ++i) {
        const Abstraction &abstraction = *abstractions[i];
        vector<int> h_values = abstraction.compute_goal_distances(costs);
        h_values_by_abstraction.push_back(h_values);
        if (saturated) {  // allways true, option was removed
            vector<int> saturated_costs =
                abstraction.compute_saturated_costs(h_values);
            saturated_costs_by_abstraction.push_back(move(saturated_costs));
        }
        // compute dead_end cp
        vector<int> h_values_dend = abstractions[i]->compute_goal_distances(zero_costs);
        dead_end_heuristic.add_h_values(i, move(h_values_dend));
        // prepare lp variables
        variables.emplace_back(0, infinity, 0);
        // throw away abstract transition systems, we only need the abstraction function
        abstraction_functions.push_back(
            abstractions[i]->extract_abstraction_function());
    }

    assert(abstraction_functions.size() == abstractions.size());
    assert(abstraction_functions.size() == num_abstractions);
    assert(saturated_costs_by_abstraction.size() == num_abstractions);

    named_vector::NamedVector<lp::LPConstraint> constraints;
    constraints.reserve(num_operators);
    for (size_t op_id = 0; op_id < num_operators; ++op_id) {
        lp::LPConstraint constraint(-infinity, costs[op_id]);
        for (size_t i = 0; i < num_abstractions; ++i) {
            if (saturated) {
                int scf_h = saturated_costs_by_abstraction[i][op_id];
                if (scf_h == -INF) {
                    // The constraint is always satisfied and we can ignore it.
                    continue;
                }
                if (scf_h != 0) {
                    constraint.insert(i, scf_h);
                }
            } else if (abstractions[i]->operator_is_active(op_id) &&
                       costs[op_id] != 0) {
                constraint.insert(i, costs[op_id]);
            }
        }
        if (!constraint.empty()) {
            constraints.push_back(move(constraint));
        }
    }

    // check abstractions for the same scf
    assert(num_abstractions > 0);
    lp::LinearProgram lp(lp::LPObjectiveSense::MAXIMIZE, move(variables),
                         move(constraints), lp_solver.get_infinity());
    lp_solver.load_problem(lp);
    // if (parse_instance) {
    //     converter.parse_instance_file("instance.txt");
    // }
}

PhOOnlineHeuristic::~PhOOnlineHeuristic() {
    print_intermediate_statistics();
    print_final_statistics();
}

vector<double> PhOOnlineHeuristic::compute_pho_weights(const vector<int> &abstract_state_ids) {
    int num_abstractions = abstraction_functions.size();
    for (int i = 0; i < num_abstractions; ++i) {
        int h = h_values_by_abstraction[i][abstract_state_ids[i]];
        if (h == INF) {
            // State is unsolvable.
            return vector<double>(num_abstractions, -1.0);
        }
        lp_solver.set_objective_coefficient(i, h);
    }
    lp_solver.solve();
    assert(lp_solver.has_optimal_solution());
    return lp_solver.extract_solution();
}

// duplicated from PhoOffline because of abstraction membership. Can both be
// extracted into one Pho class ?
CostPartitioningHeuristic PhOOnlineHeuristic::compute_cost_partitioning(vector<double> weights) {
    int num_abstractions = abstraction_functions.size();
    if (log.is_at_least_debug()) {
        log << "Objective value: " << lp_solver.get_objective_value() << endl;
        log << "Solution: " << weights << endl;
    }
    CostPartitioningHeuristic cp_heuristic;
    if (weights[0] != -1) {  // dead_end_heuristic_indicator
        for (int i = 0; i < num_abstractions; ++i) {
            double weight = weights[i];
            if (weight == 0.0) {
                // This abstraction is assigned a weight of zero, so we can skip it.
                continue;
            }
            vector<int> weighted_h_values;
            weighted_h_values.reserve(h_values_by_abstraction[i].size());
            for (int h : h_values_by_abstraction[i]) {
                assert(weight > 0);
                weighted_h_values.push_back(h == INF ? INF : weight * h);
            }
            cp_heuristic.add_h_values(i, move(weighted_h_values));
        }
        return cp_heuristic;
    }
    return dead_end_heuristic;
}

// shares a lot of code with saturated_cost_partitioning_online_heuristic. Is it
// possible to build an online equivalent of max_cost_heuristic_collection and
// cost_partitioning_heuristic_collection_generator (would have to be both
// combined, their separation prevents online usage) to avoid code duplication ?
// Allows future use cases with Optimal Cost Partitioning.
int PhOOnlineHeuristic::compute_heuristic(const State &ancestor_state) {
    State state = convert_ancestor_state(ancestor_state);

    if (dead_ends && dead_ends->subsumes(state)) {
        return DEAD_END;
    }

    vector<int> abstract_state_ids;

    abstract_state_ids = get_abstract_state_ids(abstraction_functions, state);

    int max_h = -1;
    int best_id = -1;
    int current_id = 0;
    for (const CostPartitioningHeuristic &cp_heuristic : cp_heuristics) {
        int sum_h = cp_heuristic.compute_heuristic(abstract_state_ids);
        if (sum_h > max_h) {
            max_h = sum_h;
            best_id = current_id;
        }
        if (max_h == INF) {
            break;
        }
        ++current_id;
    }
    if (best_id != -1) {
        num_best_cp[best_id]++;
    }
    ++num_evaluated_states;
    if (max_h == INF) {
        return DEAD_END;
    }
    if ((num_evaluated_states - 1) % interval == 0) {
        CostPartitioningHeuristic cost_partitioning;
        vector<double> pho_weights = compute_pho_weights(abstract_state_ids);
        cost_partitioning = compute_cost_partitioning(pho_weights);
        ++num_scps_computed;

        if (log.is_at_least_debug()) {
            log << abstract_state_ids << endl;
            log << "CP value: " << cost_partitioning.compute_heuristic(abstract_state_ids)
                << endl;
            log << cost_partitioning.get_num_heuristic_values() << endl;
            log << cost_partitioning.get_num_lookup_tables() << endl;
        }

        int new_h = cost_partitioning.compute_heuristic(abstract_state_ids);

        if (new_h > max_h) {
            size_kb += cost_partitioning.estimate_size_in_kb();
            cp_heuristics.push_back(move(cost_partitioning));
            num_best_cp.resize(cp_heuristics.size(), 1);
            if (best_id > -1) {
                num_best_cp[best_id]--;
            }
            max_h = new_h;
            print_intermediate_statistics();
        }
    }
    if (max_h == INF) {
        return DEAD_END;
    }
    // TODO this is copied from ScaledCostPartitioningHeuristic::compute_heuristic
    // this SHOULD not be duplicated we use the class to scale the task so we
    // should use it to compute the result.
    return static_cast<int>(ceil((max_h / COST_FACTOR) - epsilon));
}

void PhOOnlineHeuristic::print_intermediate_statistics() const {
    utils::g_log << "Evaluated states: " << num_evaluated_states
                 << ", selected states: " << num_scps_computed
                 << ", stored cost partitionings: " << cp_heuristics.size()
                 << ", heuristic size: " << size_kb << " KB" << endl;
}

void PhOOnlineHeuristic::print_final_statistics() const {
    // Print the number of stored lookup tables.
    int num_stored_lookup_tables = 0;
    for (const auto &cp_heuristic : cp_heuristics) {
        num_stored_lookup_tables += cp_heuristic.get_num_lookup_tables();
    }
    utils::g_log << "Stored lookup tables: " << num_stored_lookup_tables << endl;

    // Print the number of stored values.
    int num_stored_values = 0;
    for (const auto &cp_heuristic : cp_heuristics) {
        num_stored_values += cp_heuristic.get_num_heuristic_values();
    }
    utils::g_log << "Stored values: " << num_stored_values << endl;

    utils::g_log << "Evaluated states: " << num_evaluated_states << endl;
    utils::g_log << "Estimated heuristic size: " << size_kb << " KB" << endl;
    utils::g_log << "Computed cost partitionings: " << num_scps_computed << endl;
    utils::g_log << "Stored CPs: " << cp_heuristics.size() << endl;
    utils::g_log << "Number of times cp was the best: " << num_best_cp << endl;
}

static shared_ptr<Heuristic> _parse(OptionParser &parser) {
    parser.document_synopsis(
        "Online post hoc optimization",
        "Compute the maximum over multiple PhO heuristics collected online.");

    // The online version is not consistent.
    bool consistent = false;
    prepare_parser_for_cost_partitioning_heuristic(parser, consistent);
    utils::add_log_options_to_parser(parser);

    parser.add_option<int>("max_size",
                           "maximum (estimated) heuristic size in KiB",
                           "infinity", Bounds("0", "infinity"));
    parser.add_option<double>("max_number",
                              "maximum number of stored Cost Partitionings",
                              "infinity", Bounds("0", "infinity"));
    parser.add_option<bool>("saturated", "saturate costs", "true");
    parser.add_option<int>(
        "interval",
        "select every i-th evaluated state for online diversification", "10K",
        Bounds("1", "infinity"));
    lp::add_lp_solver_option_to_parser(parser);

    Options opts = parser.parse();
    if (parser.help_mode())
        return nullptr;

    if (parser.dry_run())
        return nullptr;

    shared_ptr<AbstractTask> scaled_costs_task =
        get_scaled_costs_task(opts.get<shared_ptr<AbstractTask>>("transform"));
    unique_ptr<DeadEnds> dead_ends = utils::make_unique_ptr<DeadEnds>();
    Abstractions abstractions = generate_abstractions(
        scaled_costs_task,
        opts.get_list<shared_ptr<AbstractionGenerator>>("abstractions"),
        dead_ends.get());
    TaskProxy task_proxy(*scaled_costs_task);
    opts.set<shared_ptr<AbstractTask>>("transform", scaled_costs_task);

    // TaskProxy task_proxy(*scaled_costs_task);

    return make_shared<PhOOnlineHeuristic>(opts, abstractions, task_proxy, move(dead_ends));
}

static Plugin<Evaluator> _plugin("pho_online", _parse,
                                 "heuristics_cost_partitioning");
}  // namespace cost_saturation
