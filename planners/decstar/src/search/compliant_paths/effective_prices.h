#ifndef EFFECTIVE_PRICES_H
#define EFFECTIVE_PRICES_H

#include "compliant_path_graph.h"
#include "pricing_function.h"

#include <vector>

template<class T>
class Storage;

class EffectivePrices : public Prices {
    friend class Prices; // to get init state cpg

    static Storage<EffectivePrices> *cpg_storage;


    void resize();

    void goal_price_propagation();

    void propagate_dominance_prices();


    static std::unique_ptr<CompliantPathGraph> get_init_state_cpg();

protected:

    std::vector<std::vector<int> > effective_prices;

    std::vector<size_t> number_effective_states;


    bool add_effective_state(LeafStateHash id, LeafFactorID factor, int cost);

    bool has_effective_leaf_state(LeafStateHash id, LeafFactorID factor) const;

    int get_effective_cost_of_state(LeafStateHash id, LeafFactorID factor) const;

    size_t get_number_effective_states(LeafFactorID factor) const;

    virtual std::unique_ptr<CompliantPathGraph> get_successor_via_center_action(const GlobalState &new_center_state,
                                                                                const Operator &op) const override;

    virtual DOMINANCE check_dominance(const GlobalState &other, int g_advantage, DOMINANCE needed) override;

    virtual void store_new_cpg(const GlobalState &state) override;

public:

    EffectivePrices(){
        assert(g_factoring->get_profile() == FACTORING_PROFILE::FORK);
    };

    EffectivePrices(const EffectivePrices &cpg);

    EffectivePrices(EffectivePrices &&other) = delete;

    EffectivePrices& operator=(const EffectivePrices &other) = delete;

    EffectivePrices& operator=(EffectivePrices &&other);


    virtual void dump() const override;

    virtual std::unique_ptr<symmetries::SymmetryCPG> clone() const override;

    virtual void apply_symmetry_permutation(const symmetries::LeavesPermutation &per) override;

    virtual symmetries::SymmetryCPG* get_init_sym_cpg() const override;

    virtual size_t get_memory_footprint() const override;

    virtual uint64_t get_hash() const override;


    static void register_cpg_storage(Storage<EffectivePrices> *storage);

};

#endif
