#include "leaf_state_space.h"

#include "../globals.h"

#ifdef USE_CUDD
#include <cuddObj.hh>
#endif

using namespace std;

namespace symbolic {

#ifdef USE_CUDD

LeafStateSpace::LeafStateSpace(SymVariables *bdd_vars, const SymParamsMgr &params,
        int factor_, set<int> relevant_vars_factor,
        BDD nonRelVarsCube_, BDD nonRelVarsCubeWithPrimes_,
        BDD initialState, BDD goal,
        const map <int, vector<TransitionRelation>> &trs) :
	        SymStateSpaceManager(bdd_vars, params, relevant_vars_factor, initialState, goal), factor(factor_),
	        nonRelVarsCube(nonRelVarsCube_), nonRelVarsCubeWithPrimes(nonRelVarsCubeWithPrimes_) {
    init_transitions(trs);
}

BDD LeafStateSpace::shrinkExists(const BDD &bdd, int maxNodes) const {
    return bdd.ExistAbstract(nonRelVarsCube, maxNodes);
}

BDD LeafStateSpace::shrinkForall(const BDD &bdd, int /*maxNodes*/) const {
    return bdd.UnivAbstract(nonRelVarsCube);// TODO, maxNodes);
}

BDD LeafStateSpace::shrinkTBDD(const BDD &bdd, int maxNodes) const {
    return bdd.ExistAbstract(nonRelVarsCubeWithPrimes, maxNodes);
}

double LeafStateSpace::stateCount(const Bucket &bucket) const {
    return vars->numStates(bucket, factor);
}

double LeafStateSpace::stateCount(const BDD &bucket) const {
    return vars->numStates(bucket, factor);
}

#endif

}
