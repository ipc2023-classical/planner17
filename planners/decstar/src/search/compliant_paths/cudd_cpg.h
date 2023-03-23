#ifndef CUDD_CPG_H
#define CUDD_CPG_H

#include "cpg_storage.h"
#include "symbolic_state_cpg.h"

namespace symbolic {
template<class>
class SymDecoupledManager;
class SymDecoupledManagerOptions;
}

template<class T>
class CuddCPG : public SymbolicStateCPG {
    friend class Factoring; // to set sym_manager given command line options
    friend class SymbolicStateCPG;
    template<class>
    friend class symbolic::SymDecoupledManager;
    friend class LandmarkCutHeuristicSymbolic;


    std::vector<std::shared_ptr<T>> sym_leaf_info;


    static bool initialized;

    static Storage<CuddCPG<T>> *cpg_storage;

    static std::unique_ptr<symbolic::SymDecoupledManager<T>> sym_manager;


    static std::unique_ptr<CompliantPathGraph> get_init_state_cpg();

    static void initialize();

    static void set_sym_manager(const symbolic::SymDecoupledManagerOptions &options);

    static void set_min_leaf_goal_cost(LeafFactorID factor, int cost);

    static void set_min_leaf_goal_cost(int cost);

protected:

    virtual std::unique_ptr<CompliantPathGraph> get_successor_via_center_action(const GlobalState &new_center_state, const Operator &op) const override;

    virtual DOMINANCE check_dominance(const GlobalState &other, int g_advantage = 0, DOMINANCE needed = DOMINANCE::NONE) override;

    virtual void store_new_cpg(const GlobalState &state) override;

    virtual bool is_hypercube_covered(const GlobalState &base_state, int curr_number_duplicates) const override;

public:

    CuddCPG<T>(){};

    CuddCPG<T>(const CuddCPG &cpg);

    CuddCPG<T>(CuddCPG &&other) = delete;

    CuddCPG<T>& operator=(const CuddCPG<T> &other) = delete;

    CuddCPG<T>& operator=(CuddCPG<T> &&other);

    virtual ~CuddCPG<T>() = default;


    virtual void populate_reached_leaf_facts(std::function<void(int, int)> f) const override;

    virtual void populate_cost_of_leaf_facts(std::function<void(int, int, int)> f) const override;

    virtual bool goal_reachable(LeafFactorID factor) const override;

    virtual int get_goal_cost(LeafFactorID factor) const override;


    virtual int get_total_goal_price() const override;

    virtual bool is_optimal_leaf_plan(int leaf_part_g) const override;


    virtual bool is_applicable(const Operator &op) const override;

    virtual void remove_inapplicable_ops(std::vector<OperatorID> &ops) const override;

    virtual uint64_t get_hash() const override;


    virtual void dump() const override;

    // returns an approximation of the number of bytes stored in memory of this CPG
    virtual size_t get_memory_footprint() const override;


    static void fill_in_leaf_actions(std::vector<OperatorID> &ops, std::vector<StateID> &states);

    static void print_statistics();

    static void register_cpg_storage(Storage<CuddCPG<T>> *storage);

};

#endif
