#include "search_engine.h"

#include "compliant_paths/compliant_path_graph.h"
#include "compliant_paths/cpg_storage.h"
#include "compliant_paths/explicit_state_cpg.h"
#include "factoring.h"
#include "globals.h"
#include "option_parser.h"
#include "symmetries/graph_creator.h"
#include "utils/countdown_timer.h"
#include "utils/timer.h"

#include <cassert>
#include <iostream>
#include <limits>


using namespace std;


SearchEngine::SearchEngine(const Options &opts)
    : status(IN_PROGRESS),
      solution_found(false),
      cheapest_goal_state(StateID::no_state),
      search_space(opts.get<OperatorCost>("cost_type")),
      cost_type(opts.get<OperatorCost>("cost_type")),
      max_time(opts.get<double>("max_time")) {
    if (opts.get<int>("bound") < 0) {
        cerr << "error: negative cost bound " << opts.get<int>("bound") << endl;
        exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
    }
    bound = opts.get<int>("bound");
    if (g_factoring){
        CompliantPathGraph::set_cost_type(cost_type);
    }
    if (opts.contains("symmetry")) {
        g_symmetry_graph = opts.get<shared_ptr<symmetries::GraphCreator>>("symmetry");
        if (g_factoring){
            ExplicitStateCPG::set_precompute_leaf_state_spaces(vector<bool>(g_leaves.size(), true));
        }
    }
}

void SearchEngine::statistics() const {
}

bool SearchEngine::found_solution() const {
    return solution_found;
}

SearchStatus SearchEngine::get_status() const {
    return status;
}

const SearchEngine::Plan &SearchEngine::get_plan() const {
    assert(solution_found);
    return plan;
}

void SearchEngine::set_plan(const Plan &p) {
    solution_found = true;
    plan = p;
}

void SearchEngine::search() {
    if(g_symmetry_graph){
        g_state_registry->get_initial_state();
        g_symmetry_graph->initialize(cost_type);
        if (!g_symmetry_graph->has_generators()){
            g_symmetry_graph.reset();
        } else {
            g_state_registry->permute_initial_state();
        }
    }

    initialize();

    utils::CountdownTimer timer(max_time);
    while (status == IN_PROGRESS) {
        status = step();
        if (timer.is_expired()) {
            cout << "Time limit reached. Abort search." << endl;
            status = TIMEOUT;
            break;
        }
    }

    cout << "Actual search time: " << timer.get_elapsed_time()
         << " [t=" << utils::g_timer << "]" << endl;
}

inline void print_solution_cost(int cost) {
    cout << "Found a plan of cost " << cost
            << " [t=" << utils::g_timer
            << ", " << utils::get_peak_memory_in_kb() << " KB]";
    cout << endl;
}

bool SearchEngine::check_goal_and_set_plan(const GlobalState &state) {
    if (test_goal(state)) {
        if (g_factoring){
            const SearchNode &info = search_space.get_node(state);
            int solution_cost = info.get_g();

            const CompliantPathGraph *cpg = CPGStorage::storage->get_cpg(state);

            int leaf_goal_cost = cpg->get_total_goal_price();
            assert(leaf_goal_cost != CompliantPathGraph::INF);

            solution_cost += leaf_goal_cost;

            solution_found = true;

            if (g_factoring->get_search_type() == SAT || g_factoring->get_search_type() == UNSAT){
                bound = solution_cost;
                cheapest_goal_state = state.get_id();
                print_solution_cost(solution_cost);
            } else if (g_factoring->get_search_type() == ASDA &&
                    cpg->is_optimal_leaf_plan(info.get_leaf_part_g())){
                bound = solution_cost;
                cheapest_goal_state = state.get_id();
                print_solution_cost(solution_cost);
            } else {
                assert(g_factoring->get_search_type() == ASDA || g_factoring->get_search_type() == SDA);
                if (solution_cost < bound){
                    bound = solution_cost;
                    cheapest_goal_state = state.get_id();
                    print_solution_cost(solution_cost);
                }
                return false;
            }
            return true;
        }
        Plan plan;
        search_space.trace_path(state, plan);
        cout << "Solution found!" << endl;
        set_plan(plan);
        return true;
    }
    return false;
}

void SearchEngine::save_plan_if_necessary() const {
    if (found_solution()){
        if (g_factoring){
            search_space.trace_path(g_state_registry->lookup_state(cheapest_goal_state), plan);
        }
        save_plan(get_plan(), false);
    }
}

int SearchEngine::get_adjusted_cost(OperatorID op) const {
    return get_adjusted_action_cost(g_operators[op], cost_type);
}

int SearchEngine::get_adjusted_cost(const Operator &op) const {
    return get_adjusted_action_cost(op, cost_type);
}

void SearchEngine::add_options_to_parser(OptionParser &parser) {
    ::add_cost_type_option_to_parser(parser);
    parser.add_option<int>(
        "bound",
        "exclusive depth bound on g-values. Cutoffs are always performed according to "
        "the real cost, regardless of the cost_type parameter", "infinity");
    parser.add_option<double>(
        "max_time",
        "maximum time in seconds the search is allowed to run for. The "
        "timeout is only checked after each complete search step "
        "(usually a node expansion), so the actual runtime can be arbitrarily "
        "longer. Therefore, this parameter should not be used for time-limiting "
        "experiments. Timed-out searches are treated as failed searches, "
        "just like incomplete search algorithms that exhaust their search space.",
        "infinity");
    parser.add_option<shared_ptr<symmetries::GraphCreator>>("symmetry",
            "use symmetries",
            OptionParser::NONE);
}

static PluginTypePlugin<SearchEngine> _type_plugin(
    "SearchEngine",
    // TODO: Replace empty string by synopsis for the wiki page.
    "");

