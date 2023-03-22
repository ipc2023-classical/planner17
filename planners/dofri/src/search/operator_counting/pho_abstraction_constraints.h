#ifndef OPERATOR_COUNTING_PHO_ABSTRACTION_CONSTRAINTS_H
#define OPERATOR_COUNTING_PHO_ABSTRACTION_CONSTRAINTS_H

#include <memory>

#include "../cost_saturation/types.h"
#include "../utils/hash.h"
#include "constraint_generator.h"
#include "../state_id.h"

namespace lp {
class LPConstraint;
}

namespace options {
class Options;
}

namespace operator_counting {
enum class RecomputationStrategy {
    ALWAYS, TUPLE, MAX_CLUSTER, RANGE_SA, PERCENT_SA
};

struct SenseCache {
    std::vector<double> lower;
    std::vector<double> higher;
    std::vector<int> current;
    std::vector<double> shadow_prices;
    double h;

    SenseCache(std::vector<int> &&current, std::vector<double> &&lower, std::vector<double> &&higher, std::vector<double> &&shadow_prices, double h);

    int range_check(const std::vector<int> &values) const;

    int percent_check(const std::vector<int> &values) const;
};

std::ostream &operator<<(std::ostream &os, const SenseCache &cache);


class PhOAbstractionConstraints : public ConstraintGenerator {
    const cost_saturation::AbstractionGenerators abstraction_generators;
    const bool saturated;
    const RecomputationStrategy strategy;
    int num_empty_constraints;
    int num_duplicate_constraints;
    int num_constraints;
    //int lookups;
    StateID active_state_id;

    cost_saturation::AbstractionFunctions abstraction_functions;
    std::vector<std::vector<int>> h_values_by_abstraction;
    std::vector<int> constraint_ids_by_abstraction;
    std::vector<bool> useless_operators;
    utils::HashMap<std::vector<int>, int> cf_clusters;
    utils::HashMap<std::vector<int>, int> cache;
    std::vector<int> abstract_state_ids;
    std::vector<SenseCache> rangeCache;
    //std::vector<int> cache_hits;

    const double epsilon = 0.01;

public:
    explicit PhOAbstractionConstraints(const options::Options &opts);

    ~PhOAbstractionConstraints();

    virtual void initialize_constraints(
        const std::shared_ptr<AbstractTask> &task,
        lp::LinearProgram &lp) override;
    virtual bool update_constraints(
        const State &state, lp::LPSolver &lp_solver) override;
    virtual void cache_heuristic(const State &state, lp::LPSolver &lp_solver, double h) override;
    virtual int get_cached_heuristic_value(const State &state) override;
    virtual void set_active_state(const State &state) override;

    std::vector<int> distance_tuple;

private:
    void set_distance_tuple(const State &state);
};
}

#endif
