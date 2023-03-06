
#include "breadth_first_search.h"
#include "../states/extensional_states.h"
#include "../states/sparse_states.h"
#include "../successor_generators/successor_generator.h"
#include "../task.h"
#include "utils.h"

#include <iostream>
#include <queue>
#include <vector>
#include <chrono>

using namespace std;

template <class PackedStateT>
utils::ExitCode BreadthFirstSearch<PackedStateT>::search(const Task &task,
                                             SuccessorGenerator &generator,
                                             Heuristic &heuristic)
{
    cout << "Starting breadth first search" << endl;
    clock_t timer_start = clock();

    StatePackerT packer(task);
    std::queue<StateID> queue;

    SearchNode& root_node = space.insert_or_get_previous_node(packer.pack(task.initial_state), LiftedOperatorId::no_operator, StateID::no_state);
    root_node.open(0);
    cout << "Initial heuristic value 0" << endl;
    statistics.report_f_value_progress(root_node.f);
    queue.emplace(root_node.state_id);
    const auto action_schemas = task.get_action_schemas();

    if (check_goal(task, generator, timer_start, task.initial_state, root_node, space)) return utils::ExitCode::SUCCESS;

    while ((not queue.empty()) && (statistics.get_generated() < 1000000)) {
        StateID sid = queue.front();
        queue.pop();
        SearchNode &node = space.get_node(sid);
        if (node.status == SearchNode::Status::CLOSED) {
            continue;
        }
        node.close();
        statistics.report_f_value_progress(node.f);
        statistics.inc_expanded();

        assert(sid.id() >= 0 && (unsigned) sid.id() < space.size());

        DBState state = packer.unpack(space.get_state(sid));

        const auto applicable_actions_begin = chrono::steady_clock::now();
        const auto applicable = generator.get_applicable_actions(task.get_action_schemas(), state);
        const auto applicable_actions_end = chrono::steady_clock::now();
        const auto applicable_actions_ns = chrono::duration_cast<chrono::nanoseconds>(applicable_actions_end - applicable_actions_begin).count();
        statistics.inc_applicable_actions_time(applicable_actions_ns);
        statistics.inc_generated(applicable.size());

        for (const LiftedOperatorId &op_id : applicable) {
            const auto &action = action_schemas[op_id.get_index()];
            DBState s = generator.generate_successor(op_id, action, state);
            auto& child_node = space.insert_or_get_previous_node(packer.pack(s), op_id, node.state_id);
            if (child_node.status == SearchNode::Status::NEW) {
                child_node.open(node.f+1);

                if (check_goal(task, generator, timer_start, s, child_node, space)) {
                    const auto total = generator.get_generated_total();
                    const auto applicable = generator.get_generated_applicable();

                    if (applicable > 0) {
                        std::cout << "Over-Approximation: " << ((double) total / (double) applicable) << " (" << total << " / " << applicable << ")" << std::endl;
                    }

                    return utils::ExitCode::SUCCESS;
                }

                queue.emplace(child_node.state_id);
            }
        }
    }

    const auto total = generator.get_generated_total();
    const auto applicable = generator.get_generated_applicable();

    if (applicable > 0) {
        std::cout << "Over-Approximation: " << ((double) total / (double) applicable) << " (" << total << " / " << applicable << ")" << std::endl;
    }

    print_no_solution_found(timer_start);

    return utils::ExitCode::SEARCH_UNSOLVABLE;
}

template <class PackedStateT>
void BreadthFirstSearch<PackedStateT>::print_statistics() const {
    statistics.print_detailed_statistics();
    space.print_statistics();
}

// explicit template instantiations
template class BreadthFirstSearch<SparsePackedState>;
template class BreadthFirstSearch<ExtensionalPackedState>;
