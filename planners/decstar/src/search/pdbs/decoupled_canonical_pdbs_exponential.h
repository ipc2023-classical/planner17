#ifndef PDBS_DECOUPLED_CANONICAL_PDBS_EXPONENTIAL_H
#define PDBS_DECOUPLED_CANONICAL_PDBS_EXPONENTIAL_H

#include "canonical_pdbs.h"

#include "../leaf_state_id.h"

class ExplicitStateCPG;
class GlobalState;
class State;
namespace options {
    class OptionParser;
}
namespace utils {
    class RandomNumberGenerator;
}

namespace pdbs {
enum class ExplicitLeafSortingType {LEAFID, STATIC, DYNAMIC, RANDOM};
enum class IncrementalComputation {NONE, COPY, RECOMPUTE};

class DecoupledCanonicalPDBsExponential : public CanonicalPDBs {
    ExplicitLeafSortingType sort_leaves_type;
    bool early_termination;
    IncrementalComputation incremental_computation;

    // list of leaves affected by any of the pdbs; mutable because can be resorted within get_value()
    mutable std::vector<LeafFactorID> affected_leaves;
    // same, but individually for all patterns
    std::vector<std::vector<LeafFactorID>> affected_leaves_by_pattern;

    std::vector<std::vector<int>> cliques_by_pattern;

    std::vector<PatternID> center_only_patterns;
    std::vector<int> center_only_cliques;

    // these store, for each recursion depth the patterns/cliques of which
    // all leaves have been treated, so the final value for the pattern/clique
    // can be computed
    mutable std::vector<std::vector<PatternID>> patterns_by_rec_depth;
    mutable std::vector<std::vector<int>> cliques_by_rec_depth;

    void apply_resorted_affected_leaves() const;

    bool compute_minimum_for_cliques(
            const std::vector<int> &clique_ids,
            int &min_clique_h,
            const std::vector<int> &h_values,
            int sum_prices,
            int min_h) const;

    void compute_min_distance_decoupled_exponential(const ExplicitStateCPG *prices,
            std::vector<int> &member_state,
            std::vector<int> &h_values,
            int i,
            int sum_prices,
            const std::vector<int> &partial_clique_h_values,
            int min_clique_h,
            int &final_h) const;
public:
    DecoupledCanonicalPDBsExponential(
        const std::shared_ptr<PDBCollection> &pdbs,
        const std::shared_ptr<std::vector<PatternClique>> &pattern_cliques,
        ExplicitLeafSortingType sort_leaves_type,
        bool early_termination,
        IncrementalComputation incremental_computation,
        const std::shared_ptr<utils::RandomNumberGenerator> &rng);
    ~DecoupledCanonicalPDBsExponential() = default;

    virtual int get_value(const GlobalState &state) const override;
};

extern void add_exponential_options_to_parser(options::OptionParser &parser);
}

#endif
