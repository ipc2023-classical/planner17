#include "frontier_prices.h"

#include "cpg_storage.h"
#include "../factoring.h"
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


Storage<FrontierPrices>* FrontierPrices::cpg_storage;

void FrontierPrices::register_cpg_storage(Storage<FrontierPrices> *storage) {
    cpg_storage = storage;
}

FrontierPrices::FrontierPrices(const FrontierPrices &other) : EffectivePrices(other) {
    assert(g_factoring->get_profile() == FACTORING_PROFILE::FORK);
    // TODO why dont we copy frontier/effective_prices here?
    // trying it out results in incomplete algorithm, just why??
}

FrontierPrices& FrontierPrices::operator=(FrontierPrices &&other) {
    prices = move(other.prices);
    number_states = move(other.number_states);
    goal_cost = move(other.goal_cost);
    effective_prices = move(other.effective_prices);
    number_effective_states = move(other.number_effective_states);
    frontier = std::move(other.frontier);
    return *this;
}

void FrontierPrices::resize() {
    number_states = vector<size_t>(g_leaves.size(), 0);
    prices = vector<vector<int> >(g_leaves.size());
    goal_cost = vector<int>(g_leaves.size(), INF);
    // TODO why dont we resize effective_prices + number/frontier..? see also above comment
}

unique_ptr<CompliantPathGraph> FrontierPrices::get_successor_via_center_action(const GlobalState &new_center_state,
                                                                               const Operator&) const {
    unique_ptr<FrontierPrices> tmp_p_price(new FrontierPrices(*this));
    if (frontier.empty()){
        // should only happen for initial state
        // TODO not sure if this is still true
        tmp_p_price->compute_cost_frontier();
    } else {
        tmp_p_price->frontier = vector<boost::dynamic_bitset<> >(g_leaves.size(), boost::dynamic_bitset<>());
        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
            if (frontier[factor].size() == g_state_registry->size(factor)){
                tmp_p_price->frontier[factor] = frontier[factor];
            } else {
                tmp_p_price->compute_cost_frontier(factor);
            }
        }
    }
    tmp_p_price->update(new_center_state);
    return tmp_p_price;
}

void FrontierPrices::update(const GlobalState &new_center_state) {

#ifdef DEBUG_SEARCH
    cout << "+++++++++++++++ STARTING UPDATE" << endl;
#endif

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){

        if (g_goals_per_factor[factor].empty()){
            // skip fork leaves that don't have a goal!
            continue;
        }

#ifdef DEBUG_SEARCH
        cout << "       starting UPDATE for leaf factor " << factor << endl;
        const vector<PricesInfo*> &achieved_facts = new_tag.get_facts(factor);
        for (int i = 0; i < achieved_facts.size(); i++){
            if (achieved_facts[i] == 0){
                continue;
            }
            lookup_leaf_state(LeafStateID(i, factor)).dump_pddl();
        }
        cout << "       " << new_tag.get_number_states(factor) << " fact(s) initially true in leaf factor " << factor << endl;
#endif

        vector<int> best_prices(g_state_registry->size(factor), numeric_limits<int>::max());

        bool change = true;

        while (change) {

            change = false;

            size_t num_leaf_states = 0;

            for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){

                if (has_leaf_state(id, factor)){

                    ++num_leaf_states;

                    if (!frontier[factor][id]){
                        // TODO should probably only do this if simulation/propagation is disabled.. Why?
                        if (num_leaf_states == get_number_states(factor)){
                            break;
                        }
                        continue;
                    }

                    int cost = get_cost_of_state(id, factor);

                    best_prices[id] = cost;

                    assert(id < leaf_state_successors[factor].size());

                    bool all_applicable = !pruning->propagate_goal_prices();
                    for (size_t o = 0; o < leaf_state_successors[factor][id].size(); ++o){
                        const Operator &op = g_operators[leaf_state_successors[factor][id][o].first];
                        if (op.is_center_applicable(new_center_state)){
                            LeafStateHash successor = leaf_state_successors[factor][id][o].second;
                            bool added = add_state(successor, factor,
                                                   cost + get_adjusted_action_cost(op, cost_type));
                            change |= added;
                            if (added){
                                frontier[factor][successor] = true;
                            }
                        } else if (!pruning->propagate_goal_prices()) {
                            all_applicable = false;
                            int new_cost = cost + get_adjusted_action_cost(op, cost_type);
                            LeafStateHash successor = leaf_state_successors[factor][id][o].second;
                            if (!has_leaf_state(successor, factor) || get_cost_of_state(successor, factor) > new_cost){
                                frontier[factor][id] = true;
                            }
                        }
                    }
                    if (all_applicable){
                        frontier[factor][id] = false;
                    }

                    if (num_leaf_states == get_number_states(factor)){
                        break;
                    }

                    // TODO probably reintroduce this for optimal search again
                    // keep in mind to change the pruning methods accordingly! + change the corresponding expression in PathPrices
                    // when introducing this, also have a shortcut at the beginning of the outmost for loop
//                 if (g_factoring->get_search_type() == SAT && !g_factoring->has_successors(factor) && get_goal_cost(factor) >= 0){
//                     // in satisficing search => stop once a goal is reachable in fork-leaves
//                     change = false;
//                     break;
//                 }
                }
            }
        }

