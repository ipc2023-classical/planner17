#include "reachability_function.h"

#include "cpg_storage.h"
#include "../factoring.h"
#include "../operator.h"
#include "pruning_options.h"
#include "pruning_reachable.h"
#include "../state_registry.h"
#include "../symmetries/decoupled_permutation.h"
#include "../task_utils/successor_generator.h"

#include <cmath>
#include <limits>


using namespace std;


Storage<Reachable>* Reachable::cpg_storage;

void Reachable::register_cpg_storage(Storage<Reachable> *storage) {
    cpg_storage = storage;
}

Reachable::Reachable(const Reachable &other) {
    reachable = other.reachable;
    goal_reached = other.goal_reached;
}

Reachable& Reachable::operator=(Reachable &&other) {
    reachable = std::move(other.reachable);
    goal_reached = std::move(other.goal_reached);
    return *this;
}

void Reachable::resize() {
    reachable = vector<boost::dynamic_bitset<> >(g_leaves.size());
    goal_reached.resize(g_leaves.size(), false);
}

bool Reachable::add_state(LeafStateHash id, LeafFactorID factor) {
    if (is_leaf_state_space_scc[factor]){
        return false;
    }
    if (leaf_state_id_map[factor][id] == -1){ // get new index to prevent facts vector from being sparse
        leaf_state_id_map[factor][id] = curr_leaf_state_max_id[factor];
        ++curr_leaf_state_max_id[factor];

        // need to check for each new leaf state if it's a goal state
        store_is_leaf_goal_state(g_state_registry->lookup_leaf_state(id, factor));
    }
    size_t leaf_id = leaf_state_id_map[factor][id];

    if (leaf_id >= reachable[factor].size()){
        reachable[factor].resize(leaf_id + 1, false);
    }
    if (!reachable[factor][leaf_id]){
        reachable[factor][leaf_id] = true;
        if (!g_goals_per_factor[factor].empty() && is_leaf_goal_state(id, factor)){
            goal_reached[factor] = true;
        }
        return true;
    }
    return false;
}

unique_ptr<CompliantPathGraph> Reachable::get_successor_via_center_action(const GlobalState &new_center_state,
                                                                          const Operator &op) const {
    unique_ptr<Reachable> tmp_reach;
    if (g_factoring->get_profile() != FORK){
        tmp_reach.reset(new Reachable());
        tmp_reach->resize();
        tmp_reach->apply_center_op_to_leaves(*this, op);
    } else {
        tmp_reach.reset(new Reachable(*this));
    }
    tmp_reach->update(new_center_state);
    return tmp_reach;
}

