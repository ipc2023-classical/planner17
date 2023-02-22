#include "split_tree.h"

#include "utils.h"

#include <iostream>
#include <cassert>
#include <queue>
#include <unordered_set>


using namespace std;

namespace cegar {

// ____________________________________________________________________________
SplitTreeNode::SplitTreeNode(int state_id)
  : state_id(state_id),
    parent(-1),
    var(-1),
    vals(Bitset(0)) {
}

// ____________________________________________________________________________
bool SplitTreeNode::is_root() const {
    return parent == -1;
}


// ____________________________________________________________________________
SplitTree::SplitTree(const shared_ptr<AbstractTask> &task)
  : dat(dynamic_cast<extra_tasks::DomainAbstractedTask*>(task.get())),
    concrete_domain_sizes(get_concrete_domain_sizes()) {
    // add root node for trivial abstract state
    nodes.emplace_back(0);
    state_id_to_leaf_node_id.push_back(0);
}

// ____________________________________________________________________________
pair<NodeID, NodeID> SplitTree::split(
  NodeID split_node_id, int left_state_id, int right_state_id, int var,
  Bitset left_vals, Bitset right_vals) {
    // we add nodes before accessing the node that we are about to split.
    NodeID left_node_id = nodes.size();
    nodes.emplace_back(left_state_id);
    NodeID right_node_id = nodes.size();
    nodes.emplace_back(right_state_id);

    SplitTreeNode& left_node = nodes[left_node_id];
    left_node.parent = split_node_id;
    left_node.var = var;
    SplitTreeNode& right_node = nodes[right_node_id];
    right_node.parent = split_node_id;
    right_node.var = var;

    state_id_to_leaf_node_id.push_back(-1);
    state_id_to_leaf_node_id[left_state_id] = left_node_id;
    state_id_to_leaf_node_id[right_state_id] = right_node_id;

    // transform into concrete domain if necessary
    if (dat) {
        Bitset concrete_left_vals = Bitset(concrete_domain_sizes[var]);
        Bitset concrete_right_vals = Bitset(concrete_domain_sizes[var]);
        dat->get_concrete_values(var, left_vals, concrete_left_vals);
        dat->get_concrete_values(var, right_vals, concrete_right_vals);
        left_node.vals = concrete_left_vals;
        right_node.vals = concrete_right_vals;
    } else {
        left_node.vals = left_vals;
        right_node.vals = right_vals;
    }
    assert(left_node.vals.is_disjunct(right_node.vals));
    assert(static_cast<int>(left_node.vals.size()) == concrete_domain_sizes[var]);
    assert(static_cast<int>(right_node.vals.size()) == concrete_domain_sizes[var]);

    return make_pair(left_node_id, right_node_id);
}

// ____________________________________________________________________________
const vector<SplitTreeNode>& SplitTree::get_nodes() const {
    return nodes;
}

// ____________________________________________________________________________
const vector<NodeID>& SplitTree::get_state_id_to_leaf_node_id() const {
    return state_id_to_leaf_node_id;
}

}
