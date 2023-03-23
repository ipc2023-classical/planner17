#ifndef PDBS_CANONICAL_PDBS_H
#define PDBS_CANONICAL_PDBS_H

#include "types.h"

#include <memory>

class GlobalState;
class State;

namespace pdbs {
class CanonicalPDBs {
protected:
    std::shared_ptr<PDBCollection> pdbs;
    std::shared_ptr<std::vector<PatternClique>> pattern_cliques;
public:
    CanonicalPDBs(
        const std::shared_ptr<PDBCollection> &pdbs,
        const std::shared_ptr<std::vector<PatternClique>> &pattern_cliques);
    virtual ~CanonicalPDBs() = default;

    int get_value(const State &state) const;
    virtual int get_value(const GlobalState &state) const;
};
}

#endif
