#ifndef PATH_PRICES_H
#define PATH_PRICES_H

#include "pricing_function.h"

// TODO rename file to path_prices?

struct PathPriceInfo {
    OperatorID generating_op;
    LeafStateHash predecessor;
    bool is_new;

    PathPriceInfo() : generating_op(OperatorID::no_operator),
                      predecessor(LeafStateHash::MAX),
                      is_new(false) {}

    PathPriceInfo(OperatorID op, LeafStateHash predecessor, bool is_new = false)
            : generating_op(op), predecessor(predecessor), is_new(is_new) {}

    void reset_generating_op() {
        is_new = false;
        generating_op = OperatorID::no_operator;
    }

    void dump() const;
};


class PathPrices : public Prices {

    // path information
    std::vector<std::vector<PathPriceInfo> > paths;

    // return true, if the LeafState was actually added
    bool add_state(LeafStateHash id, LeafFactorID factor, int cost,
                   OperatorID generating_op, LeafStateHash predecessor);

    PathPrices();

    PathPrices(const PathPrices &cpg);

    PathPrices(const ExplicitStateCPG &cpg);

    const PathPriceInfo &get_path_info(LeafStateHash id, LeafFactorID factor) const;

    void update(const GlobalState &new_center_state);

    void apply_center_op_to_leaves(const PathPrices &old_cpg, const Operator &op);

    virtual void apply_symmetry_permutation(const symmetries::LeavesPermutation &permutation) override;


    static void symmetry_plan_reconstruction(std::vector<OperatorID> &ops, std::vector<StateID> &states);

    static void insert_leaf_actions(std::vector<OperatorID> &path, std::vector<StateID> &states);

public:

    static void fill_in_leaf_actions(std::vector<OperatorID> &ops, std::vector<StateID> &states);

};

#endif
