#include "pricing_function.h"

#include "cpg_storage.h"
#include "../factoring.h"
#include "../globals.h"
#include "../operator.h"
#include "effective_prices.h"
#include "pruning_options.h"
#include "../state_registry.h"
#include "../symmetries/decoupled_permutation.h"

#include <limits>
#include <numeric>


using namespace std;


Storage<Prices>* Prices::cpg_storage;

void Prices::register_cpg_storage(Storage<Prices> *storage) {
    cpg_storage = storage;
}

Prices::Prices(const Prices &other) {
    number_states = other.number_states;
    prices = other.prices;
    goal_cost = other.goal_cost;
}

Prices& Prices::operator=(Prices &&other) {
    prices = move(other.prices);
    number_states = move(other.number_states);
    goal_cost = move(other.goal_cost);
    return *this;
}

void Prices::resize() {
    number_states = vector<size_t>(g_leaves.size(), 0);
    prices = vector<vector<int> >(g_leaves.size());
    goal_cost = vector<int>(g_leaves.size(), INF);
}

void Prices::reduce_cost_by(LeafFactorID factor, int cost) {
    assert(g_factoring->get_profile() != FORK);

    if (goal_cost[factor] != INF){
        // if there is a goal state, its cost must be >= cost!
        goal_cost[factor] -= cost;
        assert(goal_cost[factor] >= 0);
    }
    for (size_t id = 0; id < prices[factor].size(); ++id){
        if (prices[factor][id] != INF){
            prices[factor][id] -= cost;
            assert(prices[factor][id] >= 0);
        }
    }
}

bool Prices::add_state(LeafStateHash id, LeafFactorID factor, int cost) {
    assert(cost >= 0);
    if (leaf_state_id_map[factor][id] == -1){ // get new index to prevent facts vector from being sparse
        leaf_state_id_map[factor][id] = curr_leaf_state_max_id[factor];
        ++curr_leaf_state_max_id[factor];

        // need to check for each new leaf state if it's a goal state
        store_is_leaf_goal_state(g_state_registry->lookup_leaf_state(id, factor));
    }
    size_t leaf_id = leaf_state_id_map[factor][id];

    if (leaf_id >= prices[factor].size()){
        prices[factor].resize(leaf_id + 1, INF);
    }
    if (prices[factor][leaf_id] == INF){
        prices[factor][leaf_id] = cost;
        ++number_states[factor];
        if (!g_goals_per_factor[factor].empty() && is_leaf_goal_state(id, factor)){
            if (goal_cost[factor] == INF || goal_cost[factor] > cost){
                goal_cost[factor] = cost;
            }
        }
        return true;
    } else if (prices[factor][leaf_id] > cost){
        prices[factor][leaf_id] = cost;
        if (!g_goals_per_factor[factor].empty() && is_leaf_goal_state(id, factor)){
            if (goal_cost[factor] > cost){
                goal_cost[factor] = cost;
            }
        }
        return true;
    }
    return false;
}

unique_ptr<CompliantPathGraph> Prices::get_successor_via_center_action(const GlobalState &new_center_state,
                                                                       const Operator &op) const {
    // TODO what about having a static pointer in the class to prevent reallocation?
    unique_ptr<Prices> tmp_price;
    if (g_factoring->get_profile() != FORK){
        tmp_price.reset(new Prices());
        tmp_price->resize();
        tmp_price->apply_center_op_to_leaves(*this, op);
    } else {
        tmp_price.reset(new Prices(*this));
    }
    tmp_price->update(new_center_state);
    return tmp_price;
}

