#ifndef PDBS_MAX_SCP_HEURISTIC_H
#define PDBS_MAX_SCP_HEURISTIC_H

#include "../heuristic.h"

#include "types.h"

#include "../cost_saturation/types.h"

#include <unordered_set>

namespace options {
class Options;
}

namespace cost_saturation {
class CostPartitioningHeuristic;
class ProjectionFunction;
}

namespace pdbs {
/*
  Compute the maximum over multiple saturated cost partitionings over
  pattern database heuristics. This is a copy of MaxCostPartitioningHeuristic
  from cost_saturation, but only works with projections aka. pattern databases.
*/
class MaxSCPHeuristic : public Heuristic {
protected:
    std::vector<std::unique_ptr<cost_saturation::ProjectionFunction>> abstraction_functions;
    std::vector<Pattern> patterns;
    cost_saturation::CPHeuristics cp_heuristics;

    // For statistics.
    mutable std::vector<int> num_best_order;
    void print_statistics() const;
protected:
    virtual int compute_heuristic(const GlobalState &ancestor_state) override = 0;
public:
    MaxSCPHeuristic(
        const options::Options &opts,
        cost_saturation::Abstractions &&abstractions,
        cost_saturation::CPHeuristics &&cp_heuristics);
    virtual ~MaxSCPHeuristic() override;
};
}
#endif