void Reachable::update(const GlobalState &base_state) {

#ifdef DEBUG_SEARCH
    cout << "+++++++++++++++ STARTING UPDATE" << endl;
#endif

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){

        if (is_leaf_state_space_scc[factor]){
            continue;
        }

        if (g_factoring->is_fork_leaf(factor)){
            // skip fork leaves that don't have a goal or whose goal is already achieved
            if (g_goals_per_factor[factor].empty() ||
                (g_factoring->get_search_type() == DECOUPLED_SEARCH_TYPE::SAT && goal_reached[factor])){
                continue;
            }
        }

#ifdef DEBUG_SEARCH
        cout << "       starting UPDATE for leaf factor " << factor << endl;
        const vector<PriceTagInfo*> &achieved_facts = new_tag.get_facts(factor);
        for (int i = 0; i < achieved_facts.size(); i++){
            if (achieved_facts[i] == 0){
                continue;
            }
            lookup_leaf_state(LeafStateID(i, factor)).dump_pddl();
        }
        cout << "       " << new_tag.get_number_facts(factor) << " fact(s) initially true in leaf factor " << factor << endl;
#endif

        boost::dynamic_bitset<> handled(g_state_registry->size(factor), false);

        size_t curr_number_states = get_number_states(factor);

        bool change = true;

        while (change) {

            change = false;

            size_t num_states = 0;
            LeafStateHash id(0);
            while (num_states < curr_number_states) {

                if (id >= g_state_registry->size(factor)){
                    change = true;
                    break;
                }

                if (!has_leaf_state(id, factor)){
                    ++id;
                    continue;
                }

                ++num_states;

                if (handled[id]){
                    ++id;
                    continue;
                }

                handled[id] = true;

                assert(id < leaf_state_successors[factor].size() || !precompute_leaf_state_spaces[factor]);

                size_t added = 0;

                if (precompute_leaf_state_spaces[factor] ||
                        (id < leaf_state_successors[factor].size() && !leaf_state_successors[factor][id].empty())){
                    if (!precompute_leaf_state_spaces[factor] && leaf_state_successors[factor][id][0].first == OperatorID::no_operator){
                        // is "dead-end" leaf state
                        ++id;
                        continue;
                    }
                    for (size_t o = 0; o < leaf_state_successors[factor][id].size(); ++o){
                        if (g_factoring->is_ifork_leaf(factor) ||
                                g_operators[leaf_state_successors[factor][id][o].first].is_center_applicable(base_state)){
                            if(add_state(leaf_state_successors[factor][id][o].second, factor)) {
                                ++added;
                            }
                        }
                    }
                } else {

                    const LeafState predecessor = g_state_registry->lookup_leaf_state(id, factor);

                    vector<OperatorID> applicable_ops;

                    if (!g_factoring->is_fork_leaf(factor)){       // is non-fork leaf
                        if (id >= center_successors[factor].size() || center_successors[factor][id].empty()){
                            // store center ops whose preconditions are satisfied by predecessor

                            vector<OperatorID> center_ops;
                            center_action_successor_generator->generate_applicable_ops_ignore_outside_pre(predecessor, center_ops);

                            if (id >= center_successors[factor].size()){
                                center_successors[factor].resize(id+1);
                            }
                            center_successors[factor][id].reserve(center_ops.size());
                            for (OperatorID op_id : center_ops){
                                if (g_operators[op_id].has_precondition_on(factor)){
                                    center_successors[factor][id].push_back(op_id);
                                }
                            }
                        }
                    }

                    leaf_successor_generators[factor]->generate_applicable_ops(predecessor, applicable_ops);

                    bool fits_store = id < MAX_LEAF_SPACE_STORE;
                    if (fits_store && leaf_state_successors[factor].size() <= id){
                        leaf_state_successors[factor].resize(id + 1);
                    }

                    // apply all applicable_ops to predecessor and store the outcome
                    for (OperatorID op_id : applicable_ops){
                        const Operator &op = g_operators[op_id];

                        if (op.has_effect_on(factor) && (fits_store || op.is_center_applicable(base_state))){

                            LeafStateHash lid = g_state_registry->get_successor_leaf_state_hash(predecessor, op);

                            if (lid >= handled.size()){
                                handled.resize(lid + 1, false);
                            }

                            if (lid >= leaf_state_id_map[factor].size()){
                                leaf_state_id_map[factor].resize(lid + 1, -1);
                            }

                            if(!fits_store || op.is_center_applicable(base_state)){
                                if (add_state(lid, factor)){
                                    ++added;
                                }
                            }

                            if (fits_store){
                                leaf_state_successors[factor][id].push_back(make_pair(op_id, lid));
                            }
                        }
                    }
                    if (fits_store && leaf_state_successors[factor][id].empty()){
                        // to mark "dead end" leaf states
                        leaf_state_successors[factor][id].push_back(make_pair(OperatorID::no_operator, LeafStateHash(0))); // HACK
                    }
                }

                if (added > 0){
                    curr_number_states += added;
                    change = true;
                }

                if (g_factoring->get_search_type() == SAT && g_factoring->is_fork_leaf(factor) && goal_reached[factor]){
                    // in satisficing search => stop once a goal is reachable in fork-leaves
                    change = false;
                    break;
                }
                ++id;
            }
        }

#ifdef DEBUG_SEARCH
    cout << "   UPDATE for leaf factor " << factor << " finished" << endl;
#endif
        assert((handled.count() == get_number_states(factor)) || goal_reached[factor]);
    }

#ifdef DEBUG_SEARCH
    cout << "+++++++++++++++ UPDATE FINISHED" << endl;
#endif
}

