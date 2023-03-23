#ifndef FACTORINGS_MIS_FACTORINGS_H
#define FACTORINGS_MIS_FACTORINGS_H

#include "../algorithms/mis.h"
#include "../factoring.h"
#include "factoring_ranking.h"

#include <vector>

namespace mis_factoring {
class MaxIndependentSetFactoring : public Factoring {

    bool arg_minimize_center;

    bool arg_minimize_frozen;

    int arg_merge_leaves_level;

    bool arg_find_all_mis;

    int arg_number_mis;

    std::vector<FactoringRanking* > arg_rankings;


    void optimize_feature(FactoredVars &, const NGraph &, int &, int &, int &) const;

    NGraph generate_ngraph() const;

    bool check_factoring(const FactoredVars &factoring) const;

protected:

    FactoredVars get_factoring() override;

public:

    MaxIndependentSetFactoring(const options::Options &opts);


    static void add_options_to_parser(options::OptionParser &parser);

};
}

#endif
