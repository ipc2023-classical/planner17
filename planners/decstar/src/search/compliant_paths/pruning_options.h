#ifndef PRUNING_OPTIONS_H
#define PRUNING_OPTIONS_H

#include <memory>

namespace options {
class Options;
class OptionParser;
}

enum DOMINANCE {
    NONE,
    DOMINATED,
    DOMINATES,
    EQUAL
};


class PruningOptions {
    
    enum PRUNING_TYPE {
        DOMINANCE,
        DUPLICATE,
        FRONTIER
    };

    enum IRRELEVANCE {
        NO,
        STATES,
        TRANSITIONS
    };

    PRUNING_TYPE pruning_type;
    
    bool hypercube_pruning;

    // use g_inc_g_by to increase the g-value of decoupled states
    // by the sum of minimum prices
    bool min_price_in_g;

    // incorporate the difference in g-values of decoupled states
    // into the dominance checking
    bool g_in_dominance;

    // compare prices across leaves, so higher prices in one
    // can be traded against lower prices in another leaf
    bool prices_in_dominance;

    // make use of transitivity of dominance relation, i.e.,
    // don't check dominance of a new state against a state
    // s if there exists another state s' that dominates s
    // and the dominance will check s' anyway
    bool transitivity;

    // in case a leaf state space is invertible,
    bool exploit_leaf_invertibility;

    IRRELEVANCE irrelevance;

    bool do_simulation;
    
    bool goal_price_propagation;

    
    static bool ignore_current_search_state; // TODO: get rid of this hack

public:
    PruningOptions() : pruning_type(PRUNING_TYPE::DOMINANCE),
                       hypercube_pruning(false),
                       min_price_in_g(true),
                       g_in_dominance(true),
                       prices_in_dominance(true),
                       transitivity(true),
                       exploit_leaf_invertibility(true),
                       irrelevance(IRRELEVANCE::NO),
                       do_simulation(false), 
                       goal_price_propagation(false) {}

    PruningOptions(const options::Options &opts);

    ~PruningOptions() = default;
    
    void verify_options();

    void apply_leaf_state_space_pruning() const;
    
    bool use_dominance_pruning() const {
        return pruning_type == PRUNING_TYPE::DOMINANCE;
    }

    bool use_exact_duplicate_checking() const {
        return pruning_type == PRUNING_TYPE::DUPLICATE;
    }

    bool use_frontier_pruning() const {
        return pruning_type == PRUNING_TYPE::FRONTIER;
    }
    
    bool use_hypercube_pruning() const {
        return hypercube_pruning;
    }

    bool include_min_price_in_g() const {
        return min_price_in_g;
    }

    bool include_g_in_dominance() const {
        return g_in_dominance;
    }

    bool trade_prices_in_dominance() const {
        return prices_in_dominance;
    }

    bool use_transitivity() const {
        return transitivity;
    }

    bool exploit_invertible_leaf_state_spaces() const {
        return exploit_leaf_invertibility;
    }

    bool do_advanced_pruning() const {
        return do_simulation || goal_price_propagation || pruning_type == PRUNING_TYPE::FRONTIER;
    }
    
    bool propagate_goal_prices() const {
        return goal_price_propagation;
    }
    
    bool propagate_simulation_prices() const {
        return do_simulation;
    }

    
    static void set_ignore_current_state() {
        ignore_current_search_state = true;
    }
    
    static void reset_ignore_current_state() {
        ignore_current_search_state = false;
    }
    
    static bool ignore_current_state() {
        return ignore_current_search_state;
    }
    
    static void add_options_to_parser(options::OptionParser &parser);

    static std::shared_ptr<PruningOptions> _parse_dominance(options::OptionParser &parser);
    static std::shared_ptr<PruningOptions> _parse_duplicate(options::OptionParser &parser);
    static std::shared_ptr<PruningOptions> _parse_frontier(options::OptionParser &parser);

};

#endif
 
