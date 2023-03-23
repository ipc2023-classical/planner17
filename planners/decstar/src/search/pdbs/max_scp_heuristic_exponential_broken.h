#ifndef PDBS_MAX_SCP_HEURISTIC_EXPONENTIAL_BROKEN_H
#define PDBS_MAX_SCP_HEURISTIC_EXPONENTIAL_BROKEN_H

#include "max_scp_heuristic.h"

#include "../leaf_state_id.h"

class ExplicitStateCPG;

namespace pdbs {
class MaxSCPHeuristicExponentialBroken : public MaxSCPHeuristic {
    std::vector<LeafFactorID> affected_leaves;

    void compute_min_distance(
        const ExplicitStateCPG *prices,
        std::vector<int> &member_state,
        int i,
        int sum_prices,
        std::vector<int> &min_d) const;
protected:
    virtual int compute_heuristic(const GlobalState &ancestor_state) override;
public:
    MaxSCPHeuristicExponentialBroken(
        const options::Options &opts,
        cost_saturation::Abstractions &&abstractions,
        cost_saturation::CPHeuristics &&cp_heuristics);
    virtual ~MaxSCPHeuristicExponentialBroken() override = default;
};
}
#endif
