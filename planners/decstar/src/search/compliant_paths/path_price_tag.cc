#include "path_price_tag.h"

#include "cpg_storage.h"
#include "../factoring.h"
#include "../operator.h"
#include "../operator_cost.h"
#include "../search_space.h"
#include "../state_registry.h"
#include "../task_utils/successor_generator.h"
#include "../symmetries/decoupled_permutation.h"
#include "../symmetries/graph_creator.h"
#include "../utils/system.h"

#include <limits>
#include <iostream>
#include <numeric>


using namespace std;


void PathPriceInfo::dump() const {
    cout << "PathPriceTagInfo" << endl;
    if (generating_op != 0){   // 0 for initial state facts
        cout << "op: " << g_operators[generating_op].get_name() << endl;
    } else {
        cout << "initial state fact" << endl;
    }
    if (is_new){
        cout << "is new" << endl;
    }
}


PathPrices::PathPrices() : Prices() {
    Prices::resize();
    paths = vector<vector<PathPriceInfo> >(g_leaves.size());
}

PathPrices::PathPrices(const PathPrices &other) : Prices(other) {
    paths = other.paths;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        for (LeafStateHash state(0); state < paths[factor].size(); ++state){
            paths[factor][state].reset_generating_op();
        }
    }
}

PathPrices::PathPrices(const ExplicitStateCPG &cpg) {
    number_states = vector<size_t>(g_leaves.size(), 0);
    prices = vector<vector<int> >(g_leaves.size());
    goal_cost = vector<int>(g_leaves.size(), INF);
    paths = vector<vector<PathPriceInfo> >(g_leaves.size());

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
            if (cpg.has_leaf_state(id, factor)){
                add_state(id, factor, cpg.get_cost_of_state(id, factor), OperatorID::no_operator, LeafStateHash::MAX);
            }
        }
    }
}

bool PathPrices::add_state(LeafStateHash id, LeafFactorID factor, int cost,
                             OperatorID generating_op, LeafStateHash predecessor) {
    bool added = Prices::add_state(id, factor, cost);

    size_t i = leaf_state_id_map[factor][id];

    if (i >= paths[factor].size()){
        paths[factor].resize(i + 1);
    }
    if (added){
        paths[factor][i] = PathPriceInfo(generating_op, predecessor, true);
    }
    return added;
}

const PathPriceInfo& PathPrices::get_path_info(LeafStateHash id, LeafFactorID factor) const {
    assert((size_t) leaf_state_id_map[factor][id] < paths[factor].size());
    return paths[factor][leaf_state_id_map[factor][id]];
}

