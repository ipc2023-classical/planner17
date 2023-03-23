#ifndef PRUNING_REACHABLE_H
#define PRUNING_REACHABLE_H

#include "../ext/boost/dynamic_bitset.hpp"
#include "reachability_function.h"

#include <vector>

template<class T>
class Storage;

class PruningReachable : public Reachable {
    friend class Reachable; // to get init state cpg

    static Storage<PruningReachable> *cpg_storage;


    void resize();

    void compute_frontier();


    static std::unique_ptr<CompliantPathGraph> get_init_state_cpg();

protected:

    std::vector<boost::dynamic_bitset<> > frontier;

    virtual std::unique_ptr<CompliantPathGraph> get_successor_via_center_action(const GlobalState &new_center_state,
                                                                                const Operator &op) const override;

// no own implementation so far. the only use would be to skip non-frontier states in the update
// virtual void update(const GlobalState &base_state) = 0;

    virtual DOMINANCE check_dominance(const GlobalState &other, int g_advantage, DOMINANCE needed) override;

    virtual void store_new_cpg(const GlobalState &state) override;

public:

    PruningReachable(){
        assert(g_factoring->get_profile() == FORK);
    };

    PruningReachable(const PruningReachable &cpg);

    PruningReachable(PruningReachable &&other) = delete;

    PruningReachable& operator=(const PruningReachable &other) = delete;

    PruningReachable& operator=(PruningReachable &&other);

    virtual void dump() const override;

    virtual std::unique_ptr<SymmetryCPG> clone() const override;

    virtual void apply_symmetry_permutation(const symmetries::LeavesPermutation &permutation) override;

    virtual symmetries::SymmetryCPG* get_init_sym_cpg() const override;

    virtual size_t get_memory_footprint() const override;

    virtual uint64_t get_hash() const override;


    static void register_cpg_storage(Storage<PruningReachable> *storage);

};

#endif