void Prices::update(const GlobalState &base_state) {

#ifdef DEBUG_SEARCH
    cout << "+++++++++++++++ STARTING UPDATE" << endl;
#endif

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){

        // skip fork leaves that don't have a goal!
        if (g_factoring->is_fork_leaf(factor) && g_goals_per_factor[factor].empty()){
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

            size_t num_states_handled = 0;

            for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){

                if (has_leaf_state(id, factor)){

                    int cost = get_cost_of_state(id, factor);
                    if (best_prices[id] <= cost){
                        continue;
                    }

                    best_prices[id] = cost;

                    assert(id < leaf_state_successors[factor].size());

                    for (size_t o = 0; o < leaf_state_successors[factor][id].size(); ++o){
                        const Operator &op = g_operators[leaf_state_successors[factor][id][o].first];
                        // TODO what about caching applicability per update?
                        if (g_factoring->is_ifork_leaf(factor) || op.is_center_applicable(base_state)){
                            LeafStateHash successor = leaf_state_successors[factor][id][o].second;
                            change |= add_state(successor, factor,
                                                cost + get_adjusted_action_cost(op, cost_type));
                        }
                    }

                    if (++num_states_handled == get_number_states(factor)){
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
}

DOMINANCE Prices::check_dominance(const GlobalState &other, int g_advantage, DOMINANCE needed) {

    if (!pruning->include_g_in_dominance()){
        g_advantage = 0;
    }

    const Prices *other_cpg = &cpg_storage->cpgs[other];

    bool dominated = true;
    bool dominates = true;

    int goal_advantage = 0;
    int goal_disadvantage = 0;

    // check number of reachable leaf states and goal cost for early termination
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        if (other_cpg->get_number_states(factor) > get_number_states(factor)){
            dominates = false;
        } else if (other_cpg->get_number_states(factor) < get_number_states(factor)){
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
        size_t number_new_states = get_number_states(factor);
        size_t number_old_states = other_cpg->get_number_states(factor);
        LeafStateHash id(0);
        int max_advantage = 0;
        int max_disadvantage = 0;
        int min_advantage = numeric_limits<int>::max();
        int min_disadvantage = numeric_limits<int>::max();
        while (number_new_states + number_old_states > 0){
            assert(id < g_state_registry->size(factor));
            if (has_leaf_state(id, factor)){
                --number_new_states;
                if (other_cpg->has_leaf_state(id, factor)){
                    --number_old_states;
                    int old_cost = other_cpg->get_cost_of_state(id, factor);
                    int new_cost = get_cost_of_state(id, factor);
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
            } else if (other_cpg->has_leaf_state(id, factor)){
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
        if (pruning->use_exact_duplicate_checking() && (!dominated || !dominates)){
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

void Prices::apply_center_op_to_leaves(const Prices &old_cpg, const Operator &op) {
    // TODO store some tree that captures which leaf states satisfy a certain leaf condition
    // then run only over the states that satisfy the leaf precondition of op.
    // this should be a lot faster than running over all leaf states and check if the condition
    // is achieved!

#ifdef DEBUG_SEARCH
    cout << "start to apply center op " << op.get_name() << " to leaves" << endl;
#endif

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){

        bool has_pre_on_factor = op.has_precondition_on(factor);
        size_t num_effects = op.get_effects(factor).size();

        if (!has_pre_on_factor && num_effects == 0){
            // op does not affect leaf at all => copy everything

            number_states[factor] = old_cpg.number_states[factor];
            prices[factor] = old_cpg.prices[factor];
            goal_cost[factor] = old_cpg.goal_cost[factor];
            continue;
        }

        // center op completely overwrites this leaf factor
        bool leaf_overwritten = num_effects == g_leaves[factor].size();

        int min_price = numeric_limits<int>::max();

        size_t number_states = old_cpg.get_number_states(factor);
        LeafStateHash id(0);
        while (number_states > 0) {
            if (old_cpg.has_leaf_state(id, factor)){
                --number_states;

                if (!has_pre_on_factor || op.is_applicable(id, factor)){ // TODO there should be a more efficient way to check this! yep, cf above TODO

                    int cost = old_cpg.get_cost_of_state(id, factor);

                    min_price = min(min_price, cost);

                    if (!leaf_overwritten){
                        if (num_effects == 0){
                            add_state(id, factor, cost);
                        } else {
                            const LeafState state = g_state_registry->lookup_leaf_state(id, factor);
                            add_state(g_state_registry->get_successor_leaf_state_hash(state, op), factor, cost);
                        }
                    }
                }
            }
            ++id;
        }

        if (leaf_overwritten){
            const LeafState pred = g_state_registry->lookup_leaf_state(LeafStateHash(0), factor);
            add_state(g_state_registry->get_successor_leaf_state_hash(pred, op), factor, min_price);
        }

        if (pruning->include_min_price_in_g() && min_price > 0){
            g_inc_g_by += min_price;
            reduce_cost_by(factor, min_price);
        }

        assert(min_price < numeric_limits<int>::max() && min_price >= 0);
#ifdef DEBUG_SEARCH
        cout << "min_price of factor " << factor << " = " << min_price << endl;
#endif
    }
}

bool Prices::has_leaf_state(LeafStateHash id, LeafFactorID factor) const {
    // We need the first part because M&S generates leaf states which are
    // not reachable (in the precompute_leaf_states variant).
    if (id >= leaf_state_id_map[factor].size() || leaf_state_id_map[factor][id] == -1){
        return false;
    }
    size_t leaf_id = leaf_state_id_map[factor][id];
    return leaf_id < prices[factor].size() && prices[factor][leaf_id] != INF;
}

int Prices::get_cost_of_state(LeafStateHash id, LeafFactorID factor) const {
    assert((size_t) leaf_state_id_map[factor][id] < prices[factor].size());
    return prices[factor][leaf_state_id_map[factor][id]];
}

size_t Prices::get_number_states(LeafFactorID factor) const {
    return number_states[factor];
}

int Prices::get_goal_cost(LeafFactorID factor) const {
    return goal_cost[factor];
}

bool Prices::goal_reachable(LeafFactorID factor) const {
    return goal_cost[factor] != INF;
}

void Prices::populate_reached_leaf_facts(function<void(int, int)> f) const {
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        size_t num_leaf_states = get_number_states(factor);
        for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
            if (has_leaf_state(id, factor)){
                LeafState l_state = g_state_registry->lookup_leaf_state(id, factor);
                for (int var : g_leaves[factor]){
                    f(var, l_state[var]);
                }
                if (--num_leaf_states == 0){
                    break;
                }
            }
        }
    }
}

void Prices::populate_cost_of_leaf_facts(function<void(int, int, int)> f) const {
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        size_t num_leaf_states = get_number_states(factor);
        for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
            if (has_leaf_state(id, factor)){
                LeafState l_state = g_state_registry->lookup_leaf_state(id, factor);
                int cost = get_cost_of_state(id, factor);
                for (int var : g_leaves[factor]){
                    f(var, l_state[var], cost);
                }
                if (--num_leaf_states == 0){
                    break;
                }
            }
        }
    }
}

void Prices::store_new_cpg(const GlobalState &state) {
    cpg_storage->store_cpg(state, *this);
}

unique_ptr<CompliantPathGraph> Prices::get_init_state_cpg() {
    if (pruning->do_advanced_pruning()){
        return EffectivePrices::get_init_state_cpg();
    } else {
        unique_ptr<Prices> init_price(new Prices());
        init_price->resize();

        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
            init_price->add_state(LeafStateHash(0), factor, 0);
        }
        init_price->update(g_state_registry->get_center_state(g_initial_state_data));

        return init_price;
    }
}

void Prices::dump() const {
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        cout << "factor " << factor << " goal_cost = " << goal_cost[factor] << endl;
        for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
            if (has_leaf_state(id, factor)){
                LeafState state = g_state_registry->lookup_leaf_state(id, factor);
                if (g_leaves[factor].size() == 1){
                    cout << g_fact_names[g_leaves[factor][0]][state[g_leaves[factor][0]]] << " with price " << get_cost_of_state(id, factor);
                } else {
                    state.dump_pddl();
                    cout << " with price " << get_cost_of_state(id, factor);
                }
                if (!g_goals_per_factor[factor].empty()){
                    cout << (is_leaf_goal_state(id, factor) ? " is goal" : "") << endl;
                } else {
                    cout << endl;
                }
            }
        }
    }
}

void Prices::apply_symmetry_permutation(const symmetries::LeavesPermutation &per) {
    // Copy prices and reinitialize affected factors
    vector<vector<int> > old_prices(g_leaves.size());
    vector<size_t> old_number_states(g_leaves.size());

#ifndef NDEBUG
    vector<int> old_goal_cost(goal_cost);
    old_number_states = number_states;
#endif

    for (LeafFactorID factor : per.get_factors_affected()) {
        old_number_states[factor] = number_states[factor];
        old_prices[factor] = prices[factor];

        number_states[factor] = 0;
        prices[factor] = vector<int>();
        goal_cost[factor] = INF;
    }

    for(LeafFactorID to_factor : per.get_factors_affected()) {
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
    }

    assert(accumulate(number_states.begin(), number_states.end(), 0) == accumulate(old_number_states.begin(), old_number_states.end(), 0));
    assert(accumulate(goal_cost.begin(), goal_cost.end(), 0) == accumulate(old_goal_cost.begin(), old_goal_cost.end(), 0));
}

symmetries::SymmetryCPG* Prices::get_init_sym_cpg() const {
    return &cpg_storage->cpgs[g_initial_state()];
}

size_t Prices::get_memory_footprint() const {
    size_t num_bytes = 0;
    if (!prices.empty()){
        // we need the check because in decoupled orbit search
        // there may be "empty" decoupled states
        num_bytes += sizeof(vector<int>);
        num_bytes += g_leaves.size() * sizeof(int);

        num_bytes += sizeof(vector<size_t>);
        num_bytes += g_leaves.size() * sizeof(size_t);

        num_bytes += sizeof(vector<vector<int> >);
        num_bytes += g_leaves.size() * sizeof(vector<int>);
        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
            num_bytes += prices[factor].size() * sizeof(int);
        }
    }
    return num_bytes;
}

unique_ptr<symmetries::SymmetryCPG> Prices::clone() const {
    return unique_ptr<symmetries::SymmetryCPG>(new Prices(*this));
}

uint64_t Prices::get_hash() const {
    utils::HashState hash_state;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        feed(hash_state, prices[factor]);
    }
    return hash_state.get_hash64();
}

bool Prices::is_hypercube_covered(const GlobalState &, int ) const {
    // TODO implement this
    cout << "Hypercube pruning not yet implemented for optimal planning." << endl;
    exit_with(utils::ExitCode::SEARCH_UNSUPPORTED);
}
