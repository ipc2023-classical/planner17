#ifndef COST_SATURATION_PHO_ONLINE_HEURISTIC_H
#define COST_SATURATION_PHO_ONLINE_HEURISTIC_H

#include <map>
#include <memory>
#include <vector>

#include "../heuristic.h"
#include "../lp/lp_solver.h"
#include "../per_state_information.h"
#include "../utils/hash.h"
#include "../utils/logging.h"
#include "cost_partitioning_heuristic.h"
#include "types.h"

namespace cost_saturation {
class PhOOnlineHeuristic : public Heuristic {
    AbstractionFunctions abstraction_functions;
    std::unique_ptr<DeadEnds> dead_ends;
    CPHeuristics cp_heuristics;
    CostPartitioningHeuristic dead_end_heuristic;
    lp::LPSolver lp_solver;
    utils::LogProxy log;

    const int interval;
    const int max_size_kb;

    // copied from ScaledCostPartitioningHeuristic, this should idealy not be duplicated
    const double epsilon = 0.01;
    const double COST_FACTOR = 1000;

    const std::vector<int> costs;
    std::vector<std::vector<int>> h_values_by_abstraction;
    std::vector<int> num_best_cp;
    int size_kb;
    int num_evaluated_states;
    int num_scps_computed;
    bool saturated;
    std::vector<std::vector<double>> cp_weights;

    void print_intermediate_statistics() const;
    void print_final_statistics() const;
    void print_covering();

    std::vector<double> compute_pho_weights(const std::vector<int> &abstract_state_ids);
    CostPartitioningHeuristic compute_cost_partitioning(const std::vector<double> weights);

protected:
    virtual int compute_heuristic(const State &ancestor_state) override;

public:
    PhOOnlineHeuristic(
        const options::Options &opts,
        Abstractions &abstractions,
        TaskProxy &task_proxy,
        std::unique_ptr<DeadEnds> &&dead_ends);
    virtual ~PhOOnlineHeuristic() override;
};
}  // namespace cost_saturation

#endif
