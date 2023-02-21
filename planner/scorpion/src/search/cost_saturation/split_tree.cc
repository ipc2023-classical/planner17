#include "split_tree.h"

#include "bdd_builder.h"
#include "abstraction.h"
#include "task_info.h"

#include <set>


namespace cost_saturation {

// ____________________________________________________________________________
SplitTreeNode::SplitTreeNode(int state_id, NodeID parent, int var, BDD vals)
  : state_id(state_id), parent(parent), var(var), vals(vals) {
}

// ____________________________________________________________________________
bool SplitTreeNode::is_root() const {
    return parent == -1;
}

// ____________________________________________________________________________
SplitTree::SplitTree(
    std::shared_ptr<TaskInfo> task_info,
    std::shared_ptr<BddBuilder> bdd_builder,
    cegar::SplitTree &&split_tree) :
    task_info(task_info),
    bdd_builder(bdd_builder),
    state_id_to_leaf_node_id(split_tree.get_state_id_to_leaf_node_id()),
    source_state(vector<const BDD*>(task_info->get_num_variables(), nullptr)),
    target_state(vector<const BDD*>(task_info->get_num_variables(), nullptr)) {
    // create new version of nodes that contain BDDs instead
    const vector<cegar::SplitTreeNode>& cegar_nodes = split_tree.get_nodes();
    nodes.reserve(cegar_nodes.size());
    set<int> split_vars_set;
    for (const cegar::SplitTreeNode &cegar_node : cegar_nodes) {
        if (cegar_node.is_root()) {
            assert(cegar_node.var == -1);
            nodes.emplace_back(
                SplitTreeNode(cegar_node.state_id, -1, -1, bdd_builder->make_one()));
        } else {
            split_vars_set.insert(cegar_node.var);
            nodes.push_back(
                SplitTreeNode(
                    cegar_node.state_id,
                    cegar_node.parent,
                    cegar_node.var,
                    bdd_builder->make_bdd(cegar_node.var, cegar_node.vals)));
        }
    }
    split_vars = vector<int>(split_vars_set.begin(), split_vars_set.end());
    sort(split_vars.begin(), split_vars.end());
    reverse(split_vars.begin(), split_vars.end());
}

// ____________________________________________________________________________
void SplitTree::fill_state(int state_id, vector<const BDD*> &state_bdds) const {
    for (int var : split_vars) {
        state_bdds[var] = nullptr;
    }
    for_each_node_until_root(state_id,
    [this, &state_bdds](const SplitTreeNode& node){
        assert(!node.is_root());
        // we need to keep finest split.
        // since we iterate from leaf to root
        // that is the first time we assign a cartesian set bdd
        if (!state_bdds[node.var]) {
            state_bdds[node.var] = &node.vals;
        }
    });
}

// ____________________________________________________________________________
BDD SplitTree::make_bdd(int state_id) const {
    fill_state(state_id, source_state);
    BDD result = bdd_builder->make_one();
    for (int var : split_vars) {
        if (source_state[var]) {
            result *= *source_state[var];
        }
    }
    return result;
}

// ____________________________________________________________________________
BDD SplitTree::make_bdd(const Transition &transition) const {
    fill_state(transition.src, source_state);
    fill_state(transition.target, target_state);
    BDD result = bdd_builder->make_one();
    for (int var : split_vars) {
        if (task_info->operator_has_precondition(transition.op, var)) {
            continue;
        }
        // fill with from values if the operator has no precondition.
        BDD var_bdd = bdd_builder->make_one();
        if (source_state[var]) {
            var_bdd *= *source_state[var];
        }
        if (target_state[var] && !task_info->operator_mentions_variable(transition.op, var)) {
            var_bdd *= *target_state[var];
        }
        result *= var_bdd;
    }
    assert(result != bdd_builder->make_zero());
    return result;
}

}