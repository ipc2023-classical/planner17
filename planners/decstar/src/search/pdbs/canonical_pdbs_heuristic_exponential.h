#ifndef PDBS_CANONICAL_PDBS_HEURISTIC_EXPONENTIAL_H
#define PDBS_CANONICAL_PDBS_HEURISTIC_EXPONENTIAL_H

#include "canonical_pdbs_heuristic.h"

namespace pdbs {
class CanonicalPDBsHeuristicExponential : public CanonicalPDBsHeuristic {
public:
    explicit CanonicalPDBsHeuristicExponential(const options::Options &opts);
    virtual ~CanonicalPDBsHeuristicExponential() = default;
};
}


#endif
