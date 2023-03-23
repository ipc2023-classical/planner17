#ifndef SYMBOLIC_LEAF_STATE_SPACE_H
#define SYMBOLIC_LEAF_STATE_SPACE_H

#include "sym_state_space_manager.h"

namespace symbolic {

#ifdef USE_CUDD

class LeafStateSpace : public SymStateSpaceManager {
    int factor;
    BDD nonRelVarsCube,nonRelVarsCubeWithPrimes ;
public:

    LeafStateSpace(SymVariables *v, const SymParamsMgr &params, 
            int factor, std::set<int> relevant_vars_factor,
            BDD nonRelVarsCube_, BDD nonRelVarsCubeWithPrimes_,
            BDD initialState_, BDD goal_,
            const std::map<int, std::vector<TransitionRelation>> &trs);

    virtual std::string tag() const override {
        return "decoupled";
    }

    virtual BDD shrinkExists(const BDD &bdd, int maxNodes) const override;

    virtual BDD shrinkForall(const BDD &bdd, int maxNodes) const override;

    virtual BDD shrinkTBDD(const BDD &bdd, int maxNodes) const override;

    virtual double stateCount(const Bucket &bucket) const override;

    virtual double stateCount(const BDD &bucket) const override;

};

#endif

}
#endif
