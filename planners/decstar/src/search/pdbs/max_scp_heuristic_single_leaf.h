#ifndef PDBS_MAX_SCP_HEURISTIC_SINGLE_LEAF_H
#define PDBS_MAX_SCP_HEURISTIC_SINGLE_LEAF_H

#include "max_scp_heuristic.h"

#include "../leaf_state_id.h"

#include <unordered_set>

class ExplicitStateCPG;

namespace pdbs {
class MaxSCPHeuristicSingleLeaf : public MaxSCPHeuristic {
    // for every leaf, we store the patterns that affect it
    std::vector<std::unordered_set<PatternID>> affecting_patterns;
    std::unordered_set<PatternID> center_only_patterns;

    int compute_min_distance(
        const ExplicitStateCPG *prices,
         const cost_saturation::CostPartitioningHeuristic &cp_heuristic,
         std::vector<int> &member_state,
         LeafFactorID leaf) const;
protected:
    virtual int compute_heuristic(const GlobalState &ancestor_state) override;
public:
    MaxSCPHeuristicSingleLeaf(
        const options::Options &opts,
        cost_saturation::Abstractions &&abstractions,
        cost_saturation::CPHeuristics &&cp_heuristics);
    virtual ~MaxSCPHeuristicSingleLeaf() override = default;
};
}
#endif
