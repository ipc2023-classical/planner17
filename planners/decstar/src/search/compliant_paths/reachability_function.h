#ifndef REACHABILITY_FUNCTION_H
#define REACHABILITY_FUNCTION_H

#include "../ext/boost/dynamic_bitset.hpp"
#include "explicit_state_cpg.h"
#include "../symmetries/symmetry_cpg.h"

#include <vector>

template<class T>
class Storage;

class Reachable : public ExplicitStateCPG, public symmetries::SymmetryCPG {
    friend class ExplicitStateCPG; // to get init state cpg

    static Storage<Reachable> *cpg_storage;


    void resize();

    void handle_new_leaf_state_from_center_op(LeafStateHash id, LeafFactorID factor);


    static std::unique_ptr<CompliantPathGraph> get_init_state_cpg();

protected:

    std::vector<boost::dynamic_bitset<> > reachable;

    boost::dynamic_bitset<> goal_reached;

    // return true, if the fact was actually added
    // in satisficing planning, return true only if the leaf state was
    // not already reached, before
    bool add_state(LeafStateHash id, LeafFactorID factor);

    void apply_center_op_to_leaves(const Reachable &old_cpg, const Operator &op);

    virtual std::unique_ptr<CompliantPathGraph> get_successor_via_center_action(const GlobalState &new_center_state,
                                                                                const Operator &op) const override;

    void update(const GlobalState &new_center_state);

    virtual DOMINANCE check_dominance(const GlobalState &other, int g_advantage, DOMINANCE needed) override;

    virtual void store_new_cpg(const GlobalState &state) override;

    virtual bool is_hypercube_covered(const GlobalState &base_state, int curr_number_duplicates) const override;

public:

    Reachable(){};

    Reachable(const Reachable &cpg);

    Reachable(Reachable &&other) = delete;

    Reachable& operator=(const Reachable &other) = delete;

    Reachable& operator=(Reachable &&other);

    virtual bool has_leaf_state(LeafStateHash id, LeafFactorID factor) const override;

    virtual int get_cost_of_state(LeafStateHash id, LeafFactorID factor) const override;

    virtual size_t get_number_states(LeafFactorID factor) const override;

    virtual void populate_reached_leaf_facts(std::function<void(int, int)> f) const override;

    virtual void populate_cost_of_leaf_facts(std::function<void(int, int, int)> f) const override;

    virtual int get_goal_cost(LeafFactorID factor) const override;

    virtual bool goal_reachable(LeafFactorID factor) const override;

    virtual void dump() const override;

    virtual void apply_symmetry_permutation(const symmetries::LeavesPermutation &permutation) override;

    virtual symmetries::SymmetryCPG* get_init_sym_cpg() const override;

    virtual std::unique_ptr<symmetries::SymmetryCPG> clone() const override;

    virtual uint64_t get_hash() const override;

    virtual size_t get_memory_footprint() const override;


    static void register_cpg_storage(Storage<Reachable> *storage);

};



#endif
