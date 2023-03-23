#ifndef LM_CUT_HEURISTIC_SYM_DEC_H
#define LM_CUT_HEURISTIC_SYM_DEC_H

#include "compliant_paths/cpg_storage.h"
#include "compliant_paths/cudd_cpg.h"
#include "lm_cut_heuristic.h"
#include "symbolic/sym_pricing_function.h"


 class LandmarkCutHeuristicSymbolic : public LandmarkCutHeuristic {
    static Storage<CuddCPG<symbolic::SymPricingFunction>> *cpg_storage;

#ifdef USE_CUDD
    symbolic::SymVariables *sym_vars;
#endif

    std::vector<std::vector<int> > leaf_facts_price;

    virtual void initialize() override;
    virtual int compute_heuristic(const GlobalState &state) override;

#ifdef USE_CUDD
    void update_leaf_prices(LeafFactorID factor, ADD pricing_function, bool init);
#endif

public:
    LandmarkCutHeuristicSymbolic(const options::Options &opts);

    virtual ~LandmarkCutHeuristicSymbolic() = default;

};

#endif
