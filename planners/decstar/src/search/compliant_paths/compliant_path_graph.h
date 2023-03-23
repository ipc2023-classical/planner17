#ifndef COMPLIANT_PATH_GRAPH_H
#define COMPLIANT_PATH_GRAPH_H

#include "../ext/boost/dynamic_bitset.hpp"
#include "../factoring.h"
#include "../globals.h"
#include "../operator_cost.h"
#include "../operator_id.h"
#include "../per_state_information.h"
#include "pruning_options.h"

#include <unordered_map>
#include <vector>


class LeafState;
class LeafStateID;
class SearchSpace;
class GlobalState;
class StateID;


class CompliantPathGraph {
    friend class PathPrices; // get_successor_via_center_action()
    friend class SearchSpace; // init state cpg + get successors
    friend class StateRegistry; // get_init_state_cpg() + check_dominance()


    static bool initialized;

    // when pruning->use_transitivity() is enabled:
    // this stores for every decoupled base state (i.e. state with duplicate counter 0)
    // the set of decoupled states (in terms of their dup counter) that is not dominated
    // by another generated decoupled state. such states have to be checked in dominance
    // pruning, since they have the maximum pruning potential
    static std::unordered_map<size_t, std::vector<int>> non_dominated_states;

    // when pruning->use_exact_duplicate_checking() is enabled:
    // this stores for every decoupled base state (i.e. state with duplicate counter 0)
    // and CompliantPathGraph hash the set of decoupled states (in terms of their dup counter)
    // with that hash. Such states have to be checked explicitly in dominance
    // pruning, if they are indeed equal to a previously seen state.
    static std::unordered_map<size_t, std::unordered_map<std::uint64_t, std::vector<int>>> duplicate_table;


    static void initialize();

    static std::unique_ptr<CompliantPathGraph> get_init_state_cpg();

    static void notify_new_center_state(const GlobalState &state, const CompliantPathGraph &cpg);

    // returns the duplicate counter for this base state and compliant path graph
    // i.e. the counter of the state subsuming that or the current max + 1
    std::pair<int, bool> check_dominance(const GlobalState &base_state,
            int curr_number_duplicates,
            const GlobalState &predecessor,
            const Operator &op);

protected:

    static SearchSpace *search_space;

    static OperatorCost cost_type;

    static std::shared_ptr<PruningOptions> pruning;

    // contains the locally minimal goal cost per factor
    static std::vector<int> min_leaf_goal_cost;

    static int sum_min_leaf_goal_cost;

    static std::vector<int> min_leaf_action_cost;


    virtual std::unique_ptr<CompliantPathGraph> get_successor_via_center_action(const GlobalState &new_center_state, const Operator &op) const = 0;

    virtual DOMINANCE check_dominance(const GlobalState &other, int g_advantage = 0, DOMINANCE needed = DOMINANCE::NONE) = 0;

    virtual void store_new_cpg(const GlobalState &state) = 0;

    virtual bool is_hypercube_covered(const GlobalState &base_state, int curr_number_duplicates) const = 0;

public:

    static const int INF;


    virtual ~CompliantPathGraph() = default;


    virtual void populate_reached_leaf_facts(std::function<void(int, int)> f) const = 0;

    virtual void populate_cost_of_leaf_facts(std::function<void(int, int, int)> f) const = 0;

    virtual bool goal_reachable(LeafFactorID factor) const = 0;

    virtual int get_goal_cost(LeafFactorID factor) const = 0;

    virtual int get_total_goal_price() const = 0;

    virtual bool is_optimal_leaf_plan(int leaf_part_g) const = 0;


    virtual bool is_applicable(const Operator &op) const = 0;

    virtual void remove_inapplicable_ops(std::vector<OperatorID> &ops) const = 0;


    virtual uint64_t get_hash() const = 0;


    virtual void dump() const = 0;

    // returns an approximation of the number of bytes stored in memory of this CPG
    virtual size_t get_memory_footprint() const = 0;


    static void fill_in_leaf_actions(std::vector<OperatorID> &ops, std::vector<StateID> &states);

    static int get_min_leaf_goal_cost(LeafFactorID factor);

    static int get_min_leaf_goal_cost();

    static int get_min_leaf_action_cost(LeafFactorID factor) {
        assert(initialized && factor < min_leaf_action_cost.size());
        return min_leaf_action_cost[factor];
    }

    static void set_pruning_options(std::shared_ptr<PruningOptions> p) {
        pruning = p;
    }

    static const PruningOptions& get_pruning_options() {
        return *pruning;
    }

    static void set_search_space(SearchSpace *sp) {
        search_space = sp;
    }

    static void set_cost_type(OperatorCost ct);

    static OperatorCost get_cost_type() {
        return cost_type;
    }

    static void print_statistics();

};

#endif