void PathPrices::update(const GlobalState &base_state) {
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){

        if (g_factoring->is_fork_leaf(factor)){
            // TODO do we need this optimization here? try to keep the code simple
            // skip fork leaves that don't have a goal or whose goal is already achieved (only satisficing search)
            if (g_goals_per_factor[factor].empty() || (g_factoring->get_search_type() == SAT && goal_cost[factor] != INF)){
                continue;
            }
        }

        vector<int> best_prices(g_state_registry->size(factor), numeric_limits<int>::max());

        bool change = true;

        while (change) {

            change = false;

            size_t num_states = 0;
            LeafStateHash id(0);
            while (num_states < number_states[factor]) {

                if (id >= g_state_registry->size(factor)){
                    change = true;
                    break;
                }
                if (has_leaf_state(id, factor)){
                    ++num_states;

                    int cost = get_cost_of_state(id, factor);
                    if (best_prices[id] <= cost){
                        ++id;
                        continue;
                    }

                    best_prices[id] = cost;

                    assert(!precompute_leaf_state_spaces[factor] || id < leaf_state_successors[factor].size() || id >= MAX_LEAF_SPACE_STORE);

                    if (precompute_leaf_state_spaces[factor] ||
                        (id < leaf_state_successors[factor].size() && !leaf_state_successors[factor][id].empty())){
                        if (!precompute_leaf_state_spaces[factor] && leaf_state_successors[factor][id][0].first == OperatorID::no_operator){
                            // is "dead-end" leaf state
                            ++id;
                            continue;
                        }
                        for (size_t o = 0; o < leaf_state_successors[factor][id].size(); ++o){
                            const Operator &op = g_operators[leaf_state_successors[factor][id][o].first];
                            if (g_factoring->is_ifork_leaf(factor) ||
                                    op.is_center_applicable(base_state)){
                                // TODO what about caching applicability per update?
                                change |= add_state(leaf_state_successors[factor][id][o].second, factor,
                                                    cost + get_adjusted_action_cost(op, cost_type), op.get_id(), id);
                            }
                        }
                    } else {
                        const LeafState predecessor = g_state_registry->lookup_leaf_state(id, factor);

                        vector<OperatorID> applicable_ops;
                        leaf_successor_generators[factor]->generate_applicable_ops(predecessor, applicable_ops);

                        // apply all applicable_ops to predecessor and store the outcome
                        for (OperatorID op_id : applicable_ops){
                            const Operator &op = g_operators[op_id];
                            assert(op.get_affected_factor() != LeafFactorID::CENTER);

                            if (op.has_effect_on(factor) && op.is_center_applicable(base_state)){
                                LeafStateHash lid = g_state_registry->get_successor_leaf_state_hash(predecessor, op);

                                if (lid >= leaf_state_id_map[factor].size()){
                                    // this can happen when using reachability functions in search, since here we might
                                    // find new leaf states
                                    leaf_state_id_map[factor].resize(lid + 1, -1);
                                    best_prices.resize(lid + 1, numeric_limits<int>::max());
                                }

                                change |= add_state(lid, factor, cost + get_adjusted_action_cost(op, cost_type), op_id, id);
                            }
                        }
                    }


                    if (g_factoring->get_search_type() == SAT && g_factoring->is_fork_leaf(factor) && get_goal_cost(factor) != INF){
                        // in satisficing search => stop once a goal is reachable in fork-leaves
                        change = false;
                        break;
                    }
                }
                ++id;
            }
        }
    }
}

void PathPrices::apply_center_op_to_leaves(const PathPrices &old_cpg, const Operator &op) {
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){

        bool has_pre_on_factor = op.has_precondition_on(factor);
        size_t num_effects = op.get_effects(factor).size();

        if (!has_pre_on_factor && num_effects == 0){
            // op does not affect leaf at all => copy everything
            number_states[factor] = old_cpg.number_states[factor];
            prices[factor] = old_cpg.prices[factor];
            goal_cost[factor] = old_cpg.goal_cost[factor];
            paths[factor] = old_cpg.paths[factor];
            for (size_t id = 0; id < paths[factor].size(); ++id){
                paths[factor][id].reset_generating_op();
            }
            continue;
        }

        if (num_effects == g_leaves[factor].size()){
            // center op completely overwrites leaf
            LeafState predecessor = g_state_registry->lookup_leaf_state(LeafStateHash(0), factor);
#ifndef NDEBUG
            size_t size_before = g_state_registry->size(factor);
#endif
            LeafStateHash succ_state = g_state_registry->get_successor_leaf_state_hash(predecessor, op);
            assert(size_before == g_state_registry->size(factor));

            add_state(succ_state, factor, 0, OperatorID::no_operator, LeafStateHash::MAX);
            paths[factor][leaf_state_id_map[factor][succ_state]].reset_generating_op();
            continue;
        }

        // check which leaf states satisfy center precondition and apply effects
        size_t number_states = old_cpg.get_number_states(factor);
        LeafStateHash id(0);
        while (number_states > 0) {
            if (old_cpg.has_leaf_state(id, factor)){
                --number_states;

                if (!has_pre_on_factor || op.is_applicable(id, factor)){
                    if (num_effects == 0){
                        add_state(id, factor, old_cpg.get_cost_of_state(id, factor), OperatorID::no_operator, id);
                        paths[factor][leaf_state_id_map[factor][id]].reset_generating_op();
                    } else {
                        LeafState state = g_state_registry->lookup_leaf_state(id, factor);
#ifndef NDEBUG
                        size_t size_before = g_state_registry->size(factor);
#endif
                        LeafStateHash succ_id = g_state_registry->get_successor_leaf_state_hash(state, op);

                        assert(size_before == g_state_registry->size(factor));

                        add_state(succ_id, factor, old_cpg.get_cost_of_state(id, factor), OperatorID::no_operator, id);
                        paths[factor][leaf_state_id_map[factor][succ_id]].reset_generating_op();
                    }
                }
            }
            ++id;
        }
    }
}

