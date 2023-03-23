#ifndef FACTORINGS_LP_STAR_FACTORING_H
#define FACTORINGS_LP_STAR_FACTORING_H

#include "lp_factoring.h"


namespace lp_star_factoring {
class LPStarFactoring : public lp_factoring::LPFactoring {

    enum STRATEGY {
        MIS,
        MIS_MOBILE,
        MIS_LP_RELAX,
        MML,
        MML_MODULAR,
        MML_MODULAR_NO_SCHEMES,
        MM,
        MF,
        MMF,
    };

    enum FACTORING_TYPE {
        GENERAL, // TODO rename this to GENERAL_STAR to avoid confusion
        STRICT, // TODO rename this to STRICT_STAR to avoid confusion?
        F,
        IF,
    };

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

    STRATEGY strategy;

    FACTORING_TYPE factoring_type;

    int min_mobility;

    float min_flexibility;

    int max_merge_steps;


    mutable std::vector<std::set<size_t> > var_to_p_leaves; // maps variables to potential leaf ids

    FactoredVars get_factoring() override;

    FactoredVars get_mip_factoring() const;

    FactoredVars get_max_mobile_leaves() const;

    FactoredVars get_max_mobile_leaves_modular() const;

    FactoredVars get_max_mobile_leaves_modular_no_schemes() const;

    std::vector<bool> get_mobile_vars() const;

    void filter_action_schemas() const;

    std::vector<PotentialLeaf> get_potential_leaves() const;

    void merge_potential_leaves(std::vector<PotentialLeaf> &potential_leaves) const;

public:

    LPStarFactoring(const options::Options &opts);

    static void add_options_to_parser(options::OptionParser &parser);

};
}

#endif
