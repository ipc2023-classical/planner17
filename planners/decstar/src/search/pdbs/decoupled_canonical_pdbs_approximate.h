#ifndef PDBS_DECOUPLED_CANONICAL_PDBS_APPROXIMATE_H
#define PDBS_DECOUPLED_CANONICAL_PDBS_APPROXIMATE_H

#include "canonical_pdbs.h"

#include "../leaf_state_id.h"

class ExplicitStateCPG;
class GlobalState;

namespace options {
class OptionParser;
}

namespace pdbs {
class DecoupledCanonicalPDBsApproximate : public CanonicalPDBs {
    const bool polynomial_decoupled_pdb;
    std::vector<std::vector<LeafFactorID>> affected_leaves_by_pattern;
    std::vector<std::vector<std::vector<int>>> affected_pattern_var_indices_by_leaf_by_pattern;
public:
    DecoupledCanonicalPDBsApproximate(
        const std::shared_ptr<PDBCollection> &pdbs,
        const std::shared_ptr<std::vector<PatternClique>> &pattern_cliques,
        bool polynomial_decoupled_pdb);
    ~DecoupledCanonicalPDBsApproximate() = default;

    virtual int get_value(const GlobalState &state) const override;
};
}

#endif
