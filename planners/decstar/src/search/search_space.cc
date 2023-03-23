#include "search_space.h"

#include "compliant_paths/compliant_path_graph.h"
#include "compliant_paths/cpg_storage.h"
#include "factoring.h"
#include "globals.h"
#include "operator.h"
#include "search_node_info.h"
#include "state.h"
#include "symmetries/graph_creator.h"
#include "symmetries/permutation.h"
#include "task_utils/successor_generator.h"

#include <cassert>
#include <limits>

using namespace std;


SearchNode::SearchNode(StateID state_id, SearchNodeInfo &info,
                       OperatorCost cost_type)
    : state_id(state_id), info(info), cost_type(cost_type) {
    assert(state_id != StateID::no_state);
}

GlobalState SearchNode::get_state() const {
    return g_state_registry->lookup_state(state_id);
}

bool SearchNode::is_open() const {
    return info.status == SearchNodeInfo::OPEN;
}

bool SearchNode::is_closed() const {
    return info.status == SearchNodeInfo::CLOSED;
}

bool SearchNode::is_dead_end() const {
    return info.status == SearchNodeInfo::DEAD_END;
}

bool SearchNode::is_new() const {
    return info.status == SearchNodeInfo::NEW;
}

int SearchNode::get_g() const {
    return info.g;
}

int SearchNode::get_real_g() const {
    return info.real_g;
}

int SearchNode::get_leaf_part_g() const {
    return info.leaf_part_g;
}

int SearchNode::get_h() const {
    return info.h;
}

StateID SearchNode::get_parent_state_id() const {
    return info.parent_state_id;
}

bool SearchNode::is_h_dirty() const {
    return info.h_is_dirty;
}

void SearchNode::set_h_dirty() {
    info.h_is_dirty = true;
}

void SearchNode::clear_h_dirty() {
    info.h_is_dirty = false;
}

void SearchNode::open_initial(int h) {
    assert(info.status == SearchNodeInfo::NEW);
    info.status = SearchNodeInfo::OPEN;
    info.g = 0;
    info.leaf_part_g = 0;
    info.real_g = 0;
    info.h = h;
    info.parent_state_id = StateID::no_state;
    info.creating_operator = OperatorID::no_operator;
}

void SearchNode::open(int h, const SearchNode &parent_node,
                      OperatorID parent_op) {
    assert(info.status == SearchNodeInfo::NEW);
    info.status = SearchNodeInfo::OPEN;
    info.g = parent_node.info.g + get_adjusted_action_cost(g_operators[parent_op], cost_type) + g_inc_g_by;
    info.leaf_part_g = parent_node.info.leaf_part_g + g_inc_g_by;
    info.real_g = parent_node.info.real_g + g_operators[parent_op].get_cost() + g_inc_g_by;// HACK
    info.h = h;
    info.parent_state_id = parent_node.get_state_id();
    info.creating_operator = parent_op;
    g_inc_g_by = 0;
}

void SearchNode::reopen(const SearchNode &parent_node,
                        OperatorID parent_op) {
    assert(info.status == SearchNodeInfo::OPEN ||
           info.status == SearchNodeInfo::CLOSED);

    // The latter possibility is for inconsistent heuristics, which
    // may require reopening closed nodes.
    info.status = SearchNodeInfo::OPEN;
    info.g = parent_node.info.g + get_adjusted_action_cost(g_operators[parent_op], cost_type) + g_inc_g_by;
    info.leaf_part_g = parent_node.info.leaf_part_g + g_inc_g_by;
    info.real_g = parent_node.info.real_g + g_operators[parent_op].get_cost() + g_inc_g_by;// HACK
    info.parent_state_id = parent_node.get_state_id();
    info.creating_operator = parent_op;
    g_inc_g_by = 0;
}

// like reopen, except doesn't change status
void SearchNode::update_parent(const SearchNode &parent_node,
                               OperatorID parent_op) {
    assert(info.status == SearchNodeInfo::OPEN ||
           info.status == SearchNodeInfo::CLOSED);
    // The latter possibility is for inconsistent heuristics, which
    // may require reopening closed nodes.
    info.g = parent_node.info.g + get_adjusted_action_cost(g_operators[parent_op], cost_type) + g_inc_g_by;
    info.leaf_part_g = parent_node.info.leaf_part_g + g_inc_g_by;
    info.real_g = parent_node.info.real_g + g_operators[parent_op].get_cost() + g_inc_g_by;// HACK
    info.parent_state_id = parent_node.get_state_id();
    info.creating_operator = parent_op;
    g_inc_g_by = 0;
}

void SearchNode::increase_h(int h) {
    assert(h >= info.h);
    info.h = h;
}

void SearchNode::decrease_h(int h) {
    assert(h <= info.h);
    info.h = h;
}

void SearchNode::close() {
    assert(info.status == SearchNodeInfo::OPEN);
    info.status = SearchNodeInfo::CLOSED;
}

void SearchNode::mark_as_dead_end() {
    info.status = SearchNodeInfo::DEAD_END;
}

void SearchNode::dump() const {
    cout << state_id << ": ";
    cout << "g = " << info.g << " h = " << info.h << endl;
    g_state_registry->lookup_state(state_id).dump_pddl();
    if (info.creating_operator) {
        cout << " created by " << g_operators[info.creating_operator].get_name()
             << " from " << info.parent_state_id << endl;
    } else {
        cout << " no parent" << endl;
    }
}

