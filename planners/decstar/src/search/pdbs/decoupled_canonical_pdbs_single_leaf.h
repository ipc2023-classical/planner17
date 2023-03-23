#ifndef PDBS_DECOUPLED_CANONICAL_PDBS_SINGLE_LEAF_H
#define PDBS_DECOUPLED_CANONICAL_PDBS_SINGLE_LEAF_H

#include "canonical_pdbs.h"

#include "../leaf_state_id.h"

class ExplicitStateCPG;
class GlobalState;

namespace pdbs {
class DecoupledCanonicalPDBsSingleLeaf : public CanonicalPDBs {
    // for every clique and every leaf, we store the patterns of that
    // clique that affect the leaf
    std::vector<std::vector<std::vector<PatternID>>> affecting_patterns;

    std::vector<PatternID> center_only_patterns;

    int get_min_distance(const ExplicitStateCPG *prices,
            std::vector<int> &member_state,
            LeafFactorID leaf,
            int clique_id) const;
public:
    DecoupledCanonicalPDBsSingleLeaf(
        const std::shared_ptr<PDBCollection> &pdbs,
        const std::shared_ptr<std::vector<PatternClique>> &pattern_cliques);
    ~DecoupledCanonicalPDBsSingleLeaf() = default;

    virtual int get_value(const GlobalState &state) const override;
};
}

#endif
