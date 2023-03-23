#ifndef FACTORINGS_FACTORING_RANKING_H
#define FACTORINGS_FACTORING_RANKING_H

#include "../factoring.h"
#include "../utils/variable_int.h"

#include <set>
#include <vector>


namespace options {
class OptionParser;
}

enum FACTORING_FEATURE {
    MOBILITY,
    LEAVES,
    VARS,
    DOM_SIZE,
    AFF_ACTIONS
};

class FactoringRanking {

protected:

    FactoringRanking() {};

    virtual VarInt rank(const std::vector<std::set<int> > &factoring) = 0;

    const std::vector<std::set<size_t>>& get_var_to_affecting_op() {
        return Factoring::get_var_to_affecting_op();
    }

public:

    virtual ~FactoringRanking() = default;

    VarInt get_rank(const std::vector<std::set<int> > &factoring);

    virtual std::string print_feature() const = 0;


    static void add_options_to_parser(options::OptionParser &parser);
};


class MobilityRanking : public FactoringRanking {

public:

    ~MobilityRanking() = default;

    virtual std::string print_feature() const override;

    VarInt rank(const std::vector<std::set<int> > &factoring) override;
};

class LeavesRanking : public FactoringRanking {

public:

    ~LeavesRanking() = default;

    virtual std::string print_feature() const override;

    VarInt rank(const std::vector<std::set<int> > &factoring) override;
};

class DomSizeRanking : public FactoringRanking {

public:

    ~DomSizeRanking() = default;

    virtual std::string print_feature() const override;

    VarInt rank(const std::vector<std::set<int> > &factoring) override;
};

class VariablesRanking : public FactoringRanking {

public:

    ~VariablesRanking() = default;

    virtual std::string print_feature() const override;

    VarInt rank(const std::vector<std::set<int> > &factoring) override;
};

class AffActionsRanking : public FactoringRanking {

public:

    ~AffActionsRanking() = default;

    virtual std::string print_feature() const override;

    VarInt rank(const std::vector<std::set<int> > &factoring) override;
};


#endif