SearchSpace::SearchSpace(OperatorCost cost_type_)
    : cost_type(cost_type_) {
    if (g_factoring){
        CompliantPathGraph::set_search_space(this);
    }
}

SearchNode SearchSpace::get_node(const GlobalState &state) {
    return SearchNode(state.get_id(), search_node_infos[state], cost_type);
}

void SearchSpace::trace_path(const GlobalState &goal_state,
                             vector<OperatorID> &path) const {

    if (g_factoring && g_symmetry_graph){
        vector<StateID> tmp(1, goal_state.get_id());
        CPGStorage::storage->get_cpg(goal_state)->fill_in_leaf_actions(path, tmp);

        reverse(path.begin(), path.end());

        return;
    }

    GlobalState current_state = goal_state;

    vector<symmetries::Permutation> permutations; // needed for orbit search
    vector<StateID> states; // needed for decoupled search and orbit search

    assert(path.empty());

    for (;;) {          // backtrace solution path
        const SearchNodeInfo &info = search_node_infos[current_state];
        OperatorID op = info.creating_operator;

        if (g_factoring || g_symmetry_graph){
            states.push_back(current_state.get_id());
        }

        if (g_symmetry_graph){
            GlobalState new_state = g_initial_state();
            if (op != OperatorID::no_operator) {
                GlobalState parent_state = g_state_registry->lookup_state(info.parent_state_id);
                new_state = g_state_registry->get_successor_state(parent_state, g_operators[op], false);
            } else {
                new_state = g_state_registry->get_state(g_initial_state_data);
            }
            symmetries::Permutation p;
            if (new_state.get_id() != current_state.get_id()){
                p = g_symmetry_graph->create_permutation_from_state_to_state(current_state, new_state);
            }
            permutations.push_back(p);
        }

        if (op == OperatorID::no_operator) {  // reached initial state => done
            assert(info.parent_state_id == StateID::no_state);
            break;
        }

        if (!g_symmetry_graph || g_factoring){
            path.push_back(op);
        }
        current_state = g_state_registry->lookup_state(info.parent_state_id);
    }

    if (g_symmetry_graph && !g_factoring){
        trace_symmetric_path(path, states, permutations);
    }

    if (g_factoring){
        CPGStorage::storage->get_cpg(goal_state)->fill_in_leaf_actions(path, states);
    }

    reverse(path.begin(), path.end());
}

void SearchSpace::trace_symmetric_path(vector<OperatorID> &path,
        vector<StateID> &states,
        vector<symmetries::Permutation> &permutations) const {

    path.resize(states.size() - 1, OperatorID::no_operator);

    symmetries::Permutation temp_p;
    for (int i = permutations.size() - 1; i >= 0; --i) {
        temp_p = symmetries::Permutation(permutations[i], temp_p);
        permutations[i] = temp_p;
    }
    for(size_t i = 0; i < states.size(); ++i){
        const symmetries::Permutation &permutation = permutations[i];
        states[i] = g_state_registry->get_state_permutation(g_state_registry->lookup_state(states[i]), permutation).get_id();
    }
    for (size_t i = states.size() - 1; i > 0; --i) {
        vector<OperatorID> applicable_ops;
        g_successor_generator->generate_applicable_ops(g_state_registry->lookup_state(states[i]), applicable_ops);
        OperatorID min_cost_op = OperatorID::no_operator;
        int min_cost = numeric_limits<int>::max();

        for (OperatorID op_id : applicable_ops) {
            const Operator &op = g_operators[op_id];
            GlobalState succ_state = g_state_registry->get_successor_state(g_state_registry->lookup_state(states[i]), op, false);
            if (succ_state.get_id() == states[i-1]) {
                if (op.get_cost() < min_cost) {
                    min_cost = op.get_cost();
                    min_cost_op = op_id;
                }
            }
        }
#ifndef NDEBUG
        if (min_cost_op == OperatorID::no_operator) {
            cout << "No operator is found!!!" << endl
                 << "Cannot reach the state:" << endl;
            g_state_registry->lookup_state(states[i-1]).dump_pddl();
            cout << endl << "From the state:" << endl;
            g_state_registry->lookup_state(states[i]).dump_pddl();
            exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
        }
#endif
        path[i-1] = min_cost_op;
    }
}

void SearchSpace::dump() const {
    for (PerStateInformation<SearchNodeInfo>::const_iterator it =
            search_node_infos.begin(g_state_registry);
         it != search_node_infos.end(g_state_registry); ++it) {
        StateID id = *it;
        GlobalState s = g_state_registry->lookup_state(id);
        const SearchNodeInfo &node_info = search_node_infos[s];
        cout << id << ": ";
        s.dump_fdr();
        if (node_info.creating_operator && node_info.parent_state_id != StateID::no_state) {
            cout << " created by " << g_operators[node_info.creating_operator].get_name()
                 << " from " << node_info.parent_state_id << endl;
        } else {
            cout << "has no parent" << endl;
        }
    }
}

void SearchSpace::statistics() const {
    cout << "Number of registered states: " << g_state_registry->size() << endl;
    if (g_factoring){
        CompliantPathGraph::print_statistics();
    }
}
