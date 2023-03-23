#ifndef FRONTIER_PRICES_H
#define FRONTIER_PRICES_H

#include "../ext/boost/dynamic_bitset.hpp"
#include "compliant_path_graph.h"
#include "effective_prices.h"

#include <vector>

template<class T>
class Storage;

class FrontierPrices : public EffectivePrices {
    friend class EffectivePrices; // to get init state cpg

    static Storage<FrontierPrices> *cpg_storage;


    void resize();

    void compute_cost_frontier();

    void compute_cost_frontier(LeafFactorID factor);

    void goal_price_propagation();

    void propagate_dominance_prices();

    void update(const GlobalState &new_center_state);


    static std::unique_ptr<CompliantPathGraph> get_init_state_cpg();

protected:

    std::vector<boost::dynamic_bitset<> > frontier;


    virtual std::unique_ptr<CompliantPathGraph> get_successor_via_center_action(const GlobalState &new_center_state,
                                                                                const Operator &op) const override;

    virtual DOMINANCE check_dominance(const GlobalState &other, int g_advantage, DOMINANCE needed) override;

    virtual void store_new_cpg(const GlobalState &state) override;

public:

    FrontierPrices(){
        assert(g_factoring->get_profile() == FACTORING_PROFILE::FORK);
    };

    FrontierPrices(const FrontierPrices &cpg);

    FrontierPrices(FrontierPrices &&other) = delete;

    FrontierPrices& operator=(const FrontierPrices &other) = delete;

    FrontierPrices& operator=(FrontierPrices &&other);


    virtual std::unique_ptr<symmetries::SymmetryCPG> clone() const override;

    virtual void apply_symmetry_permutation(const symmetries::LeavesPermutation &per) override;

    virtual symmetries::SymmetryCPG* get_init_sym_cpg() const override;

    virtual void dump() const override;

    virtual size_t get_memory_footprint() const override;

    virtual uint64_t get_hash() const override;


    static void register_cpg_storage(Storage<FrontierPrices> *storage);

};



#endif
