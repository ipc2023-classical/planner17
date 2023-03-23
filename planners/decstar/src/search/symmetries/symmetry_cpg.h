#ifndef SYMMETRIES_SYMMETRIC_CPG_H_
#define SYMMETRIES_SYMMETRIC_CPG_H_

#include <memory>

namespace symmetries {

class LeavesPermutation;

class SymmetryCPG {

public:

    virtual ~SymmetryCPG() = default;

    virtual std::unique_ptr<SymmetryCPG> clone() const = 0;

    virtual void apply_symmetry_permutation(const LeavesPermutation &permutation) = 0;

    virtual bool has_leaf_state(LeafStateHash id, LeafFactorID factor) const = 0;

    virtual int get_cost_of_state(LeafStateHash id, LeafFactorID factor) const = 0;

    virtual size_t get_number_states(LeafFactorID factor) const = 0;

    virtual bool goal_reachable(LeafFactorID factor) const = 0;

    virtual int get_goal_cost(LeafFactorID factor) const = 0;

    virtual SymmetryCPG* get_init_sym_cpg() const = 0;

};
}


#endif
