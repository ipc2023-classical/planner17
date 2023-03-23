#ifndef PDBS_CANONICAL_PDBS_HEURISTIC_EXPONENTIAL_ILP_H
#define PDBS_CANONICAL_PDBS_HEURISTIC_EXPONENTIAL_ILP_H

#include "canonical_pdbs_heuristic.h"

namespace pdbs {
class CanonicalPDBsHeuristicILP : public CanonicalPDBsHeuristic {
public:
    explicit CanonicalPDBsHeuristicILP(const options::Options &opts);
    virtual ~CanonicalPDBsHeuristicILP() = default;
};
}

#endif
