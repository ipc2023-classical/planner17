#ifndef PDBS_CANONICAL_PDBS_HEURISTIC_H
#define PDBS_CANONICAL_PDBS_HEURISTIC_H

#include "../heuristic.h"

#include "canonical_pdbs.h"

class AbstractTask;

namespace options {
class OptionParser;
class Options;
}

namespace pdbs {
// Implements the canonical heuristic function.
class CanonicalPDBsHeuristic : public Heuristic {
    std::unique_ptr<CanonicalPDBs> canonical_pdbs;
protected:
    virtual int compute_heuristic(const GlobalState &ancestor_state) override;
public:
    CanonicalPDBsHeuristic(
        const options::Options &opts,
        std::unique_ptr<CanonicalPDBs> &&canonical_pdbs);
    virtual ~CanonicalPDBsHeuristic() = default;
};

extern void add_canonical_pdbs_options_to_parser(options::OptionParser &parser);
}

#endif
