#ifndef COST_SATURATION_SD_CONTEXT_SPLIT_TREE_H
#define COST_SATURATION_SD_CONTEXT_SPLIT_TREE_H


#include "types.h"
#include "cartesian_set.h"

#include "../tasks/domain_abstracted_task.h"
#include "../algorithms/dynamic_bitset.h"

#include <memory>
#include <unordered_map>
#include <set>

using namespace std;

using Bitset = dynamic_bitset::DynamicBitset<unsigned short>;

namespace cegar {

struct SplitTreeNode {
    // The abstract state id, only meaningful in the leafs.
    int state_id;
    // The parent node;
    NodeID parent;
    // The index of the variable in this node, -1 for leaf node
    int var;
    // True iff this is the left child of the parent
    Bitset vals;

    /**
     * Constructor.
     */
    SplitTreeNode(int state_id);

    /**
     * Returns true if SplitTreeNode is the root.
     */
    bool is_root() const;


    friend std::ostream &operator<<(std::ostream &os, const SplitTreeNode &node) {
        return os << "state_id: " << node.state_id << " parent: " << node.parent << " var: " << node.var << " vals: " << node.vals;
    }
};


/**
 * A context split tree is tree-like version of the refinement hierarchy.
 *
 *
 */
class SplitTree {
  private:
    /**
     * For landmark task we used value abstraction.
     * The context split tree splits over the concrete domain.
     * Hence, the domain abstraction is inverted.
     */
    extra_tasks::DomainAbstractedTask* dat;

    const vector<int> concrete_domain_sizes;

    vector<SplitTreeNode> nodes;

    // for fast access of leafs.
    vector<NodeID> state_id_to_leaf_node_id;

  public:
    SplitTree(const shared_ptr<AbstractTask> &task);

    /**
     * Split the SplitTreeNode identified with node_id
     * This is being called in the CEGAR refinement loop
     */
    pair<NodeID, NodeID> split(
      NodeID split_node_id, int left_state_id, int right_state_id,
      int var, Bitset left_vals, Bitset right_vals);

    const vector<SplitTreeNode>& get_nodes() const;
    const vector<NodeID>& get_state_id_to_leaf_node_id() const;

    void dump() const {
      int node_id = 0;
      for (const auto& node : nodes) {
        cout << "node_id: " << node_id++ << " " << node << endl;
      }
    }
};

}

#endif
