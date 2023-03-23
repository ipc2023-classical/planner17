#ifndef MERGE_AND_SHRINK_CLUSTERING_LP_FACTORING_H
#define MERGE_AND_SHRINK_CLUSTERING_LP_FACTORING_H

#include "clustering.h"

#include "../algorithms/named_vector.h"

#include <memory>
#include <set>

namespace lp {
class LPConstraint;
enum class LPObjectiveSense;
enum class LPSolverType;
class LPVariable;
}

namespace options {
class Options;
}

namespace utils {
class CountdownTimer;
class Timer;
}

namespace merge_and_shrink {
enum class STRATEGY {
//        MIS,
//        MIS_MOBILE,
//        MIS_LP_RELAX,
    MML,
//        MML_MODULAR,
//        MML_MODULAR_NO_SCHEMES,
    MM,
    MF,
    MMF,
};

enum class FACTORING_TYPE {
    GENERAL,
    STRICT,
    F,
    IF,
};

class ClusteringLPFactoring : public Clustering {
    size_t max_leaf_size;
    size_t min_number_leaves;

    using FactoredVars = std::vector<std::vector<int>>;

    struct PotentialLeaf {
        size_t id;
        int num_actions; // number of actions with the effect schema
        int num_leaf_only_actions; // number of leaf-only actions if the effect schema forms a leaf
        int num_leaf_actions; // number of leaf actions if the effect schema forms a leaf
        std::vector<int> vars; // sorted
        std::set<size_t> leaf_only_schemes;

        PotentialLeaf(size_t id, int num_actions, const std::vector<int> &vars)
                : id(id), num_actions(num_actions), num_leaf_only_actions(0), num_leaf_actions(0), vars(vars) {}

        float get_flexibility() const {
            return ((float) num_leaf_only_actions / (float) num_leaf_actions);
        }

    };

    struct ActionSchema {

        int num_actions; // number of actions with the action schema
        std::vector<int> pre_vars; // sorted
        std::vector<int> eff_vars; // sorted

        ActionSchema(int num_actions, const std::vector<int> &pre_vars, const std::vector<int> &eff_vars)
                : num_actions(num_actions), pre_vars(pre_vars), eff_vars(eff_vars) {
        }

        void incr_num_action() {
            num_actions++;
        }

    };

    STRATEGY strategy;
    FACTORING_TYPE factoring_type;
    int min_mobility;
    float min_flexibility;
    int max_merge_steps;
    int cplex_time_limit;
    int memory_limit;
    lp::LPSolverType lp_solver_type;
    int factoring_time_limit;
    mutable std::unique_ptr<utils::CountdownTimer> factoring_timer;

    void dump_lp(lp::LPObjectiveSense sense,
                 const named_vector::NamedVector<lp::LPVariable> &vars,
                 const named_vector::NamedVector<lp::LPConstraint> &constrs) const;
    std::vector<double> solve_lp(named_vector::NamedVector<lp::LPVariable> &&vars,
                                 named_vector::NamedVector<lp::LPConstraint> &&constrs,
                                 bool solve_lp_relaxation,
                                 utils::Timer &lp_construction_timer) const;
    FactoredVars get_max_mobile_leaves(const TaskProxy &task_proxy) const;
    std::vector<ActionSchema> get_action_schemas(const TaskProxy &task_proxy) const;
    std::vector<PotentialLeaf> get_potential_leaves(
        const TaskProxy &task_proxy, const std::vector<ActionSchema> &action_schemas) const;
    void merge_potential_leaves(std::vector<PotentialLeaf> &potential_leaves, std::vector<std::set<size_t> > &var_to_p_leaves) const;
public:
    explicit ClusteringLPFactoring(const options::Options &opts);
    virtual ~ClusteringLPFactoring() = default;

    virtual std::vector<std::vector<int>> compute(const TaskProxy &task_proxy) const override;
};
}

#endif
