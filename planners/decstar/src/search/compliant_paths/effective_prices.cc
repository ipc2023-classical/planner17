#include "effective_prices.h"

#include "cpg_storage.h"
#include "../factoring.h"
#include "frontier_prices.h"
#include "../globals.h"
#include "../operator.h"
#include "../algorithms/priority_queues.h"
#include "pruning_options.h"
#include "simulation_relation.h"
#include "../state_registry.h"
#include "../symmetries/decoupled_permutation.h"

#include <limits>
#include <numeric>


using namespace std;


Storage<EffectivePrices>* EffectivePrices::cpg_storage;

void EffectivePrices::register_cpg_storage(Storage<EffectivePrices> *storage) {
    cpg_storage = storage;
}

EffectivePrices::EffectivePrices(const EffectivePrices &other) : Prices(other) {
    assert(g_factoring->get_profile() == FACTORING_PROFILE::FORK);
    // TODO why dont we copy effective_prices here?
    // trying it out results in incomplete algorithm, just why??
}

EffectivePrices& EffectivePrices::operator=(EffectivePrices &&other) {
    prices = move(other.prices);
    number_states = move(other.number_states);
    goal_cost = move(other.goal_cost);
    effective_prices = move(other.effective_prices);
    number_effective_states = move(other.number_effective_states);
    return *this;
}

void EffectivePrices::resize() {
    assert(g_factoring->get_profile() == FACTORING_PROFILE::FORK);
    number_states = vector<size_t>(g_leaves.size(), 0);
    prices = vector<vector<int> >(g_leaves.size());
    goal_cost = vector<int>(g_leaves.size(), INF);
    // TODO why dont we resize effective_prices + number..? see also above comment
}

bool EffectivePrices::add_effective_state(LeafStateHash id, LeafFactorID factor, int cost) {
    assert(cost >= 0);
    if (leaf_state_id_map[factor][id] == -1){ // get new index to prevent facts vector from being sparse
        leaf_state_id_map[factor][id] = curr_leaf_state_max_id[factor];
        ++curr_leaf_state_max_id[factor];
    }
    assert(leaf_state_id_map[factor][id] >= 0);
    size_t leaf_id = leaf_state_id_map[factor][id];

    if(effective_prices.empty()){
        if (has_leaf_state(id, factor) && cost >= get_cost_of_state(id, factor)) {
            return false;
        }
        effective_prices = prices;
        number_effective_states = number_states;
    }

    if (leaf_id >= effective_prices[factor].size()){
        effective_prices[factor].resize(leaf_id + 1, INF);
    }

    if (effective_prices[factor][leaf_id] == INF){
        effective_prices[factor][leaf_id] = cost;
        ++number_effective_states[factor];
        return true;
    } else if (effective_prices[factor][leaf_id] > cost){
        effective_prices[factor][leaf_id] = cost;
        return true;
    }
    return false;
}

unique_ptr<CompliantPathGraph> EffectivePrices::get_successor_via_center_action(const GlobalState &new_center_state,
                                                                                const Operator &) const {
    unique_ptr<EffectivePrices> eff_prices(new EffectivePrices(*this));
    eff_prices->update(new_center_state);
    if(pruning->propagate_simulation_prices()){
        eff_prices->propagate_dominance_prices();
    }
    if(pruning->propagate_goal_prices()) {
        eff_prices->goal_price_propagation();
    }
    return eff_prices;
}

