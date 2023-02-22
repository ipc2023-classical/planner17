#include "explicit_abstraction_cegar.h"

#include "bdd_builder.h"
#include "task_info.h"
#include "utils.h"

#include "../utils/logging.h"
#include "../utils/strings.h"


namespace cost_saturation {

// ____________________________________________________________________________
ExplicitAbstractionCegar::ExplicitAbstractionCegar(
    std::shared_ptr<TaskInfo> task_info,
    std::shared_ptr<BddBuilder> bdd_builder,
    unique_ptr<AbstractionFunction> abstraction_function,
    int num_transitions,
    int num_states,
    int init_state_id,
    unordered_set<int> &&goal_states,
    vector<vector<Successor>> &&backward_graph,
    vector<int> &&num_transitions_by_operator,
    vector<bool> &&has_loop,
    vector<bool> &&has_outgoing,
    cegar::SplitTree &&split_tree) :
    ExplicitAbstraction(
        task_info,
        bdd_builder,
        move(abstraction_function),
        num_transitions,
        num_states,
        init_state_id,
        move(goal_states),
        move(backward_graph),
        move(num_transitions_by_operator),
        move(has_loop),
        move(has_outgoing)),
        split_tree(SplitTree(task_info, bdd_builder, move(split_tree))) {
}



// ____________________________________________________________________________
BDD ExplicitAbstractionCegar::make_bdd(int state_id) const {
    return split_tree.make_bdd(state_id);
}

// ____________________________________________________________________________
const BDD& ExplicitAbstractionCegar::make_bdd_and_cache(const Transition &transition) const {
    if (transition_bdd_cache.is_uninitialized()) {
        transition_bdd_cache.initialize(Abstraction::get_num_transitions());
    }
    if (!transition_bdd_cache.exists(transition.id)) {
        transition_bdd_cache.insert(
            transition.id,
            make_bdd(transition));
    }
    return transition_bdd_cache.get(transition.id);
}

// ____________________________________________________________________________
BDD ExplicitAbstractionCegar::make_bdd(const Transition &transition) const {
    return split_tree.make_bdd(transition);
}

// ____________________________________________________________________________
void ExplicitAbstractionCegar::dump() const {
    int num_states = get_num_states();

    cout << "States: " << num_states << endl;
    cout << "Goal states: " << goal_states.size() << endl;
    cout << "Operators inducing state-changing transitions: "
         << count(has_outgoing.begin(), has_outgoing.end(), true) << endl;
    cout << "Operators inducing self-loops: "
         << count(has_loop.begin(), has_loop.end(), true) << endl;

    vector<bool> is_goal(num_states, false);
    for (int goal : goal_states) {
        is_goal[goal] = true;
    }

    cout << "digraph transition_system";
    cout << " {" << endl;
    for (int i = 0; i < num_states; ++i) {
        cout << "    node [shape = " << (is_goal[i] ? "doublecircle" : "circle")
             << "] " << i << ";" << endl;
    }
    for (int target = 0; target < num_states; ++target) {
        unordered_map<int, vector<int>> parallel_transitions;
        for (const Successor &succ : backward_graph[target]) {
            int src = succ.state;
            parallel_transitions[src].push_back(succ.op);
        }
        for (const auto &pair : parallel_transitions) {
            int src = pair.first;
            const vector<int> &operators = pair.second;
            cout << "    " << src << " -> " << target
                 << " [label = \"" << utils::join(operators, "_") << "\"];" << endl;
        }
    }
    cout << "}" << endl;
}

}