void PathPrices::apply_symmetry_permutation(const symmetries::LeavesPermutation &per) {
    // Copy prices and reinitialize affected factors
    vector<vector<int> > old_prices(prices);
    vector<size_t> old_number_states(number_states);
    vector<int> old_goal_cost(goal_cost); // only for debugging
    vector<vector<PathPriceInfo> > old_paths(paths);

    for (LeafFactorID factor : per.get_factors_affected()) {
        number_states[factor] = 0;
        prices[factor] = vector<int>();
        goal_cost[factor] = INF;
        paths[factor] = vector<PathPriceInfo>();
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
            assert(id < leaf_state_id_map[from_factor].size());
            if (leaf_state_id_map[from_factor][id] == -1){
                continue;
            }

            size_t from_state_index = leaf_state_id_map[from_factor][id];
            if (from_state_index >= old_prices[from_factor].size() || old_prices[from_factor][from_state_index] == INF){
                continue;
            }

            num_states--;
            pair<LeafStateHash, LeafFactorID> to_pair = per.get_new_factor_state_by_old_factor_state(id, from_factor);
            assert(to_pair.second == to_factor);
            LeafStateHash to_state = to_pair.first;

            // best_supporter and predecessor need to be permuted too. this is not required for plan reconstruction, though.
            add_state(to_state, to_factor, old_prices[from_factor][from_state_index], OperatorID::no_operator, LeafStateHash::MAX);
        }
    }

    assert(accumulate(number_states.begin(), number_states.end(), 0) == accumulate(old_number_states.begin(), old_number_states.end(), 0));
    assert(accumulate(goal_cost.begin(), goal_cost.end(), 0) == accumulate(old_goal_cost.begin(), old_goal_cost.end(), 0));
}

void PathPrices::insert_leaf_actions(vector<OperatorID> &path, vector<StateID> &states) {
#ifdef DEBUG_PLAN_EXTRACTION
    cout << "##################### STARTING TRACE_PATH" << endl;
#endif

    reverse(path.begin(), path.end());
    reverse(states.begin(), states.end());

    // reconstruct leaf paths
    vector<unique_ptr<PathPrices> > price_tags(states.size());

    price_tags[0].reset(new PathPrices());

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        price_tags[0]->add_state(LeafStateHash(0), factor, 0, OperatorID::no_operator, LeafStateHash::MAX);
    }
    price_tags[0]->update(g_state_registry->lookup_state(states[0]));

    for (size_t i = 1; i < states.size(); ++i){
        if (g_factoring->get_profile() != FORK){
            price_tags[i].reset(new PathPrices());
            price_tags[i]->apply_center_op_to_leaves(*price_tags[i - 1], g_operators[path[i - 1]]);
        } else {
            price_tags[i].reset(new PathPrices(*price_tags[i - 1].get()));
        }
        price_tags[i]->update(g_state_registry->lookup_state(states[i]));
    }

#ifdef DEBUG_PLAN_EXTRACTION
    cout << "done reconstructing leaf paths" << endl;
#endif

    // start from goal state
    reverse(path.begin(), path.end());
    reverse(price_tags.begin(), price_tags.end());

#ifdef DEBUG_PLAN_EXTRACTION
    reverse(states.begin(), states.end());
