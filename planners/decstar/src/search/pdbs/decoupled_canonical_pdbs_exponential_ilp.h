#ifndef PDBS_DECOUPLED_CANONICAL_PDBS_EXPONENTIAL_ILP_H
#define PDBS_DECOUPLED_CANONICAL_PDBS_EXPONENTIAL_ILP_H

#include "canonical_pdbs.h"
#include "../leaf_state_id.h"
#include "../utils/hash.h"

#include <limits>


class ExplicitStateCPG;
class GlobalState;
class State;

namespace lp {
    class LPVariable;
    class LPConstraint;
}

namespace options {
class OptionParser;
}

namespace pdbs {
enum class MIPType {IP, LeafLP, AbsLP, LP};

class DecoupledCanonicalPDBsExponentialILP : public CanonicalPDBs {
    MIPType mip_type;

    struct AbstractLeafStateInfo { // TODO remove this; used to have more fields
        std::vector<int> concrete_lstate_lp_var_ids;
        AbstractLeafStateInfo() {}
    };

    mutable double lp_infty;
    bool are_leaves_affected; // true if there exists a pattern where is_center_only_pattern is false

    std::vector<utils::HashSet<PatternID>> affecting_patterns;
    std::vector<std::vector<LeafFactorID>> affected_leaves_by_pdb;
    std::vector<bool> is_center_only_pattern;
    std::vector<PatternID> center_only_patterns;

    void enumerate_abstract_states(int pdb_id,
                                   int pdb_lp_var,
                                   std::vector<lp::LPVariable> &lp_variables,
                                   std::vector<lp::LPConstraint> &constraints,
                                   const std::vector<utils::HashMap<std::vector<int>, AbstractLeafStateInfo>> &abstract_leaf_state_prices,
                                   int index,
                                   std::vector<int> &abs_state,
                                   std::vector<const std::vector<int>*> &lp_vars_l_states) const;

public:
    DecoupledCanonicalPDBsExponentialILP(
        const std::shared_ptr<PDBCollection> &pdbs,
        const std::shared_ptr<std::vector<PatternClique>> &pattern_cliques,
        MIPType mip_type);
    ~DecoupledCanonicalPDBsExponentialILP() = default;

    virtual int get_value(const GlobalState &state) const override;
};

extern void add_mip_options_to_parser(options::OptionParser &parser);
}

#endif