DOMINANCE Reachable::check_dominance(const GlobalState &other, int, DOMINANCE needed) {

    const Reachable *other_cpg = &cpg_storage->cpgs[other];

    bool sizes_equal = true;
    bool new_is_larger = false;
    bool new_is_smaller = false;
    bool all_leaves_max_size = g_factoring->get_profile() != FORK;
    bool all_goals_reached = g_factoring->get_profile() == FORK
            && g_factoring->get_search_type() == DECOUPLED_SEARCH_TYPE::SAT;

    // TODO fork-leaves that have a goal actually *can* be compared, i.e. if they are identical
    // its not so easy, because the second loop might detect one as dominating, although this
    // is only due to stopping the update

    vector<bool> need_to_check(g_leaves.size(), false);

    // check number of reachable leaf states
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        if (is_leaf_state_space_scc[factor]){
            continue;
        }
        if (g_factoring->is_fork_leaf(factor)
                && g_factoring->get_search_type() == DECOUPLED_SEARCH_TYPE::SAT) {
            // in satisficing search, updating CPG stops if a goal
            // is reached in fork leaves. thus cannot compare number of states
            // in this case
            if (goal_reachable(factor)){
                if (other_cpg->goal_reachable(factor)){
                    // don't care about size/reachability
                } else {
                    all_goals_reached = false;
                    new_is_larger = true;
                    new_is_smaller = true;
                    sizes_equal = false;
                }
                continue;
            } else if (other_cpg->goal_reachable(factor)){
                all_goals_reached = false;
                new_is_smaller = true;
                new_is_larger = true;
                sizes_equal = false;
                continue;
            }
            all_goals_reached = false;
        }
        assert(reachable[factor][reachable[factor].size() - 1]);
        assert(other_cpg->reachable[factor][other_cpg->reachable[factor].size() - 1]);
        if (reachable[factor].size() > other_cpg->reachable[factor].size()){
            new_is_larger = true;
            sizes_equal = false;
            need_to_check[factor] = true;
        } else if (reachable[factor].size() < other_cpg->reachable[factor].size()){
            new_is_smaller = true;
            sizes_equal = false;
            need_to_check[factor] = true;
        } else {
            if (reachable[factor].is_proper_subset_of(other_cpg->reachable[factor])){
                new_is_smaller = true;
                sizes_equal = false;
            } else if (other_cpg->reachable[factor].is_proper_subset_of(reachable[factor])){
                new_is_larger = true;
                sizes_equal = false;
            } else if (other_cpg->reachable[factor] != reachable[factor]){
                // no dominance in either direction
                return DOMINANCE::NONE;
            }
        }
       if (get_number_states(factor) < g_state_registry->size(factor) || !ExplicitStateCPG::precompute_leaf_state_space(factor)){
           all_leaves_max_size = false;
       }
    }

    if (new_is_smaller && new_is_larger){
        return DOMINANCE::NONE;
    } else if (new_is_smaller){
        if (needed == DOMINANCE::DOMINATES || pruning->use_exact_duplicate_checking()){
            return DOMINANCE::NONE;
        }
    } else if (new_is_larger){
        if (needed == DOMINANCE::DOMINATED || pruning->use_exact_duplicate_checking()){
            return DOMINANCE::NONE;
        }
    }

    if (all_goals_reached){
        // this is only relevant in satisficing fork-decoupled search when the center
        // has not reached its goal yet, but all leaves do.
        return DOMINANCE::EQUAL;
    }

    if (sizes_equal && all_leaves_max_size){
        return DOMINANCE::EQUAL;
    }

    bool dominated = (new_is_smaller && !new_is_larger) || sizes_equal;
    bool dominates = (new_is_larger && !new_is_smaller) || sizes_equal;

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        if (!need_to_check[factor]){
            continue;
        }
        assert(reachable[factor].size() != other_cpg->reachable[factor].size());
        if (reachable[factor].size() > other_cpg->reachable[factor].size()){
            assert(!dominated); // implied by reachable[factor].size() > other_cpg->reachable[factor].size()
            boost::dynamic_bitset<>::size_type index = other_cpg->reachable[factor].find_first();
            while (index != boost::dynamic_bitset<>::npos){
                if (!reachable[factor][index]){
                    // not dominates and not dominated
                    return DOMINANCE::NONE;
                }
                index = other_cpg->reachable[factor].find_next(index);
            }
        } else if (reachable[factor].size() < other_cpg->reachable[factor].size()){
            assert(!dominates); // implied by reachable[factor].size() < other_cpg->reachable[factor].size()
            boost::dynamic_bitset<>::size_type index = reachable[factor].find_first();
            while (index != boost::dynamic_bitset<>::npos){
                if (!other_cpg->reachable[factor][index]){
                    // not dominated and not dominates
                    return DOMINANCE::NONE;
                }
                index = reachable[factor].find_next(index);
            }
        }
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