#endif

    vector<LeafStateHash> marked_leaf_states(g_leaves.size(), LeafStateHash::MAX);

    // mark leaf goal states
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        if (!g_goals_per_factor[factor].empty()){
            int min_cost = numeric_limits<int>::max();

            size_t number_states = price_tags[0]->get_number_states(factor);
            LeafStateHash id(0);
            while (number_states > 0) {
                if (price_tags[0]->has_leaf_state(id, factor)){
                    --number_states;
                    if (ExplicitStateCPG::is_leaf_goal_state(id, factor)){
                        int new_cost = price_tags[0]->get_cost_of_state(id, factor);
                        assert(new_cost >= 0);
                        if (min_cost > new_cost){
                            min_cost = new_cost;
                            marked_leaf_states[factor] = id;
                        }
                    }
                }
                ++id;
            }
            assert(marked_leaf_states[factor] != LeafStateHash::MAX);

#ifdef DEBUG_PLAN_EXTRACTION
            cout << "marked goal fact: " << marked_leaf_states[factor] << " for cost " << min_cost << endl;
            g_state_registry->lookup_leaf_state(marked_leaf_states[factor], factor).dump_pddl();
#endif
        }
    }

#ifdef DEBUG_PLAN_EXTRACTION
    cout << "start backtracing plan" << endl;
#endif

    vector<OperatorID> decoupled_plan;

    // go through center path and fill in leaf actions
    for (size_t step = 0; step < price_tags.size(); ++step){

        const Operator *op = nullptr;
        if (step < path.size()){
            op = &g_operators[path[step]];
        }

#ifdef DEBUG_PLAN_EXTRACTION
        cout << "current center state: " << states[step] << endl;
        g_state_registry->lookup_state(states[step]).dump_pddl();
        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
            for (LeafStateHash i(0); i < g_state_registry->size(factor); ++i){
                if (price_tags[step]->has_leaf_state(i, factor)){
                    if (price_tags[step]->get_path_info(i, factor).is_new){
                        cout << "is new:" << endl;
                    }
                    g_state_registry->lookup_leaf_state(i, factor).dump_pddl();
                }
            }
        }
        cout << endl;
#endif

        // iterate over leaf factors
        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){

            bool change = true;
            while (change && marked_leaf_states[factor] != LeafStateHash::MAX){
                // backtrack in current CPG to next center action
                change = false;

                const PathPriceInfo &path_info = price_tags[step]->get_path_info(marked_leaf_states[factor], factor);
                if (path_info.is_new){
                    if (path_info.generating_op != OperatorID::no_operator){
                        // leaf action
                        assert(path_info.predecessor != LeafStateHash::MAX);
                        assert(path_info.predecessor != marked_leaf_states[factor]); // not a self-loop
                        assert(g_operators[path_info.generating_op].get_affected_factor() == factor);

                        marked_leaf_states[factor] = path_info.predecessor;
                        decoupled_plan.push_back(path_info.generating_op);
                        change = true;
                    } else {
                        // marked_leaf_states[factor] is initial leaf state
                        assert(op == nullptr);
                        assert(path_info.predecessor == LeafStateHash::MAX);

                        marked_leaf_states[factor] = LeafStateHash::MAX;
                    }
                }
            }

            bool need_compliant_leaf_state = false;

            if (marked_leaf_states[factor] != LeafStateHash::MAX && op != nullptr && op->has_effect_on(factor)){
                // mimic leaf effects to predecessor decoupled state
                const PathPriceInfo &path_info = price_tags[step]->get_path_info(marked_leaf_states[factor], factor);

                assert(path_info.generating_op == OperatorID::no_operator);

                if (path_info.predecessor != LeafStateHash::MAX){
                    // predecessor leaf state in predecessor decoupled state
                    marked_leaf_states[factor] = path_info.predecessor;
                } else {
                    // center action completely overwrites leaf,
                    // pick any leaf state in predecessor decoupled state
                    assert(op->get_effects(factor).size() == g_leaves[factor].size());

                    need_compliant_leaf_state = true;
                    marked_leaf_states[factor] = LeafStateHash::MAX;
                }
            }

            if (need_compliant_leaf_state || (op != nullptr && op->has_precondition_on(factor))){
                // collect and mark leaf precondition of center op
                assert(marked_leaf_states[factor] == LeafStateHash::MAX || op->is_applicable(marked_leaf_states[factor], factor));

                if (marked_leaf_states[factor] == LeafStateHash::MAX){
                    int best_price = numeric_limits<int>::max();

                    size_t number_states = price_tags[step + 1]->get_number_states(factor);
                    LeafStateHash id(0);
                    while (number_states > 0) {
                        if (price_tags[step + 1]->has_leaf_state(id, factor)){
                            --number_states;
                            if (op->is_applicable(id, factor)){
                                int cost = price_tags[step + 1]->get_cost_of_state(id, factor);
                                if (cost < best_price){
                                    best_price = cost;
                                    marked_leaf_states[factor] = id;
                                }
                            }
                        }
                        ++id;
                    }

                    assert(marked_leaf_states[factor] != LeafStateHash::MAX);
                }
            }
        }

        if (op != nullptr){
            decoupled_plan.push_back(op->get_id());
#ifdef DEBUG_PLAN_EXTRACTION
            cout << "added center op: " << decoupled_plan.back()->get_name() << endl;
#endif
        }
    }

