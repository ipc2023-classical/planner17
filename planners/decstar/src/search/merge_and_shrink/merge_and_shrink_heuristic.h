#ifndef MERGE_AND_SHRINK_MERGE_AND_SHRINK_HEURISTIC_H
#define MERGE_AND_SHRINK_MERGE_AND_SHRINK_HEURISTIC_H

#include "../heuristic.h"

#include <memory>

namespace merge_and_shrink {
class FactoredTransitionSystem;
class MergeAndShrinkRepresentation;

enum class DECOUPLED_LOOKUP {
    EXACT_ICAPS23, // TODO remove this eventually
    EXACT,
    EXACT_NOCACHE,
    EXACT_STRONGLY_COMPLIANT_MERGING, // TODO this can probably be removed if EXACT turns out to give the same performance
    EXPLICIT
};
class MergeAndShrinkHeuristic : public Heuristic {
    DECOUPLED_LOOKUP decoupled_lookup;

    // The final merge-and-shrink representations, storing goal distances.
    std::vector<std::unique_ptr<MergeAndShrinkRepresentation>> mas_representations;

    void extract_factor(FactoredTransitionSystem &fts, int index);
    bool extract_unsolvable_factor(FactoredTransitionSystem &fts);
    void extract_nontrivial_factors(FactoredTransitionSystem &fts);
    void extract_factors(FactoredTransitionSystem &fts);
protected:
    virtual int compute_heuristic(const GlobalState &ancestor_state) override;
public:
    explicit MergeAndShrinkHeuristic(const options::Options &opts);
};
}

#endif
