#include "max_scp_heuristic_approximate.h"

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

#include "../utils/logging.h"

using namespace cost_saturation;
using namespace std;

namespace pdbs {
MaxSCPHeuristicApproximate::MaxSCPHeuristicApproximate(
    const options::Options &opts,
    Abstractions &&abstractions,
    CPHeuristics &&cp_heuristics)
    : MaxSCPHeuristic(opts, move(abstractions), move(cp_heuristics)),
      polynomial_decoupled_pdb(opts.get<bool>("polynomial_decoupled_pdb")) {
    // TODO: assertion for approx that all patterns used in each CPHeuristic only affect one leaf

    affected_leaves_by_abstraction.reserve(abstraction_functions.size());
    affected_pattern_var_indices_by_leaf_by_abstraction.reserve(abstraction_functions.size());
    for (size_t abs = 0; abs < abstraction_functions.size(); ++abs) {
        if (abstraction_functions[abs]) {
            unordered_set<LeafFactorID> aff_leaves = get_leaf_factors_of_pattern(patterns[abs]);
            affected_leaves_by_abstraction.emplace_back(aff_leaves.begin(), aff_leaves.end());
            affected_pattern_var_indices_by_leaf_by_abstraction.push_back(compute_affected_pattern_var_indices_by_leaf(patterns[abs]));
        } else {
            affected_leaves_by_abstraction.emplace_back();
            affected_pattern_var_indices_by_leaf_by_abstraction.emplace_back();
        }
    }

#ifndef NDEBUG
    for (const auto &cp_heuristic : cp_heuristics) {
        unordered_set<LeafFactorID> affected_leaves_so_far;
        for (const auto &lookup_table: cp_heuristic.lookup_tables) {
            const vector<LeafFactorID> &abs_aff_leaves = affected_leaves_by_abstraction[lookup_table.abstraction_id];
            bool projection_leaf_disjoint = true;
            for (LeafFactorID leaf_id: abs_aff_leaves) {
                if (affected_leaves_so_far.count(leaf_id)) {
                    projection_leaf_disjoint = false;
                    break;
                }
            }
            assert(projection_leaf_disjoint);
        }
    }
#endif
}

static void compute_min_distance_abs_states(
    const vector<int> &distances,
    const vector<vector<pair<int, int>>> &abs_leaf_state_hash_prices,
    int partial_index,
    int sum_prices,
    int i,
    int &min_d) {

    if (min_d == 0 || sum_prices >= min_d){
        return;
    }

    if (i == static_cast<int>(abs_leaf_state_hash_prices.size())){
        int h = distances[partial_index];
        if (h != numeric_limits<int>::max()){
            min_d = min(min_d, sum_prices + h);
        }
        return;
    }

    for (const auto &[partial_leaf_index, price] : abs_leaf_state_hash_prices[i]){
        compute_min_distance_abs_states(distances,
                                        abs_leaf_state_hash_prices,
                                        partial_index + partial_leaf_index,
                                        sum_prices + price,
                                        i + 1,
                                        min_d);
    }
}

static void compute_min_distance_mem_states(
    const ExplicitStateCPG *cpg,
    const vector<int> &distances,
    const ProjectionFunction &abstraction_function,
    const vector<LeafFactorID> &affected_leaves,
    vector<int> &member_state,
    int i,
    int sum_prices,
    int &min_d) {

    if (sum_prices >= min_d){
        // we cannot possibly improve the heuristic
        return;
    }

    LeafFactorID leaf = affected_leaves[i];

    int number_states = cpg->get_number_states(leaf);
    LeafStateHash id(0);
    while (number_states > 0){
        if (cpg->has_leaf_state(id, leaf)){
            --number_states;

            set_leaf_facts(id, leaf, member_state);

            int price = cpg->get_cost_of_state(id, leaf);
            if (i < static_cast<int>(affected_leaves.size()) - 1){
                // recursion
                compute_min_distance_mem_states(cpg, distances, abstraction_function, affected_leaves, member_state,
                                                i +
                                                1,
                                                sum_prices +
                                                price, min_d);
            } else {
                // end recursion
                int h = distances[abstraction_function.get_abstract_state_id(member_state)];
                if (h != numeric_limits<int>::max()) {
                    min_d = min(min_d, sum_prices + price + h);
                }
            }
        }
        ++id;
    }
}

int MaxSCPHeuristicApproximate::compute_pdb_value_with_prices(
    const GlobalState &state,
    const CostPartitioningHeuristic::LookupTable &lookup_table,
    const ExplicitStateCPG* prices) const {
    int min_h = numeric_limits<int>::max();
    int abs_id = lookup_table.abstraction_id;
    const vector<LeafFactorID> &affected_leaves = affected_leaves_by_abstraction[abs_id];
    if (affected_leaves.empty()) {
        vector<int> abstract_state_ids = get_abstract_state_ids(
            abstraction_functions, state);
        assert(utils::in_bounds(abs_id, abstract_state_ids));
        int state_id = abstract_state_ids[abs_id];
        assert(utils::in_bounds(state_id, lookup_table.h_values));
        min_h = lookup_table.h_values[state_id];
    } else {
        if (polynomial_decoupled_pdb) {
            const vector<ProjectionFunction::VariableAndMultiplier> &variables_and_multipliers =
                abstraction_functions[abs_id]->get_variables_and_multipliers();
            vector<vector<pair<int, int>>> abs_leaf_state_hash_prices;
            int center_index = 0;
            const vector<int> &pattern = patterns[abs_id];
            for (int i = 0; i < static_cast<int>(pattern.size()); ++i){
                LeafFactorID factor = g_belongs_to_factor[pattern[i]];
                if (factor == LeafFactorID::CENTER){
                    assert(pattern[i] == variables_and_multipliers[i].pattern_var);
                    center_index += variables_and_multipliers[i].hash_multiplier * state[pattern[i]];
                }
            }
            const vector<vector<int>> &affected_pattern_var_indices_by_leaf = affected_pattern_var_indices_by_leaf_by_abstraction[abs_id];
            for (LeafFactorID leaf : affected_leaves) {
                vector<pair<int, int>> hash_prices_for_leaf;
                int num_reached_lstates = prices->get_number_states(leaf);
                for (LeafStateHash id(0); id < g_state_registry->size(leaf); ++id){
                    if (prices->has_leaf_state(id, leaf)) {
                        LeafState lstate = g_state_registry->lookup_leaf_state(id, leaf);
                        int partial_index = 0;
                        for (int pattern_var_index: affected_pattern_var_indices_by_leaf[leaf]) {
                            assert(pattern[pattern_var_index] == variables_and_multipliers[pattern_var_index].pattern_var);
                            partial_index += variables_and_multipliers[pattern_var_index].hash_multiplier * lstate[pattern[pattern_var_index]];
                        }
                        hash_prices_for_leaf.emplace_back(partial_index, prices->get_cost_of_state(id, leaf));
                        if (--num_reached_lstates == 0){
                            break;
                        }
                    }
                }
                assert(affected_pattern_var_indices_by_leaf[leaf].size() <= g_leaves[leaf].size());
                if (affected_pattern_var_indices_by_leaf[leaf].size() != g_leaves[leaf].size()) {
                    // Leaf not fully covered by pattern
                    sort(hash_prices_for_leaf.begin(), hash_prices_for_leaf.end());
                    hash_prices_for_leaf.erase(
                        unique(hash_prices_for_leaf.begin(), hash_prices_for_leaf.end(), [](const auto &lhs, const auto &rhs) {
                            // Treat elements of hash_prices_for_leaf equivalent if their first entry, the abstract state hash, is equivalent.
                            return lhs.first == rhs.first;
                        }),
                        hash_prices_for_leaf.end());
                }
                abs_leaf_state_hash_prices.push_back(move(hash_prices_for_leaf));
            }
            compute_min_distance_abs_states(
                lookup_table.h_values,
                abs_leaf_state_hash_prices,
                center_index,
                0,
                0,
                min_h);
        } else {
            // used to call get_value(vector<int>) for all member states
            vector<int> member_state(g_variable_domain.size(), -1);
            set_center_facts(state, member_state);
            compute_min_distance_mem_states(
                prices,
                lookup_table.h_values,
                *abstraction_functions[abs_id],
                affected_leaves_by_abstraction[abs_id],
                member_state,
                0,
                0,
                min_h);
        }
    }
    return min_h;
}

int MaxSCPHeuristicApproximate::compute_heuristic(const GlobalState &state) {
    int max_h = 0;
    const ExplicitStateCPG *prices = dynamic_cast<const ExplicitStateCPG*>(CPGStorage::storage->get_cpg(state));
    for (const auto &cp_heuristic : cp_heuristics) {
        int sum_h = 0;
        for (const auto &lookup_table : cp_heuristic.lookup_tables) {
            int h = compute_pdb_value_with_prices(state, lookup_table, prices);
            if (h == INF) {
                return DEAD_END;
            }
            sum_h += h;
            assert(sum_h >= 0);
        }

        if (sum_h > max_h) {
            max_h = sum_h;
        }
        if (max_h == INF) {
            break;
        }
    }
    assert(max_h >= 0);
    if (max_h == INF) {
        return DEAD_END;
    }
    return max_h;
}

CostPartitioningHeuristic compute_saturated_cost_partitioning_leaf_disjoint(
    const Abstractions &abstractions,
    const vector<int> &order,
    vector<int> &remaining_costs,
    const vector<int> &) {
    assert(abstractions.size() == order.size());
    CostPartitioningHeuristic cp_heuristic;
    unordered_set<LeafFactorID> affected_leaves_so_far;
    for (int pos : order) {
        const Projection *projection = dynamic_cast<const Projection *>(abstractions[pos].get());
        unordered_set<LeafFactorID> projection_leaves = get_leaf_factors_of_pattern(projection->get_pattern());
        bool projection_leaf_disjoint = true;
        for (LeafFactorID leaf_id : projection_leaves) {
            if (affected_leaves_so_far.count(leaf_id)) {
                projection_leaf_disjoint = false;
                break;
            }
        }
        if (projection_leaf_disjoint) {
            vector<int> h_values = projection->compute_goal_distances(remaining_costs);
            vector<int> saturated_costs = projection->compute_saturated_costs(h_values);
            cp_heuristic.add_h_values(pos, move(h_values));
            reduce_costs(remaining_costs, saturated_costs);
            affected_leaves_so_far.insert(projection_leaves.begin(), projection_leaves.end());
        }
    }
    return cp_heuristic;
}

static shared_ptr<Evaluator> _parse(OptionParser &parser) {
    parser.add_option<bool>(
        "polynomial_decoupled_pdb",
        "if true, compute decoupled pdb in polynomial time by iterating "
        "over abstract states; if false, ",
        "false");
    prepare_parser_for_cost_partitioning_heuristic(parser);
    add_saturator_option(parser);
    add_order_options_to_parser(parser);
    Heuristic::add_options_to_parser(parser);

    options::Options opts = parser.parse();
    if (parser.help_mode())
        return nullptr;

    Saturator saturator_type = opts.get<Saturator>("saturator");
    if (saturator_type != Saturator::ALL_LEAF_DISJOINT) {
        cerr << "Approximate SCP computation needs leaf-disjoint CP "
                "heuristics; you have to use the ALL_LEAF_DISJOINT "
                "saturator." << endl;
        utils::exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
    }

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
    return make_shared<MaxSCPHeuristicApproximate>(
        opts,
        move(abstractions),
        move(cp_heuristics));
}

static Plugin<Evaluator> _plugin("max_scp_approx", _parse);
}
