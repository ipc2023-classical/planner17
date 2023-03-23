#ifndef PDBS_MAX_SCP_HEURISTIC_PRICE_PARTITIONING_H
#define PDBS_MAX_SCP_HEURISTIC_PRICE_PARTITIONING_H

#include "max_scp_heuristic.h"

#include "../leaf_state_id.h"

class ExplicitStateCPG;

namespace utils {
class RandomNumberGenerator;
}

namespace pdbs {
enum class ExplicitLeafSortingType;
enum class IncrementalComputation;
class MaxSCPHeuristicPricePartitioning : public MaxSCPHeuristic {
    const bool debug;

    // list of leaves affected by any of the pdbs
    std::vector<LeafFactorID> affected_leaves;
    // same, but individually for all patterns
    std::vector<std::vector<LeafFactorID>> affected_leaves_by_pattern;
    std::vector<std::vector<LeafFactorID>> non_affected_leaves_by_pattern;

    std::vector<std::vector<std::vector<int>>> affected_pattern_var_indices_by_abs_by_leaf;

    std::vector<PatternID> center_only_patterns;

protected:
    virtual int compute_heuristic(const GlobalState &ancestor_state) override;
public:
    MaxSCPHeuristicPricePartitioning(
        const options::Options &opts,
        cost_saturation::Abstractions &&abstractions,
        cost_saturation::CPHeuristics &&cp_heuristics);
    virtual ~MaxSCPHeuristicPricePartitioning() override = default;
};
}
#endif