DOMINANCE EffectivePrices::check_dominance(const GlobalState &other, int g_advantage, DOMINANCE needed) {

    if (!pruning->include_g_in_dominance()){
        g_advantage = 0;
    }

    const EffectivePrices *other_cpg = &cpg_storage->cpgs[other];

    bool dominated = true;
    bool dominates = true;

    int goal_advantage = 0;
    int goal_disadvantage = 0;

    // check number of reachable leaf states and goal cost for early termination
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        if (other_cpg->get_number_effective_states(factor) > get_number_effective_states(factor)){
            dominates = false;
        } else if (other_cpg->get_number_effective_states(factor) < get_number_effective_states(factor)){
            dominated = false;
        }

        if (!g_goals_per_factor[factor].empty()){
            // compare goal cost
            int old_goal_cost = other_cpg->get_goal_cost(factor);
            int new_goal_cost = get_goal_cost(factor);
            if (old_goal_cost != CompliantPathGraph::INF){
                if (new_goal_cost != CompliantPathGraph::INF){
                    if (old_goal_cost > new_goal_cost){
                        goal_advantage += old_goal_cost - new_goal_cost;
                    } else if (old_goal_cost < new_goal_cost){
                        goal_disadvantage += new_goal_cost - old_goal_cost;
                    }
                } else {
                    dominates = false;
                }
            } else if (new_goal_cost != CompliantPathGraph::INF){
                dominated = false;
            }
        }
    }

    if (pruning->trade_prices_in_dominance()){
        if (g_advantage + goal_advantage - goal_disadvantage > 0){
            dominated = false;
        } else if (g_advantage + goal_advantage - goal_disadvantage < 0){
            dominates = false;
        }
    } else if (goal_advantage > 0 && goal_disadvantage > 0){
        dominated = false;
        dominates = false;
    } else {
        if (g_advantage + goal_advantage > 0){
            dominated = false;
        }
        if (g_advantage - goal_disadvantage < 0){
            dominates = false;
        }
    }

    if (!dominates && !dominated){
        return DOMINANCE::NONE;
    } else if (!dominates){
        if (needed == DOMINANCE::DOMINATES || pruning->use_exact_duplicate_checking()){
            return DOMINANCE::NONE;
        }
    } else if (!dominated){
        if (needed == DOMINANCE::DOMINATED || pruning->use_exact_duplicate_checking()){
            return DOMINANCE::NONE;
        }
    }

    int sum_max_price_advantage = 0;
    int sum_max_price_disadvantage = 0;

    // compare prices / reachability
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        size_t number_new_states = get_number_effective_states(factor);
        size_t number_old_states = other_cpg->get_number_effective_states(factor);
        LeafStateHash id(0);
        int max_advantage = 0;
        int max_disadvantage = 0;
        int min_advantage = numeric_limits<int>::max();
        int min_disadvantage = numeric_limits<int>::max();
        while (number_new_states + number_old_states > 0){
            assert(id < g_state_registry->size(factor));
            if (has_effective_leaf_state(id, factor)){
                --number_new_states;
                if (other_cpg->has_effective_leaf_state(id, factor)){
                    --number_old_states;
                    int old_cost = other_cpg->get_effective_cost_of_state(id, factor);
                    int new_cost = get_effective_cost_of_state(id, factor);
                    assert(old_cost != CompliantPathGraph::INF && old_cost >= 0);
                    assert(new_cost != CompliantPathGraph::INF && new_cost >= 0);

                    if (old_cost > new_cost){
                        max_advantage = max(max_advantage, old_cost - new_cost);
                        min_advantage = min(min_advantage, old_cost - new_cost);
                    } else if (old_cost < new_cost){
                        max_disadvantage = max(max_disadvantage, new_cost - old_cost);
                        min_disadvantage = min(min_disadvantage, new_cost - old_cost);
                    } else {
                        min_advantage = 0;
                        min_disadvantage = 0;
                    }
                } else {
                    dominated = false;
                    if (!dominates ||
                            needed == DOMINANCE::DOMINATED ||
                            pruning->use_exact_duplicate_checking()){
                        return DOMINANCE::NONE;
                    }
                }
                if (number_old_states == 0 && number_new_states > 0){
                    dominated = false;
                    break;
                } else if (number_new_states == 0 && number_old_states > 0){
                    dominates = false;
                    break;
                }
            } else if (other_cpg->has_effective_leaf_state(id, factor)){
                --number_old_states;
                dominates = false;
                if (!dominated ||
                        needed == DOMINANCE::DOMINATES ||
                        pruning->use_exact_duplicate_checking()){
                    return DOMINANCE::NONE;
                }
                if (number_old_states == 0 && number_new_states > 0){
                    dominated = false;
                    break;
                }
            }
            ++id;
        }

        sum_max_price_advantage += max_advantage;
        sum_max_price_disadvantage -= max_disadvantage;

        if (pruning->trade_prices_in_dominance()){
            if (max_advantage == 0 && min_disadvantage != numeric_limits<int>::max()){
                sum_max_price_advantage -= min_disadvantage;
            }
            if (max_disadvantage == 0 && min_advantage != numeric_limits<int>::max()){
                sum_max_price_disadvantage += min_advantage;
            }
        } else {
            if (g_advantage + sum_max_price_advantage > 0){
                dominated = false;
            }
            if (g_advantage + sum_max_price_disadvantage < 0){
                dominates = false;
            }
        }

        if (!dominated && !dominates){
            return DOMINANCE::NONE;
        }
        if (pruning->use_exact_duplicate_checking() && (!dominates || !dominated)){
            return DOMINANCE::NONE;
        }
    }

    if (g_advantage + sum_max_price_advantage > 0){
        dominated = false;
    }
    if (g_advantage + sum_max_price_disadvantage < 0){
        dominates = false;
    }

    if (dominated && dominates){
#ifdef DEBUG_PRUNING
        cout << "old tag is equal to new one" << endl;
#endif
        return DOMINANCE::EQUAL;
    } else if (pruning->use_exact_duplicate_checking()){
        return DOMINANCE::NONE;
    } else if (dominated){
#ifdef DEBUG_PRUNING
        cout << "new tag is dominated by old one" << endl;
#endif
        return DOMINANCE::DOMINATED;
    } else if (dominates){
#ifdef DEBUG_PRUNING
        cout << "new tag dominates old one" << endl;
#endif
        return DOMINANCE::DOMINATES;
    }
    return DOMINANCE::NONE;
}