#ifndef NDEBUG
    for (size_t i = 0; i < g_leaves.size(); ++i){
        // all leaves are in initial state
        assert(marked_leaf_states[i] == LeafStateHash::MAX);
    }
#endif

    path.swap(decoupled_plan);
}

inline bool is_equal(const GlobalState &s1, const symmetries::SymmetryCPG &cpg1,
                     const GlobalState &s2, const symmetries::SymmetryCPG &cpg2) {

    for (int var : g_center){
        if (s1[var] !=  s2[var]){
            return false;
        }
    }
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        if (!g_goals_per_factor[factor].empty()){
            if (g_factoring->get_search_type() == SAT || g_factoring->get_search_type() == UNSAT){
                bool goal_reachable_1 = cpg1.get_goal_cost(factor) != CompliantPathGraph::INF;
                bool goal_reachable_2 = cpg2.get_goal_cost(factor) != CompliantPathGraph::INF;
                if (goal_reachable_1 ^ goal_reachable_2){
                    return false;
                }
            } else if (cpg1.get_goal_cost(factor) != cpg2.get_goal_cost(factor)){
                return false;
            }
        }
        if (cpg1.get_number_states(factor) != cpg2.get_number_states(factor)){
            return false;
        }
        for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
            bool has_state = cpg1.has_leaf_state(id, factor);
            if (has_state ^ cpg2.has_leaf_state(id, factor)){
                return false;
            }
            if (has_state && g_factoring->get_search_type() != SAT && g_factoring->get_search_type() != UNSAT){
                if (cpg1.get_cost_of_state(id, factor) != cpg2.get_cost_of_state(id, factor)){
                    return false;
                }
            }
        }
    }

    return true;
}

