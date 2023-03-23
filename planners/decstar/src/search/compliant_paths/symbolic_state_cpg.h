#ifndef SYMBOLIC_STATE_CPG_H
#define SYMBOLIC_STATE_CPG_H

#include "compliant_path_graph.h"



class SymbolicStateCPG : public CompliantPathGraph {
    friend class CompliantPathGraph; // get_init_state_cpg()


    static std::unique_ptr<CompliantPathGraph> get_init_state_cpg();

protected:


    virtual std::unique_ptr<CompliantPathGraph> get_successor_via_center_action(const GlobalState &new_center_state, const Operator &op) const override = 0;

    virtual DOMINANCE check_dominance(const GlobalState &other, int g_advantage = 0, DOMINANCE needed = DOMINANCE::NONE) override = 0;

    virtual void store_new_cpg(const GlobalState &state) override = 0;

    virtual bool is_hypercube_covered(const GlobalState &base_state, int curr_number_duplicates) const override = 0;

public:

    virtual ~SymbolicStateCPG() = default;


    virtual void populate_reached_leaf_facts(std::function<void(int, int)> f) const override = 0;

    virtual void populate_cost_of_leaf_facts(std::function<void(int, int, int)> f) const override = 0;

    virtual bool goal_reachable(LeafFactorID factor) const override = 0;

    virtual int get_goal_cost(LeafFactorID factor) const override = 0;

    virtual bool is_applicable(const Operator &op) const override = 0;

    virtual void remove_inapplicable_ops(std::vector<OperatorID> &ops) const override = 0;

    virtual uint64_t get_hash() const override = 0;

    virtual void dump() const override = 0;

    // returns an approximation of the number of bytes stored in memory of this CPG
    virtual size_t get_memory_footprint() const override = 0;


    static void fill_in_leaf_actions(std::vector<OperatorID> &ops, std::vector<StateID> &states);

    static void print_statistics();

};

#endif