bool EffectivePrices::has_effective_leaf_state(LeafStateHash id, LeafFactorID factor) const {
    if (effective_prices.empty()){
        return has_leaf_state(id, factor);
    } else {
        if (leaf_state_id_map[factor][id] == -1){
            return false;
        }
        size_t leaf_id = leaf_state_id_map[factor][id];
        return leaf_id < effective_prices[factor].size() && effective_prices[factor][leaf_id] != INF;
    }
}

int EffectivePrices::get_effective_cost_of_state(LeafStateHash id, LeafFactorID factor) const {
    if (effective_prices.empty()){
        return get_cost_of_state(id, factor);
    } else {
        assert((size_t) leaf_state_id_map[factor][id] < effective_prices[factor].size());
        return effective_prices[factor][leaf_state_id_map[factor][id]];
    }
}

size_t EffectivePrices::get_number_effective_states(LeafFactorID factor) const {
    if (number_effective_states.empty()){
        return get_number_states(factor);
    } else {
        return number_effective_states[factor];
    }
}

void EffectivePrices::store_new_cpg(const GlobalState &state) {
    cpg_storage->store_cpg(state, *this);
}

unique_ptr<CompliantPathGraph> EffectivePrices::get_init_state_cpg() {
    if (pruning->use_frontier_pruning()){
        return FrontierPrices::get_init_state_cpg();
    }

    unique_ptr<EffectivePrices> init_effprices(new EffectivePrices());
    init_effprices->resize();

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        init_effprices->add_state(LeafStateHash(0), factor, 0);
    }
    init_effprices->update(g_state_registry->get_center_state(g_initial_state_data));

    return init_effprices;
}

void EffectivePrices::goal_price_propagation() {
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor) {
        vector<bool> closed(g_state_registry->size(factor), false);

        // Alvaro: Given the size of leaf factors I think a bucketqueue
        // should work better but requires some implementation
        // effort. Probably worth it to reduce overhead
        // Alvaro: Use a heap_queue?
        priority_queues::HeapQueue<LeafStateHash, priority_queues::compare_pair_first_greater<LeafStateHash> > open;

        for (LeafStateHash s : leaf_goal_states[factor]) {
            open.push(goal_cost[factor], s);
        }

        while (!open.empty()) {
            pair<int, LeafStateHash> entry = open.pop();
            LeafStateHash state = entry.second;

            if (closed[state]){
                continue;
            }

            int value = entry.first;

            closed[state] = true;

            if (value != INF) {
                add_effective_state(state, factor, value);
            }

            for (const auto &transition : leaf_state_predecessors[factor][state]) {
                LeafStateHash t = transition.second;

                if (closed[t]) {
                    continue;
                }

                int action_cost = get_adjusted_action_cost(g_operators[transition.first], cost_type);
                int propagated_val = (value == INF ? numeric_limits<int>::max() : std::max(0, value - action_cost));

                int previous_t_val = !has_effective_leaf_state(t, factor) ? numeric_limits<int>::max() :
                                      get_effective_cost_of_state(t, factor);

                int vt = min(previous_t_val, propagated_val);
                open.push((vt == numeric_limits<int>::max() ? INF : vt), t);
            }
        }
    }
}

void EffectivePrices::propagate_dominance_prices() {
    const vector<vector<vector<LeafStateHash> > > &simulated_states = SimulationRelation::get_simulation_relation();

    for (LeafFactorID factor(0); factor < simulated_states.size(); ++factor){
        for (LeafStateHash s(0); s < simulated_states[factor].size(); ++s) {
            if(has_effective_leaf_state(s, factor)){
                int cost_s = get_effective_cost_of_state(s, factor);
                for (LeafStateHash t : simulated_states[factor][s]) {
                    if (!has_effective_leaf_state(t, factor) || get_effective_cost_of_state(t, factor) > cost_s) {
                        add_effective_state(t, factor, cost_s);
                    }
                }
            }
        }
    }
}

