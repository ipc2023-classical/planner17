#ifndef OPERATOR_COUNTING_OPERATOR_COUNTING_HEURISTIC_H
#define OPERATOR_COUNTING_OPERATOR_COUNTING_HEURISTIC_H

#include <memory>
#include <vector>

#include "../heuristic.h"
#include "../lp/lp_solver.h"

namespace options {
class Options;
}

namespace operator_counting {
class ConstraintGenerator;

class OperatorCountingHeuristic : public Heuristic {
    std::vector<std::shared_ptr<ConstraintGenerator>> constraint_generators;
    lp::LPSolver lp_solver;
    const bool cache_lp;
    const bool use_integer_operator_counts;
    const bool debug_cache;
    int evaluations;
    int cache_hits;

protected:
    virtual int compute_heuristic(const State &ancestor_state) override;

public:
    explicit OperatorCountingHeuristic(const options::Options &opts);
    ~OperatorCountingHeuristic();
};
}

#endif
