#ifndef EXPLICIT_STATE_CPG_H
#define EXPLICIT_STATE_CPG_H

#include "compliant_path_graph.h"


class Prices;

namespace stubborn_sets_decoupled {
class StubbornSetsDecoupled;
}

class ExplicitStateCPG : public CompliantPathGraph {
    friend class CompliantPathGraph; // get_init_state_cpg()
    friend class PathPrices; // get_init_state_cpg()
    friend class PruningOptions; // access to leaf_state_pre/successors
    friend class StateRegistry; // clear cache
    friend class stubborn_sets_decoupled::StubbornSetsDecoupled; // access to leaf_state_pre/successors


    static bool initialized;


    static void build_leaf_state_space(Prices &prices,
                                       LeafStateHash first_state_id,
                                       LeafFactorID factor,
                                       bool set_leaf_invertibility);

    /*
      this builds all entire leaf state spaces and stores them
    */
    static void build_leaf_state_spaces();

    static void initialize();

    static std::unique_ptr<CompliantPathGraph> get_init_state_cpg();

protected:

    // contains center actions only, keeping their leaf preconditions
    static std::unique_ptr<successor_generator::SuccessorGenerator> center_action_successor_generator;

    // contains only leaf actions, branching only over the leaf preconditions
    static std::vector<std::unique_ptr<successor_generator::SuccessorGenerator> > leaf_successor_generators;

    static const size_t MAX_LEAF_SPACE_STORE;

    static bool compute_leaf_backwards_graph;

    static bool store_leaf_goal_states;

    static std::vector<bool> precompute_leaf_state_spaces;

    static std::vector<boost::dynamic_bitset<> > is_a_leaf_goal_state;

    // these are only computed if store_leaf_goal_states is true
    static std::vector<std::vector<LeafStateHash> > leaf_goal_states;

    static std::vector<std::vector<std::vector<OperatorID> > > center_successors;

    static std::vector<std::vector<std::vector<std::pair<OperatorID, LeafStateHash> > > > leaf_state_successors;

    static std::vector<std::vector<std::vector<std::pair<OperatorID, LeafStateHash> > > > leaf_state_predecessors;

    static std::vector<bool> is_leaf_state_space_scc;

    static std::vector<std::vector<int> > leaf_state_id_map;

    static std::vector<size_t> curr_leaf_state_max_id;


    virtual std::unique_ptr<CompliantPathGraph> get_successor_via_center_action(const GlobalState &new_center_state, const Operator &op) const override = 0;

    virtual DOMINANCE check_dominance(const GlobalState &other, int g_advantage = 0, DOMINANCE needed = DOMINANCE::NONE) override = 0;

    virtual void store_new_cpg(const GlobalState &state) override = 0;

    virtual bool is_hypercube_covered(const GlobalState &base_state, int curr_number_duplicates) const override = 0;

public:


    virtual ~ExplicitStateCPG() = default;

    // TODO has_leaf_state and get_number_states are mainly used to iterate
    // over leaf state IDs, what about having some kind of iterator providing
    // this functionality?

    virtual bool has_leaf_state(LeafStateHash id, LeafFactorID factor) const = 0;

    virtual int get_cost_of_state(LeafStateHash id, LeafFactorID factor) const = 0;

    virtual size_t get_number_states(LeafFactorID factor) const = 0;

    virtual void populate_reached_leaf_facts(std::function<void(int, int)> f) const override = 0;

    virtual void populate_cost_of_leaf_facts(std::function<void(int, int, int)> f) const override = 0;

    virtual bool goal_reachable(LeafFactorID factor) const override = 0;

    virtual int get_total_goal_price() const override;

    virtual int get_goal_cost(LeafFactorID factor) const override = 0;

    virtual bool is_optimal_leaf_plan(int leaf_part_g) const override;

    virtual bool is_applicable(const Operator &op) const override;

    virtual void remove_inapplicable_ops(std::vector<OperatorID> &ops) const override;

    virtual void dump() const override = 0;

    // returns an approximation of the number of bytes stored in memory of this CPG for factor
    virtual size_t get_memory_footprint() const override = 0;

    virtual uint64_t get_hash() const override = 0;


    static void build_leaf_successor_generators();

    static bool is_leaf_goal_state(LeafStateHash id, LeafFactorID factor);

    static const std::vector<LeafStateHash>& get_leaf_goal_states(LeafFactorID factor);

    static void store_is_leaf_goal_state(const LeafState &state);

    static LeafStateHash get_leaf_state_hash(const std::vector<int> &new_leaf_state, LeafFactorID factor);

    static void set_compute_leaf_backwards_graph() {
        compute_leaf_backwards_graph = true;
    }

    static void set_store_leaf_goal_states() {
        store_leaf_goal_states = true;
    }

    static void set_precompute_leaf_state_spaces(const std::vector<bool> &precompute) {
        precompute_leaf_state_spaces = precompute;
    }

    static bool precompute_leaf_state_space(LeafFactorID factor) {
        return precompute_leaf_state_spaces[factor];
    }

    static bool all_leaves_invertible() {
        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
            if (!is_leaf_state_space_scc[factor]){
                return false;
            }
        }
        return true;
    }

    static void print_statistics();

};

#endif
