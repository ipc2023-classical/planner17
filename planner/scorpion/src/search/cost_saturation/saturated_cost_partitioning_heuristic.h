#ifndef COST_SATURATION_SATURATED_COST_PARTITIONING_HEURISTIC_H
#define COST_SATURATION_SATURATED_COST_PARTITIONING_HEURISTIC_H

#include "types.h"

#include <vector>

namespace options {
class OptionParser;
class Options;
}

namespace cost_saturation {
class CostPartitioningHeuristic;
class RemainingTransitionCostFunction;

extern CostPartitioningHeuristic compute_saturated_cost_partitioning(
    const Abstractions &abstractions,
    const std::vector<int> &order,
    RemainingTransitionCostFunction &sdac,
    const std::vector<int> &abstract_state_ids,
    int max_num_transitions);

extern CostPartitioningHeuristic compute_perim_saturated_cost_partitioning(
    const Abstractions &abstractions,
    const std::vector<int> &order,
    RemainingTransitionCostFunction &sdac,
    const std::vector<int> &abstract_state_ids,
    int max_num_transitions);

extern void add_saturator_option(options::OptionParser &parser);
extern void add_stcp_option(options::OptionParser &parser);
extern TCPFunction get_cp_function_from_options(const options::Options &opts);
}

#endif