void PathPrices::symmetry_plan_reconstruction(vector<OperatorID> &ops, vector<StateID> &states) {
    assert(states.size() == 1); // somewhat hacky
    assert(ops.empty());

    GlobalState current_state = g_state_registry->lookup_state(states[0]);

    states.clear();

    vector<unique_ptr<symmetries::DecoupledPermutation> > permutations;
    vector<unique_ptr<PathPrices> > cpgs;

    // Phase 1: backtrace center solution path
    for (;;) {
        const SearchNodeInfo &info = search_space->search_node_infos[current_state];
        OperatorID op = info.creating_operator;

        states.push_back(current_state.get_id());

        cpgs.push_back(unique_ptr<PathPrices>(new PathPrices(*static_cast<const ExplicitStateCPG*>(CPGStorage::storage->get_cpg(current_state)))));

        GlobalState new_state = g_initial_state();
        unique_ptr<SymmetryCPG> new_cpg;
        if (op != OperatorID::no_operator) {
            GlobalState parent_state = g_state_registry->lookup_state(info.parent_state_id);

            new_state = g_state_registry->get_center_successor(parent_state, g_operators[op]);
            new_cpg = unique_ptr<symmetries::SymmetryCPG>(dynamic_cast<symmetries::SymmetryCPG*>(CPGStorage::storage->get_cpg(parent_state)->get_successor_via_center_action(new_state, g_operators[op]).release()));
        } else {
            new_state = g_state_registry->get_center_state(g_initial_state_data);
            new_cpg = unique_ptr<symmetries::SymmetryCPG>(dynamic_cast<symmetries::SymmetryCPG*>(ExplicitStateCPG::get_init_state_cpg().release()));
        }

        unique_ptr<symmetries::DecoupledPermutation> dp;
        const symmetries::SymmetryCPG *current_cpg = dynamic_cast<const symmetries::SymmetryCPG*>(CPGStorage::storage->get_cpg(current_state));
        if (!is_equal(current_state, *current_cpg, new_state, *new_cpg)){
            dp = g_symmetry_graph->create_permutation_from_state_to_state(current_state, *current_cpg, new_state, *new_cpg);
            permutations.push_back(unique_ptr<symmetries::DecoupledPermutation>(new symmetries::DecoupledPermutation(*dp)));
        } else {
            permutations.push_back(unique_ptr<symmetries::DecoupledPermutation>(new symmetries::DecoupledPermutation()));
        }

        if (op == OperatorID::no_operator) {  // reached initial state => done
            assert(info.parent_state_id == StateID::no_state);
            break;
        }

        ops.push_back(op);

        current_state = g_state_registry->lookup_state(info.parent_state_id);
    }

    // Phase 2: backwards-apply the permutations to get the real center action sequence
    unique_ptr<symmetries::DecoupledPermutation> temp_p(new symmetries::DecoupledPermutation(*permutations.back()));
    for (int i = permutations.size() - 2; i >= 0; --i) {
        temp_p.reset(new symmetries::DecoupledPermutation(*permutations[i], *temp_p));
        permutations[i].reset(new symmetries::DecoupledPermutation(*temp_p));
    }

    for (size_t i = 0; i < states.size(); ++i){
        const symmetries::DecoupledPermutation &permutation = *permutations[i];
        states[i] = g_state_registry->get_decoupled_state_permutation(g_state_registry->lookup_state(states[i]), *cpgs[i], permutation).get_id();
    }

#ifndef NDEBUG
    // make sure that the back-permutation results in the original initial state
    // and that the back-permuted goal state is still a goal state
    for (size_t var: g_center) {
        assert(g_state_registry->lookup_state(states.back())[var] == g_initial_state_data[var]);
    }
    for (const auto &goal : g_goal){
        assert(g_belongs_to_factor[goal.first] == LeafFactorID::CENTER);
        assert(g_state_registry->lookup_state(states[0])[goal.first] == goal.second);
    }

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor) {
        vector<int> tmp_initial_state;
        for (size_t var : g_leaves[factor]) {
            tmp_initial_state.push_back(g_initial_state_data[var]);
        }
        assert(cpgs.back()->has_leaf_state(g_state_registry->get_leaf_state_hash(tmp_initial_state, factor), factor));
        assert(g_goals_per_factor[factor].empty() || cpgs[0]->get_goal_cost(factor) != CompliantPathGraph::INF);
    }
#endif

    for (size_t i = states.size() - 1; i > 0; --i) {
        vector<OperatorID> applicable_ops;
        g_successor_generator->generate_applicable_ops(g_state_registry->lookup_state(states[i]), *cpgs[i], applicable_ops);

        ops[i-1] = permutations[i]->find_matching_min_cost_permuted_op(g_operators[ops[i-1]], applicable_ops, cost_type);

#ifndef NDEBUG
        // verify that applying permuted_path[i-1] is states[i] results in states[i-1]
        PathPrices new_cpg;
        new_cpg.apply_center_op_to_leaves(*cpgs[i], g_operators[ops[i-1]]);
        GlobalState center_successor = g_state_registry->get_center_successor(g_state_registry->lookup_state(states[i]), g_operators[ops[i-1]]);
        new_cpg.update(center_successor);
        // this check can fail in optimal planning, because the g-value adaption is done
        // in cpgs[i-1], but not in new_cpg
        assert(is_equal(g_state_registry->lookup_state(states[i-1]), *cpgs[i-1], center_successor, new_cpg) ||
                g_factoring->get_search_type() == SDA ||
                g_factoring->get_search_type() == ASDA);
#endif
    }
}

void PathPrices::fill_in_leaf_actions(vector<OperatorID> &ops, vector<StateID> &states) {
    if (g_symmetry_graph){
        symmetry_plan_reconstruction(ops, states);
    }

    insert_leaf_actions(ops, states);
}