void Reachable::apply_center_op_to_leaves(const Reachable &old_tag, const Operator &op) {

#ifdef DEBUG_SEARCH
    cout << "start to apply center op " << op.get_name() << " to leaves" << endl;
#endif

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){

        bool has_pre_on_factor = op.has_precondition_on(factor);
        OpsLeafProps<Effect> eff_on_factor = op.get_effects(factor);

        if (!has_pre_on_factor && eff_on_factor.empty()){
            // op does not affect leaf at all => copy everything
            reachable[factor] = old_tag.reachable[factor];
            goal_reached[factor] = old_tag.goal_reached[factor];
            continue;
        }

        if (eff_on_factor.size() == g_leaves[factor].size()){
            // center op completely overwrites this leaf factor

            const LeafState pred = g_state_registry->lookup_leaf_state(LeafStateHash(0), factor);

            size_t size_before = g_state_registry->size(factor);

            LeafStateHash succ_id(g_state_registry->get_successor_leaf_state_hash(pred, op));

            if (succ_id >= size_before){
                // new leaf state, need to store applicable center actions
                handle_new_leaf_state_from_center_op(succ_id, factor);
            }
            add_state(succ_id, factor);
        } else {
            // check which leaf states satisfy center precondition and apply effects

            size_t number_states = old_tag.get_number_states(factor);
            LeafStateHash id(0);
            while (number_states > 0) {
                if (old_tag.has_leaf_state(id, factor)){
                    --number_states;

                    if (!has_pre_on_factor || op.is_applicable(id, factor)){

                        if (eff_on_factor.empty()){
                            add_state(id, factor);
                        } else {
                            const LeafState state = g_state_registry->lookup_leaf_state(id, factor);

                            size_t size_before = g_state_registry->size(factor);

                            LeafStateHash succ_id = g_state_registry->get_successor_leaf_state_hash(state, op);

                            if (succ_id >= size_before){
                                // new leaf state, need to store applicable center actions
                                handle_new_leaf_state_from_center_op(succ_id, factor);
                            }
                            add_state(succ_id, factor);
                        }
                    }
                }
                ++id;
            }
        }
    }
}

void Reachable::handle_new_leaf_state_from_center_op(LeafStateHash id, LeafFactorID factor) {
    if (id >= leaf_state_id_map[factor].size()){
        leaf_state_id_map[factor].resize(id + 1, -1);
    }

    assert(id >= center_successors[factor].size());

    if (!g_factoring->is_ifork_leaf(factor)){
        // store center ops whose preconditions are satisfied by the new leaf state

        vector<OperatorID> center_ops;
        center_action_successor_generator->generate_applicable_ops_ignore_outside_pre(g_state_registry->lookup_leaf_state(id, factor), center_ops);

        center_successors[factor].resize(id + 1);

        center_successors[factor][id].reserve(center_ops.size());
        for (OperatorID op_id : center_ops){
            if (g_operators[op_id].has_precondition_on(factor)){
                center_successors[factor][id].push_back(op_id);
            }
        }
    }
}

bool Reachable::has_leaf_state(LeafStateHash id, LeafFactorID factor) const {
    assert(id < leaf_state_id_map[factor].size());
    if (is_leaf_state_space_scc[factor]){
        return true;
    }
    if (leaf_state_id_map[factor][id] == -1){
        return false;
    }
    size_t leaf_id = leaf_state_id_map[factor][id];
    return leaf_id < reachable[factor].size() && reachable[factor][leaf_id];
}

int Reachable::get_cost_of_state(LeafStateHash id, LeafFactorID factor) const {
    assert(has_leaf_state(id, factor));
    if (is_leaf_state_space_scc[factor]){
        return min_leaf_action_cost[factor];
    }
    assert((size_t) leaf_state_id_map[factor][id] < reachable[factor].size());
    // TODO: this assumes that the initial state is not a goal state, otherwise need to return 0 for initial state e.g. for forks
    return reachable[factor][leaf_state_id_map[factor][id]] ? min_leaf_action_cost[factor] : INF;
}

size_t Reachable::get_number_states(LeafFactorID factor) const {
    if (is_leaf_state_space_scc[factor]){
        return g_state_registry->size(factor);
    }
    return reachable[factor].count();
}

