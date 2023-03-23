#ifndef PDBS_MAX_SCP_HEURISTIC_APPROXIMATE_H
#define PDBS_MAX_SCP_HEURISTIC_APPROXIMATE_H

#include "max_scp_heuristic.h"

#include "../leaf_state_id.h"

#include "../cost_saturation/cost_partitioning_heuristic.h"

class ExplicitStateCPG;

namespace pdbs {
class MaxSCPHeuristicApproximate : public MaxSCPHeuristic {
    const bool polynomial_decoupled_pdb;
    std::vector<std::vector<LeafFactorID>> affected_leaves_by_abstraction;
    std::vector<std::vector<std::vector<int>>> affected_pattern_var_indices_by_leaf_by_abstraction;

    int compute_pdb_value_with_prices(
        const GlobalState &state,
        const cost_saturation::CostPartitioningHeuristic::LookupTable &lookup_table,
        const ExplicitStateCPG* prices) const;
protected:
    virtual int compute_heuristic(const GlobalState &ancestor_state) override;
public:
    MaxSCPHeuristicApproximate(
        const options::Options &opts,
        cost_saturation::Abstractions &&abstractions,
        cost_saturation::CPHeuristics &&cp_heuristics);
    virtual ~MaxSCPHeuristicApproximate() override = default;
};

extern cost_saturation::CostPartitioningHeuristic compute_saturated_cost_partitioning_leaf_disjoint(
    const cost_saturation::Abstractions &abstractions,
    const std::vector<int> &order,
    std::vector<int> &remaining_costs,
    const std::vector<int> &);
}
#endif
