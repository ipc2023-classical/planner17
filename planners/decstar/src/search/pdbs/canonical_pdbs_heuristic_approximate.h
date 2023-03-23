#ifndef PDBS_CANONICAL_PDBS_HEURISTIC_APPROXIMATE_H
#define PDBS_CANONICAL_PDBS_HEURISTIC_APPROXIMATE_H

#include "canonical_pdbs_heuristic.h"

namespace pdbs {
class CanonicalPDBsHeuristicApproximate : public CanonicalPDBsHeuristic {
public:
    explicit CanonicalPDBsHeuristicApproximate(const options::Options &opts);
    virtual ~CanonicalPDBsHeuristicApproximate() = default;
};
}

#endif