int Reachable::get_goal_cost(LeafFactorID factor) const {
    if (goal_reached[factor]){
        // TODO this should probably be min(min_leaf_goal_cost[factor], min_leaf_action_cost[factor])
        return min_leaf_action_cost[factor]; // TODO: this assumes that the initial state is not a goal state
    } else {
        return INF;
    }
}

bool Reachable::goal_reachable(LeafFactorID factor) const {
    if (is_leaf_state_space_scc[factor]){
        // this is ok because the construction of the leaf state spaces makes
        // sure that every leaf with a goal has a goal leaf state reachable
        return !g_goals_per_factor[factor].empty();
    }
    return goal_reached[factor];
}

void Reachable::populate_reached_leaf_facts(function<void(int, int)> f) const {
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

void Reachable::populate_cost_of_leaf_facts(function<void(int, int, int)> f) const {
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        size_t num_leaf_states = get_number_states(factor);
        for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
            if (has_leaf_state(id, factor)){
                LeafState l_state = g_state_registry->lookup_leaf_state(id, factor);
                for (int var : g_leaves[factor]){
                    f(var, l_state[var], min_leaf_action_cost[factor]); // TODO this is not actually true, cost can as well be 0
                }
                if (--num_leaf_states == 0){
                    break;
                }
            }
        }
    }
}

void Reachable::store_new_cpg(const GlobalState &state) {
    cpg_storage->store_cpg(state, *this);
}

unique_ptr<CompliantPathGraph> Reachable::get_init_state_cpg() {
    if (pruning->do_advanced_pruning()){
        return PruningReachable::get_init_state_cpg();
    } else {
        unique_ptr<Reachable> reach(new Reachable());
        reach->resize();

        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
            reach->add_state(LeafStateHash(0), factor);
        }
        reach->update(g_state_registry->get_center_state(g_initial_state_data));

        return reach;
    }
}

void Reachable::dump() const {
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
            if (has_leaf_state(id, factor)){
                LeafState state = g_state_registry->lookup_leaf_state(id, factor);
                if (g_leaves[factor].size() == 1){
                    cout << g_fact_names[g_leaves[factor][0]][state[g_leaves[factor][0]]] << endl;
                } else {
                    state.dump_pddl();
                }
            }
        }
    }
}

symmetries::SymmetryCPG* Reachable::get_init_sym_cpg() const {
    return &cpg_storage->cpgs[g_initial_state()];
}

unique_ptr<symmetries::SymmetryCPG> Reachable::clone() const {
    return unique_ptr<symmetries::SymmetryCPG>(new Reachable(*this));
}

uint64_t Reachable::get_hash() const {
    utils::HashState hash_state;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        feed(hash_state, reachable[factor]);
    }
    return hash_state.get_hash64();
}

void Reachable::apply_symmetry_permutation(const symmetries::LeavesPermutation &per) {
    vector<boost::dynamic_bitset<> > old_reachable(reachable);

#ifndef NDEBUG
    boost::dynamic_bitset<> old_goal_reached(goal_reached);
    old_reachable = reachable;
#endif

    for (LeafFactorID factor : per.get_factors_affected()) {
        old_reachable[factor] = reachable[factor];

        reachable[factor] = boost::dynamic_bitset<>();
        goal_reached[factor] = false;
    }

    for(LeafFactorID to_factor : per.get_factors_affected()) {
        LeafFactorID from_factor = per.get_from_factor(to_factor);

        size_t num_states = old_reachable[from_factor].count();
        for  (LeafStateHash id(0); num_states > 0; ++id){
            assert(id < leaf_state_id_map[from_factor].size());
            if (leaf_state_id_map[from_factor][id] == -1) {
                continue;
            }

            size_t leaf_state = leaf_state_id_map[from_factor][id];
            if (leaf_state >= old_reachable[from_factor].size() ||
                    !old_reachable[from_factor][leaf_state]){
                continue;
            }

            --num_states;

            auto [to_state, t_factor] = per.get_new_factor_state_by_old_factor_state(id, from_factor);
            assert(t_factor == to_factor);

            add_state(to_state, to_factor);
        }
    }

#ifndef NDEBUG
    size_t old = 0, now = 0;
    for (size_t factor = 0; factor < g_leaves.size(); ++factor){
        old += old_reachable[factor].count();
        now += reachable[factor].count();
    }
    assert(old == now);
    assert(goal_reached.count() == old_goal_reached.count());
#endif
}

