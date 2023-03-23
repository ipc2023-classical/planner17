#ifndef PDBS_CANONICAL_PDBS_HEURISTIC_SINGLE_LEAF_H
#define PDBS_CANONICAL_PDBS_HEURISTIC_SINGLE_LEAF_H

#include "canonical_pdbs_heuristic.h"

namespace pdbs {
class CanonicalPDBsHeuristicSingleLeaf : public CanonicalPDBsHeuristic {
public:
    explicit CanonicalPDBsHeuristicSingleLeaf(
        const options::Options &opts);
    virtual ~CanonicalPDBsHeuristicSingleLeaf() = default;
};
}

#endif
