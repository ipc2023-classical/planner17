#ifndef TRANSITION_COST_PARTITIONING_SPLIT_TREE_H
#define TRANSITION_COST_PARTITIONING_SPLIT_TREE_H

#include "types.h"

#include "../cegar/split_tree.h"

#include "cudd.h"
#include "cuddObj.hh"


namespace cost_saturation {
class BddBuilder;
class TaskInfo;
struct Transition;

struct SplitTreeNode {
    int state_id;
    NodeID parent;
    int var;
    BDD vals;

    bool is_root() const;

    SplitTreeNode(int state_id, NodeID parent, int var, BDD vals);

    friend std::ostream &operator<<(std::ostream &os, const SplitTreeNode &node) {
        return os << node.state_id << " " << node.parent << " " << node.var << " " << node.vals;
    }
};

class SplitTree {
  private:
    std::shared_ptr<TaskInfo> task_info;
    std::shared_ptr<BddBuilder> bdd_builder;

    vector<SplitTreeNode> nodes;
    // for fast access of leafs.
    vector<NodeID> state_id_to_leaf_node_id;

    vector<int> split_vars;

    /**
     * Preallocated memory for reuse.
     */
    mutable vector<const BDD*> source_state;
    mutable vector<const BDD*> target_state;

  private:
    void fill_state(int state_id, vector<const BDD*> &state_bdds) const;

  public:
    /**
     * Construct SplitTree from cegar::SplitTree.
     */
    SplitTree(
      std::shared_ptr<TaskInfo> task_info,
      std::shared_ptr<BddBuilder> bdd_builder,
      cegar::SplitTree &&split_tree);

    /**
     * Apply funtion to all internal nodes from leaf with state_id to the root.
     */
    template<typename Callback>
    void for_each_node_until_root(
      int state_id, const Callback& callback) const {
        assert(utils::in_bounds(state_id, state_id_to_leaf_node_id));
        const SplitTreeNode* cur_node = &nodes[state_id_to_leaf_node_id[state_id]];
        assert(cur_node->state_id == state_id);
        while(!cur_node->is_root()) {
            callback(*cur_node);
            cur_node = &nodes[cur_node->parent];
        }
    }

    /**
     * Create a BDD that represents the cartesian set of the abstract state.
     */
    BDD make_bdd(int state_id) const;
    /**
     * Regresses from transition from target to src through op.
    */
    BDD make_bdd(const Transition &transition) const;
};

}

#endif