#ifdef DEBUG_SEARCH
    cout << "   UPDATE for leaf factor " << factor << " finished" << endl;
#endif

    }

#ifdef DEBUG_SEARCH
    cout << "+++++++++++++++ UPDATE FINISHED" << endl;
#endif

    if(pruning->propagate_simulation_prices()){
        propagate_dominance_prices();
    }

    if(pruning->propagate_goal_prices()) {
        goal_price_propagation();
    }
}

DOMINANCE FrontierPrices::check_dominance(const GlobalState &other, int, DOMINANCE needed) {
    // TODO implement g-values
    FrontierPrices *other_cpg = &cpg_storage->cpgs[other];

    compute_cost_frontier();
    other_cpg->compute_cost_frontier();

    bool dominated = needed != DOMINANCE::DOMINATES;
    bool dominates = needed != DOMINANCE::DOMINATED;

    // TODO also add some counting here? i.e. if one frontier is larger than the number of reachable states..

    // compare prices
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        if (g_goals_per_factor[factor].empty()){
            continue;
        }
        if (get_goal_cost(factor) != CompliantPathGraph::INF || other_cpg->get_goal_cost(factor) != CompliantPathGraph::INF){
            if (get_goal_cost(factor) == CompliantPathGraph::INF ||
                (other_cpg->get_goal_cost(factor) != CompliantPathGraph::INF &&
                    get_goal_cost(factor) > other_cpg->get_goal_cost(factor))) {
                dominates = false;
            } else if (other_cpg->get_goal_cost(factor) == CompliantPathGraph::INF ||
                        (get_goal_cost(factor) != CompliantPathGraph::INF &&
                        other_cpg->get_goal_cost(factor) > get_goal_cost (factor))) {
                dominated = false;
            }
#ifndef NDEBUG
            else {
                assert(get_goal_cost(factor) == other_cpg->get_goal_cost(factor));
            }
#endif
        }

        for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
            if (!ExplicitStateCPG::is_leaf_goal_state(id, factor)){
                if (dominates && other_cpg->has_leaf_state(id, factor) && other_cpg->frontier[factor][id]){
                    if (has_effective_leaf_state(id, factor)){
                        int old_cost = other_cpg->get_cost_of_state(id, factor);
                        int new_cost = get_effective_cost_of_state(id, factor);
                        assert(old_cost != CompliantPathGraph::INF);
                        assert(new_cost != CompliantPathGraph::INF);

                        if (old_cost < new_cost){
                            dominates = false;
                        }
                    } else {
                        dominates = false;
                    }
                }
                if (dominated && has_leaf_state(id, factor) && frontier[factor][id]){
                    if (other_cpg->has_effective_leaf_state(id, factor)){
                        int old_cost = other_cpg->get_effective_cost_of_state(id, factor);
                        int new_cost = get_cost_of_state(id, factor);
                        assert(old_cost != CompliantPathGraph::INF);
                        assert(new_cost != CompliantPathGraph::INF);

                        if (old_cost > new_cost){
                            dominated = false;
                        }
                    } else {
                        dominated = false;
                    }
                }
            }

            if (!dominated && !dominates){
                return DOMINANCE::NONE;
            }
        }
    }
    if (dominated && dominates){
#ifdef DEBUG_PRUNING
        cout << "old tag is equal to new one" << endl;
#endif
        return DOMINANCE::EQUAL;
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

void FrontierPrices::apply_symmetry_permutation(const symmetries::LeavesPermutation &per) {
    EffectivePrices::apply_symmetry_permutation(per);
    frontier.clear();
    compute_cost_frontier();
}

void FrontierPrices::store_new_cpg(const GlobalState &state) {
    cpg_storage->store_cpg(state, *this);
}

unique_ptr<CompliantPathGraph> FrontierPrices::get_init_state_cpg() {
    unique_ptr<FrontierPrices> init_frontierprices(new FrontierPrices());
    init_frontierprices->resize();

    init_frontierprices->frontier.resize(g_leaves.size());

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        init_frontierprices->add_state(LeafStateHash(0), factor, 0);
        init_frontierprices->frontier[factor] = boost::dynamic_bitset<>(g_state_registry->size(factor), false);
        init_frontierprices->frontier[factor][0] = true;
    }
    init_frontierprices->update(g_state_registry->get_center_state(g_initial_state_data));

    return init_frontierprices;
}

