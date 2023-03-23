#ifndef SYMMETRIES_LEXICOGRAPHIC_ORDERING_H
#define SYMMETRIES_LEXICOGRAPHIC_ORDERING_H

namespace options {
class Options;
class OptionParser;
}

namespace symmetries {

class LeavesPermutation;
class SymmetryCPG;

class LexicographicOrdering {
    
    const bool apply_goal_cost;
    const bool apply_num_states;
    const bool apply_prices;

public:
    
    LexicographicOrdering(const options::Options &opts);
    
    bool produces_less(const LeavesPermutation &per, 
		       const SymmetryCPG &p) const;

    bool optimize_leaves() const {
        return apply_goal_cost || apply_num_states || apply_prices;
    }

    void print_ordering(const SymmetryCPG &p) const;

    static void add_options_to_parser(options::OptionParser &parser);
    
};

}

#endif