size_t Reachable::get_memory_footprint() const {
    size_t num_bytes = 0;
    if (!reachable.empty()){
        // we need the check because in decoupled orbit search
        // there may be "empty" decoupled states
        num_bytes += (1 + g_leaves.size()) * sizeof(vector<boost::dynamic_bitset<> >);
        num_bytes += goal_reached.num_blocks() * sizeof(boost::dynamic_bitset<>::block_type);

        num_bytes += sizeof(vector<boost::dynamic_bitset<> >);
        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
            num_bytes += reachable[factor].num_blocks() * sizeof(boost::dynamic_bitset<>::block_type);
        }
    }
    return num_bytes;
}


typedef vector<vector<LeafStateHash> > HyperCube;

inline void enumerate(const HyperCube &covered, const HyperCube &not_covered,
                      vector<HyperCube> &cubes,
                      HyperCube &curr_cube,
                      LeafFactorID factor) {

    if (!not_covered[factor].empty()){
        curr_cube[factor] = not_covered[factor];

        if (factor < g_leaves.size() - 1){
            enumerate(covered, not_covered, cubes, curr_cube, LeafFactorID(factor + 1));
        } else {
            cubes.push_back(curr_cube);
        }
    }

    curr_cube[factor] = covered[factor];

    if (factor < g_leaves.size() - 1){
        enumerate(covered, not_covered, cubes, curr_cube, LeafFactorID(factor + 1));
    } else {
        cubes.push_back(curr_cube);
    }
}

inline void substract_cube(const HyperCube &query, const HyperCube &evidence, vector<HyperCube> &resulting_cubes) {
    HyperCube not_covered(g_leaves.size());
    HyperCube covered(g_leaves.size());

    bool has_non_covered_state = false;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        set_intersection(query[factor].begin(), query[factor].end(),
                         evidence[factor].begin(), evidence[factor].end(),
                         std::inserter(covered[factor], covered[factor].end()));
        if (covered[factor].empty()){
            // no overlap in this leaf factor
            resulting_cubes.push_back(query);
            return;
        }
        set_difference(query[factor].begin(), query[factor].end(),
                       evidence[factor].begin(), evidence[factor].end(),
                       std::inserter(not_covered[factor], not_covered[factor].end()));
        has_non_covered_state |= !not_covered[factor].empty();
    }

    if (!has_non_covered_state){
        // this can happen if some intermediate cube is completely covered by evidence
        return;
    }

    HyperCube tmp(g_leaves.size());
    enumerate(covered, not_covered, resulting_cubes, tmp, LeafFactorID(0));

#ifndef NDEBUG
    // the last cube is always composed of covered[factor]
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        assert(resulting_cubes.back()[factor] == covered[factor]);
    }
#endif
    resulting_cubes.pop_back();
}

inline HyperCube get_cube(const ExplicitStateCPG &cpg) {
    HyperCube cube(g_leaves.size());
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        cube[factor].reserve(cpg.get_number_states(factor));
        size_t num_leaf_states = cpg.get_number_states(factor);
        for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
            if (cpg.has_leaf_state(id, factor)){
                cube[factor].push_back(id);
                if (--num_leaf_states == 0){
                    break;
                }
            }
        }
    }
    return cube;
}

bool Reachable::is_hypercube_covered(const GlobalState &base_state, int curr_number_duplicates) const {
    // cube elimination
    vector<HyperCube> current_cubes;
    current_cubes.push_back(get_cube(*this));

    for (int dup = 0; dup <= curr_number_duplicates; ++dup){
        // get other state
        GlobalState s = g_state_registry->get_decoupled_state(base_state, dup);

        HyperCube evd_cube = get_cube(cpg_storage->cpgs[s]);

        vector<HyperCube> new_cubes;

        for (const HyperCube &query : current_cubes){
#ifndef NDEBUG
            size_t size_before = new_cubes.size();
#endif
            substract_cube(query, evd_cube, new_cubes);

            // worst case, in every leaf of query there are states covered and states not covered
            // by evd_cube. then, we get 2^#leaves many new cubes, for all combinations
            // of covered/non-covered leaf state sets across the leaves.
            assert(new_cubes.size() - size_before <= pow(2, g_leaves.size()));
        }

        current_cubes.swap(new_cubes);

        if (current_cubes.empty()){
            return true;
        }
    }

    return false;
}