void EffectivePrices::apply_symmetry_permutation(const symmetries::LeavesPermutation &per) {
    // Copy prices and reinitialize affected factors
    vector<vector<int> > old_prices(g_leaves.size());
    vector<size_t> old_number_states(g_leaves.size());
    vector<vector<int> > old_effective_prices(g_leaves.size());
    vector<size_t> old_number_effective_states(g_leaves.size());

#ifndef NDEBUG
    vector<int> old_goal_cost(goal_cost);

    old_number_states = number_states;
    old_number_effective_states = number_effective_states;
#endif

    for (LeafFactorID factor : per.get_factors_affected()) {
        old_number_states[factor] = number_states[factor];
        old_prices[factor] = prices[factor];

        number_states[factor] = 0;
        prices[factor] = vector<int>();
        goal_cost[factor] = INF;
        if (!effective_prices.empty()){
            old_effective_prices[factor] = effective_prices[factor];
            old_number_effective_states[factor] = number_effective_states[factor];

            effective_prices[factor] = vector<int>();
            number_effective_states[factor] = 0;
        }
    }

    for(LeafFactorID to_factor : per.get_factors_affected()) {
        assert(prices[to_factor].empty());

        LeafFactorID from_factor = per.get_from_factor(to_factor);

        assert(find(per.get_factors_affected().begin(),
                per.get_factors_affected().end(), to_factor)
                != per.get_factors_affected().end());

        assert(find(per.get_factors_affected().begin(),
                per.get_factors_affected().end(), from_factor)
                != per.get_factors_affected().end());

        size_t num_states = old_number_states[from_factor];
        for  (LeafStateHash id(0); num_states > 0; ++id){
            assert (id < leaf_state_id_map[from_factor].size());
            if (leaf_state_id_map[from_factor][id] == -1) {
                continue;
            }

            size_t leaf_state = leaf_state_id_map[from_factor][id];
            if (leaf_state >= old_prices[from_factor].size() ||
                    old_prices[from_factor][leaf_state] == INF){
                continue;
            }

            --num_states;
            auto [to_state, t_factor] = per.get_new_factor_state_by_old_factor_state(id, from_factor);
            assert(t_factor == to_factor);

            add_state(to_state, to_factor, old_prices[from_factor][leaf_state]);
        }

        if (!effective_prices.empty()){
            size_t num_eff_states = old_number_effective_states[from_factor];
            for  (LeafStateHash id(0); num_eff_states > 0; ++id){
                assert (id < leaf_state_id_map[from_factor].size());
                if (leaf_state_id_map[from_factor][id] == -1) {
                    continue;
                }

                size_t leaf_state = leaf_state_id_map[from_factor][id];
                if (leaf_state >= old_effective_prices[from_factor].size() ||
                        old_effective_prices[from_factor][leaf_state] == INF){
                    continue;
                }

                --num_eff_states;
                auto [to_state, t_factor] = per.get_new_factor_state_by_old_factor_state(id, from_factor);
                assert(t_factor == to_factor);

                add_effective_state(to_state, to_factor, old_effective_prices[from_factor][leaf_state]);
            }
        }
    }

    assert(accumulate(number_states.begin(), number_states.end(), 0) == accumulate(old_number_states.begin(), old_number_states.end(), 0));
    assert(accumulate(goal_cost.begin(), goal_cost.end(), 0) == accumulate(old_goal_cost.begin(), old_goal_cost.end(), 0));
    assert(accumulate(number_effective_states.begin(), number_effective_states.end(), 0) == accumulate(old_number_effective_states.begin(), old_number_effective_states.end(), 0));
}

void EffectivePrices::dump() const {
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        cout << "factor " << factor << " goal_cost = " << goal_cost[factor] << endl;
        for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
            if (has_leaf_state(id, factor)){
                LeafState state = g_state_registry->lookup_leaf_state(id, factor);
                if (g_leaves[factor].size() == 1){
                    cout << g_fact_names[g_leaves[factor][0]][state[g_leaves[factor][0]]] << "with price " << get_cost_of_state(id, factor) << endl;
                } else {
                    state.dump_pddl();
                    cout << "leaf state with price " << get_cost_of_state(id, factor) << endl;
                }
            }
        }
    }
}

unique_ptr<symmetries::SymmetryCPG> EffectivePrices::clone() const {
    return unique_ptr<symmetries::SymmetryCPG>(new EffectivePrices(*this));
}

symmetries::SymmetryCPG* EffectivePrices::get_init_sym_cpg() const {
    return &cpg_storage->cpgs[g_initial_state()];
}

uint64_t EffectivePrices::get_hash() const {
    utils::HashState hash_state;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        if (effective_prices.empty()){
            // this can happen when no prices are propagated,
            // i.e. add_effective_state was never called
            feed(hash_state, prices[factor]);
        } else {
            feed(hash_state, effective_prices[factor]);
        }
    }
    return hash_state.get_hash64();
}

size_t EffectivePrices::get_memory_footprint() const {
    size_t num_bytes = Prices::get_memory_footprint();
    if (num_bytes != 0 && !effective_prices.empty()){
        num_bytes += sizeof(vector<size_t>);
        num_bytes += g_leaves.size() * sizeof(size_t);

        num_bytes += sizeof(vector<vector<int> >);
        num_bytes += g_leaves.size() * sizeof(vector<int>);
        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
            num_bytes += effective_prices[factor].size() * sizeof(int);
        }
    }
    return num_bytes;
}

