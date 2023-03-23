#ifndef FACTORINGS_SCHEMA_IA_FACTORING_H
#define FACTORINGS_SCHEMA_IA_FACTORING_H

#include "../factoring.h"

namespace options {
class Options;
class OptionParser;
}

namespace schema_ia_factoring {
class SchemaIAFactoring : public Factoring {

    struct EffectSchema {
        int num_actions; // number of actions with the action schema
        std::vector<int> vars; // sorted

        EffectSchema(int num_actions, const std::vector<int> &vars)
            : num_actions(num_actions), vars(vars) {
        }

        void incr_num_action() {
            num_actions++;
        }
    };

    FactoredVars get_factoring() override;

    std::vector<std::set<int>> get_leaves(const std::vector<bool> &center,
                                          const std::vector<std::vector<bool> > &schema_cg,
                                          const std::vector<std::vector<bool> > &intersect,
                                          const std::vector<EffectSchema> &eff_schemas) const;

    std::vector<EffectSchema> get_effect_schemas() const;

    // TODO look into this
//    void merge_potential_leaves(std::vector<PotentialLeaf> &potential_leaves, std::vector<std::set<size_t> > &var_to_p_leaves) const;

public:

    SchemaIAFactoring(const options::Options &opts);

    static void add_options_to_parser(options::OptionParser &parser);

};
}


#endif
