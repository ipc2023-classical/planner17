#ifndef PDBS_CANONICAL_PDBS_HEURISTIC_EXPONENTIAL_BROKEN_H
#define PDBS_CANONICAL_PDBS_HEURISTIC_EXPONENTIAL_BROKEN_H

#include "canonical_pdbs_heuristic.h"

namespace pdbs {
class CanonicalPDBsHeuristicExponentialBroken : public CanonicalPDBsHeuristic {
public:
    explicit CanonicalPDBsHeuristicExponentialBroken(const options::Options &opts);
    virtual ~CanonicalPDBsHeuristicExponentialBroken() = default;
};
}

#endif