void FrontierPrices::goal_price_propagation() {
    assert(g_factoring->get_profile() == FORK);

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor) {

        vector<bool> closed(g_state_registry->size(factor), false);

        boost::dynamic_bitset<> sim_frontier;
        if (pruning->propagate_simulation_prices()){
            sim_frontier = frontier[factor];
        }
        frontier[factor].reset();

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

                if (has_leaf_state(t, factor) && get_cost_of_state(t, factor) < propagated_val) {
                    if (!pruning->propagate_simulation_prices() || sim_frontier[t]){
                        frontier[factor][t] = true;
                    }
                }
            }
        }
    }
}

void FrontierPrices::propagate_dominance_prices() {
    const vector<vector<vector<LeafStateHash> > > &simulated_states = SimulationRelation::get_simulation_relation();

    for (LeafFactorID factor(0); factor < simulated_states.size(); ++factor){
        for (LeafStateHash s(0); s < simulated_states[factor].size(); ++s) {
            if(has_effective_leaf_state(s, factor)){
                int cost_s = get_effective_cost_of_state(s, factor);
                for (LeafStateHash t : simulated_states[factor][s]) {
                    if (!has_effective_leaf_state(t, factor) || get_effective_cost_of_state(t, factor) > cost_s) {
                        if (add_effective_state(t, factor, cost_s)){
                            frontier[factor][t] = false;
                        }
                    }
                }
            }
        }
    }
}

void FrontierPrices::compute_cost_frontier() {
    if (frontier.empty()){
        // frontier is only stored for states for which the dominance was already checked at some point
        //assert(!frontier.empty() || g_state_registry->state_duplicate_counter[center.get_id().hash()] == 0);

        frontier.resize(g_leaves.size());
        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
            compute_cost_frontier(factor);
        }
#ifdef DEBUG_PRUNING
        cout << "not precomputed" << endl;
#endif
    } else {
        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
            if (frontier[factor].size() == 0){
                compute_cost_frontier(factor);
            }
        }
#ifdef DEBUG_PRUNING
        cout << "precomputed" << endl;
#endif
    }
}

void FrontierPrices::compute_cost_frontier(LeafFactorID factor) {
    frontier[factor].resize(g_state_registry->size(factor), false);

    size_t num_states = get_number_states(factor);
    LeafStateHash id(0);
    while (num_states > 0){
        if (!has_leaf_state(id, factor)){
            ++id;
            continue;
        }
        --num_states;
        for (size_t o = 0; o < leaf_state_successors[factor][id].size(); ++o){
            LeafStateHash successor = leaf_state_successors[factor][id][o].second;
            if (!has_effective_leaf_state(successor, factor)){
                frontier[factor][id] = true;
                break;
            }
            int action_cost = get_adjusted_action_cost(g_operators[leaf_state_successors[factor][id][o].first], cost_type);
            int new_cost = get_effective_cost_of_state(id, factor) + action_cost;
            if (get_effective_cost_of_state(successor, factor) > new_cost){
                frontier[factor][id] = true;
                break;
            }
        }
        ++id;
    }
}

void FrontierPrices::dump() const {
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        cout << "factor " << factor << " goal_cost = " << goal_cost[factor] << endl;
        for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
            if (has_leaf_state(id, factor)){
                LeafState state = g_state_registry->lookup_leaf_state(id, factor);
                bool is_frontier = frontier[factor][id];
                if (g_leaves[factor].size() == 1){
                    cout << g_fact_names[g_leaves[factor][0]][state[g_leaves[factor][0]]] << (is_frontier ? " frontier state " : " ") << "with price " << get_cost_of_state(id, factor) << endl;
                } else {
                    state.dump_pddl();
                    cout << (is_frontier ? "frontier state " : "") << "with price " << get_cost_of_state(id, factor) << endl;
                }
            }
        }
    }
}

size_t FrontierPrices::get_memory_footprint() const {
    size_t num_bytes = EffectivePrices::get_memory_footprint();
    if (num_bytes != 0 && !frontier.empty()){
        num_bytes += sizeof(vector<boost::dynamic_bitset<> >);

        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
            num_bytes += frontier[factor].num_blocks() * sizeof(boost::dynamic_bitset<>::block_type);
        }
    }
    return num_bytes;
}

symmetries::SymmetryCPG* FrontierPrices::get_init_sym_cpg() const {
    return &cpg_storage->cpgs[g_initial_state()];
}

unique_ptr<symmetries::SymmetryCPG> FrontierPrices::clone() const {
    return unique_ptr<symmetries::SymmetryCPG>(new FrontierPrices(*this));
}

uint64_t FrontierPrices::get_hash() const {
    utils::HashState hash_state;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        if (effective_prices.empty()){
            // this can probably happen when no prices are propagated,
            // i.e. add_effective_state was never called
            feed(hash_state, prices[factor]);
        } else {
            feed(hash_state, effective_prices[factor]);
        }
        // prices uniquely determine frontier, so no need to hash frontier
    }
    return hash_state.get_hash64();
}

