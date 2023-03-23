#include "explicit_state_cpg.h"

#include "../algorithms/sccs.h"
#include "cpg_storage.h"
#include "../factoring.h"
#include "../leaf_state_id.h"
#include "../operator.h"
#include "path_price_tag.h"
#include "pricing_function.h"
#include "pruning_options.h"
#include "reachability_function.h"
#include "../state.h"
#include "../state_id.h"
#include "../state_registry.h"
#include "../task_utils/successor_generator.h"
#include "../utils/timer.h"


using namespace std;


bool ExplicitStateCPG::initialized = false;

const size_t ExplicitStateCPG::MAX_LEAF_SPACE_STORE = 100000;

bool ExplicitStateCPG::compute_leaf_backwards_graph = false;

bool ExplicitStateCPG::store_leaf_goal_states = false;

vector<bool> ExplicitStateCPG::precompute_leaf_state_spaces;

vector<boost::dynamic_bitset<> > ExplicitStateCPG::is_a_leaf_goal_state;

vector<vector<LeafStateHash> > ExplicitStateCPG::leaf_goal_states;

vector<vector<vector<OperatorID> > > ExplicitStateCPG::center_successors;

unique_ptr<successor_generator::SuccessorGenerator> ExplicitStateCPG::center_action_successor_generator;

vector<unique_ptr<successor_generator::SuccessorGenerator> > ExplicitStateCPG::leaf_successor_generators;

vector<vector<vector<pair<OperatorID, LeafStateHash> > > > ExplicitStateCPG::leaf_state_successors;

vector<vector<vector<pair<OperatorID, LeafStateHash> > > > ExplicitStateCPG::leaf_state_predecessors;

vector<bool> ExplicitStateCPG::is_leaf_state_space_scc;

vector<vector<int> > ExplicitStateCPG::leaf_state_id_map;

vector<size_t> ExplicitStateCPG::curr_leaf_state_max_id;



bool ExplicitStateCPG::is_leaf_goal_state(LeafStateHash id, LeafFactorID factor) {
    assert(is_a_leaf_goal_state.size() > factor && is_a_leaf_goal_state[factor].size() > id);
    return is_a_leaf_goal_state[factor][id];
}

const vector<LeafStateHash>& ExplicitStateCPG::get_leaf_goal_states(LeafFactorID factor) {
    assert(leaf_goal_states.size() > factor);
    return leaf_goal_states[factor];
}

void ExplicitStateCPG::initialize() {
    if (!initialized){
        leaf_state_successors.resize(g_leaves.size());
        center_successors.resize(g_leaves.size());
        is_a_leaf_goal_state.resize(g_leaves.size());
        leaf_goal_states.resize(g_leaves.size());

        build_leaf_state_spaces();

        initialized = true;
    }
}

void ExplicitStateCPG::build_leaf_successor_generators() {
    if (g_factoring->get_profile() != FACTORING_PROFILE::FORK){
        center_action_successor_generator = unique_ptr<successor_generator::SuccessorGenerator>(new successor_generator::SuccessorGenerator(LeafFactorID::CENTER, true));
    }
    leaf_successor_generators.reserve(g_leaves.size());
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        leaf_successor_generators.push_back(unique_ptr<successor_generator::SuccessorGenerator>(new successor_generator::SuccessorGenerator(factor)));
    }
}

bool ExplicitStateCPG::is_applicable(const Operator &op) const {
    for (LeafFactorID factor : op.get_leaf_pre_factors()){
        bool applicable = false;
        size_t number_states = get_number_states(factor);
        LeafStateHash id(0);
        while (number_states > 0){
            if (has_leaf_state(id, factor)){
                --number_states;
                if (op.is_applicable(id, factor)){
                    applicable = true;
                    break;
                }
            }
            ++id;
        }
        if (!applicable){
            return false;
        }
    }
    return true;
}

static vector<size_t> counter;
static boost::dynamic_bitset<> is_applicable_leaf;

void ExplicitStateCPG::remove_inapplicable_ops(vector<OperatorID> &ops) const {
    if (g_factoring->get_profile() == FACTORING_PROFILE::FORK){
        return;
    }

    if (g_factoring->get_profile() == FACTORING_PROFILE::IFORK && ExplicitStateCPG::all_leaves_invertible()){
        // for IFORK leaves that are invertible, there is no need to actually check
        // the leaf preconditions. collecting all actions enabled by the current
        // center state is enough.
        // TODO: make this more fine-grained
        // TODO: this also works for non-ifork leaves!
        return;
    }

    counter.assign(g_operators.size(), 0);
    is_applicable_leaf.resize(g_operators.size());

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        if (g_factoring->is_fork_leaf(factor)){
            continue;
        }

        is_applicable_leaf.reset();

        size_t number_states = get_number_states(factor);
        LeafStateHash id(0);
        while (number_states > 0){
            if (has_leaf_state(id, factor)){
                --number_states;
                assert(id < center_successors[factor].size());
                for (OperatorID index : center_successors[factor][id]){
                    if (!is_applicable_leaf[index]){
                        ++counter[index];
                        is_applicable_leaf[index] = true;
                    }
                }
            }
            ++id;
        }
    }
#ifndef NDEBUG
    vector<bool> added(g_operators.size(), false);
#endif
    vector<OperatorID> applicable_ops;

    bool swap = false;
    for (OperatorID op_id : ops){
        assert(g_operators[op_id].get_affected_factor() == LeafFactorID::CENTER);
        if (counter[op_id] == g_operators[op_id].get_number_leaf_pre_factors()){
#ifndef NDEBUG
            assert(!added[op_id]);
            added[op_id] = true;
#endif
            applicable_ops.push_back(op_id);
        } else {
            swap = true;
        }
    }
    if (swap){
        ops.swap(applicable_ops);
    }
}

void ExplicitStateCPG::build_leaf_state_space(Prices &prices,
                                              LeafStateHash first_state_id,
                                              LeafFactorID factor,
                                              bool compute_leaf_invertibility) {

    assert(!compute_leaf_invertibility || first_state_id == LeafStateHash(0));

    vector<int> best_prices;
    bool change = true;

    vector<vector<int> > leaf_only_state_space_graph;

    while (change) {

        change = false;

        for (LeafStateHash id = first_state_id; id < g_state_registry->size(factor); ++id){
            if (!prices.has_leaf_state(id, factor)){
                assert(g_symmetry_graph && first_state_id != LeafStateHash(0));
                // can only happen when handling new symmetric leaf state
                continue;
            }
            int cost = prices.get_cost_of_state(id, factor);
            if (id < best_prices.size()){
                if (cost >= best_prices[id] ||
                        ((g_factoring->get_search_type() == SAT || g_factoring->get_search_type() == UNSAT)
                                && best_prices[id] != numeric_limits<int>::max())){
                    // no need to handle a state twice (unless it got cheaper and we do optimal planning)
                    continue;
                }
            } else {
                best_prices.resize(id + 1, numeric_limits<int>::max());
                if (compute_leaf_invertibility){
                    leaf_only_state_space_graph.resize(id + 1);
                }
            }

            const LeafState curr_leaf_state = g_state_registry->lookup_leaf_state(id, factor);
            bool first_time_seen = best_prices[id] == numeric_limits<int>::max();
            best_prices[id] = cost;

            if (first_time_seen && g_symmetry_graph && first_state_id != LeafStateHash(0)){
                // when adding the successors of a symmetric leaf state not reachable from the initial state
                if (id < center_successors[factor].size() && !center_successors[factor][id].empty()){
                    first_time_seen = false;
                }
                if (id < leaf_state_successors[factor].size() && !leaf_state_successors[factor][id].empty()){
                    first_time_seen = false;
                }
            }

            if (id >= leaf_state_successors[factor].size()) {
                leaf_state_successors[factor].resize(id + 1);
            }
            if (compute_leaf_backwards_graph) {
                // in case this state does not have a predecessor, e.g.,
                // being a permutation of the initial leaf state, not
                // increasing the size results in segfaults when doing
                // goal price propagation, because this accesses the
                // predecessors of all leaf states
                if (id >= leaf_state_predecessors[factor].size()) {
                    leaf_state_predecessors[factor].resize(id + 1);
                }
            }

            if (g_factoring->is_fork_leaf(factor) && is_a_leaf_goal_state[factor][id]){
                // the goal states of fork leaves don't need successors
                continue;
            }


            vector<OperatorID> applicable_ops;

            if (!g_factoring->is_fork_leaf(factor) &&
                    (first_time_seen || !g_factoring->is_ifork_leaf(factor))){

                vector<OperatorID> center_ops;
                center_action_successor_generator->generate_applicable_ops_ignore_outside_pre(curr_leaf_state, center_ops);

                if (id >= center_successors[factor].size()){
                    center_successors[factor].resize(id+1);
                }
                for (OperatorID op_id : center_ops){
                    if (first_time_seen && g_operators[op_id].has_precondition_on(factor)){
                        // store center ops whose preconditions are satisfied by curr_leaf_state
                        center_successors[factor][id].push_back(op_id);
                    }
                    if (!g_factoring->is_ifork_leaf(factor) && g_operators[op_id].has_effect_on(factor)){
                        // no need to apply center ops if it does not change this leaf factor
                        applicable_ops.push_back(op_id);
                    }
                }
                if (first_time_seen){
                    center_successors[factor][id].shrink_to_fit();
                }
            }

            if (first_time_seen){
                leaf_successor_generators[factor]->generate_applicable_ops(curr_leaf_state, applicable_ops);
            } else {
                size_t old_size = applicable_ops.size();
                applicable_ops.resize(applicable_ops.size() + leaf_state_successors[factor][id].size(), OperatorID::no_operator);
                for (size_t o = 0; o < leaf_state_successors[factor][id].size(); ++o){
                    applicable_ops[old_size + o] = leaf_state_successors[factor][id][o].first;
                }
            }


#ifdef DEBUG_PRECOMPUTE_GOAL_COST
            cout << "       generated " << applicable_ops.size() << " applicable operators" << endl;
#endif

            // apply all applicable_ops to predecessor and store the outcome
            for (OperatorID op_id : applicable_ops){
                const Operator &op = g_operators[op_id];
                if (op.has_effect_on(factor)){
                    bool is_center_op = op.get_affected_factor() == LeafFactorID::CENTER;

#ifdef DEBUG_PRECOMPUTE_GOAL_COST
                    cout << "################ trying to apply " << op->get_name() << " in state " << curr_leaf_state.get_id() << endl;
                    curr_leaf_state.dump_pddl();
#endif
                    LeafStateHash succ_id = g_state_registry->get_successor_leaf_state_hash(curr_leaf_state, op);

                    if (id == succ_id){
                        // this would induce a self-loop in the leaf state space
                        continue;
                    }

                    if (compute_leaf_invertibility &&
                        !op.has_precondition_on(LeafFactorID::CENTER) &&
                        op.get_affected_factor() != LeafFactorID::CENTER){
                        // is leaf action without center precondition
                        leaf_only_state_space_graph[id].push_back(succ_id);
                    }

#ifdef DEBUG_PRECOMPUTE_GOAL_COST
                    cout << "created leaf state " << succ_id << " of cost " << (cost + get_adjusted_action_cost(*op, g_factoring->get_cost_type())) << endl;
                    g_state_registry->lookup_leaf_state(succ_id).dump_pddl();
#endif
                    int op_cost = 0;
                    if (!is_center_op){
                        op_cost = get_adjusted_action_cost(op, cost_type);
                    }

                    if (succ_id >= leaf_state_id_map[factor].size()){
                        leaf_state_id_map[factor].resize(succ_id + 1, -1);
                    }

                    change |= prices.add_state(succ_id, factor, cost + op_cost);

                    if (compute_leaf_backwards_graph && first_time_seen){
                        // this ensures that there is an entry leaf_state_predecessors[factor][lid]
                        // even in case succ_id has been generated by a center action
                        if (succ_id >= leaf_state_predecessors[factor].size()) {
                            leaf_state_predecessors[factor].resize(succ_id + 1);
                        }
                    }

                    if (!is_center_op && first_time_seen){
                        leaf_state_successors[factor][id].push_back(make_pair(op_id, succ_id));
                        if (compute_leaf_backwards_graph){
                            leaf_state_predecessors[factor][succ_id].push_back(make_pair(op_id, id));
                        }
                    }
                }
            }
        }
    }
    if (compute_leaf_invertibility){
        size_t num_sccs = sccs::compute_maximal_sccs(leaf_only_state_space_graph).size();
        if (num_sccs == 1){
            size_t prod_size = 1;
            for (int var : g_leaves[factor]){
                prod_size *= g_variable_domain[var];
            }
            cout << "state space of leaf " << factor << " is strongly connected via leaf-only actions";
            if (g_symmetry_graph && prod_size != g_state_registry->size(factor)){
                cout << " -- optimizations disabled due to symmetry pruning.";
            } else {
                is_leaf_state_space_scc[factor] = true;
            }
            cout << endl;
            if (prod_size != g_state_registry->size(factor)){
                cout << "WARNING: not all leaf states for leaf " << factor << " are reachable";
                // TODO could do this for all leaves where leaf state space is constructed
                if (!g_symmetry_graph){
                    // be careful with decoupled orbit search, there can be symmetric leaf
                    // states not reachable from the initial state
                    cout << ", removing non-applicable center actions from successor generator";
                    g_successor_generator->remove_never_applicable_center_ops(factor);
                }
                cout << endl;
            }
        } else if (num_sccs == g_state_registry->size(factor)){
            cout << "no non-trivial leaf-only SCC in state space of leaf " << factor << endl;
        }
    }

#ifdef DEBUG_PRECOMPUTE_GOAL_COST
    int num_leaf_trans = 0;
    int num_center_trans = 0;
    for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id) {
        num_leaf_trans += leaf_state_successors[factor][id].size();
        num_center_trans += center_successors[factor][id].size();
    }
    cout << "number leaf states of leaf " << factor << ": " << g_state_registry->size(factor) << endl;
    cout << "number center transitions: " << num_center_trans << endl;
    cout << "number leaf transitions: " << num_leaf_trans << endl;
#endif
}

void ExplicitStateCPG::build_leaf_state_spaces() {

    leaf_state_id_map.resize(g_leaves.size(), vector<int>(1, -1));
    curr_leaf_state_max_id.resize(g_leaves.size(), 0);

    is_leaf_state_space_scc.resize(g_leaves.size(), false);

    if (compute_leaf_backwards_graph){
        leaf_state_predecessors.resize(g_leaves.size());
        precompute_leaf_state_spaces = vector<bool>(g_leaves.size(), true);
    }

    Prices goal_price_tag;
    goal_price_tag.resize();

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        goal_price_tag.add_state(LeafStateHash(0), factor, 0);
    }

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){

        if (!precompute_leaf_state_spaces[factor]){
            continue;
        }

        if (g_factoring->is_fork_leaf(factor) && g_goals_per_factor[factor].empty()){
            // TODO remove these leaves from g_leaves; then this can go away
            // skip fork-leaf factor without a goal
            // TODO need to be careful with orbit search; need to change PDG in this case, too
            continue;
        }

        build_leaf_state_space(goal_price_tag, LeafStateHash(0), factor, pruning->exploit_invertible_leaf_state_spaces());
    }

    pruning->apply_leaf_state_space_pruning();

    size_t min_leaf_factor_size = numeric_limits<size_t>::max();
    double avg_leaf_factor_size = 0;
    size_t max_leaf_factor_size = 0;
    size_t tmp;
    bool built_all_state_spaces = true;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        if (precompute_leaf_state_spaces[factor]){
            tmp = g_state_registry->size(factor);
            min_leaf_factor_size = min(min_leaf_factor_size, tmp);
            avg_leaf_factor_size += tmp;
            max_leaf_factor_size = max(max_leaf_factor_size, tmp);
        } else {
            built_all_state_spaces = false;
        }
    }
    if (min_leaf_factor_size != numeric_limits<size_t>::max()){
        cout << "min reachable leaf factor size "  << min_leaf_factor_size << endl;
    }
    if (built_all_state_spaces){
        cout << "avg reachable leaf factor size "  << (int) (avg_leaf_factor_size/g_leaves.size()) << endl;
        cout << "max reachable leaf factor size "  << max_leaf_factor_size << endl;
    }


    min_leaf_goal_cost = vector<int>(g_leaves.size(), numeric_limits<int>::max());
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        if (!precompute_leaf_state_spaces[factor]){
            cout << "min goal cost of factor " << factor << " not computed" << endl;
            min_leaf_goal_cost[factor] = 0;
            continue;
        }
        min_leaf_goal_cost[factor] = goal_price_tag.get_goal_cost(factor);

        if (min_leaf_goal_cost[factor] == INF){
            if (!g_goals_per_factor[factor].empty()){
                cout << "There is a goal that cannot be achieved in factor " << factor << endl;
                for (size_t i = 0; i < g_goals_per_factor[factor].size(); i++){
                    cout << g_fact_names[g_goals_per_factor[factor][i].first][g_goals_per_factor[factor][i].second] << endl;
                }
                cout << "Total time: " << utils::g_timer << endl;
                exit_with(utils::ExitCode::SEARCH_UNSOLVABLE);
            }
            min_leaf_goal_cost[factor] = 0;
        } else {
            sum_min_leaf_goal_cost += min_leaf_goal_cost[factor];
        }
        if (g_goals_per_factor[factor].empty()){
            cout << "factor " << factor << " does not have a goal" << endl;
        } else {
            cout << "min goal cost of factor " << factor << " : " << min_leaf_goal_cost[factor] << endl;
        }
    }

    bool all_built = true;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        bool keep_sg_for_unreachable_symmetric_lstates = false;
        if (g_symmetry_graph){
            // in case not all leaf states are reachable, we need to
            // keep the leaf successor generator because an unreachable
            // state might be symmetric to a reachable one. we then need
            // to construct the leaf state space under that state when it
            // is encountered during the search
            size_t prod_size = 1;
            for (int var : g_leaves[factor]){
                prod_size *= g_variable_domain[var];
            }
            if (prod_size != g_state_registry->size(factor)){
                keep_sg_for_unreachable_symmetric_lstates = true;
            }
        }
        if (precompute_leaf_state_spaces[factor] && !keep_sg_for_unreachable_symmetric_lstates){
            leaf_successor_generators[factor].reset();
        } else {
            all_built = false;
        }
    }
    if (center_action_successor_generator && all_built){
        center_action_successor_generator.reset();
    }

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        leaf_state_id_map[factor] = vector<int>(g_state_registry->size(factor), -1);
        curr_leaf_state_max_id[factor] = 0;
    }

    cout << "done building leaf state spaces [t=" << utils::g_timer() << "]" << endl;
}



unique_ptr<CompliantPathGraph> ExplicitStateCPG::get_init_state_cpg() {
    initialize();

    if (g_factoring->get_search_type() == SAT || g_factoring->get_search_type() == UNSAT){
        return Reachable::get_init_state_cpg();
    } else {
        return Prices::get_init_state_cpg();
    }
}

void ExplicitStateCPG::store_is_leaf_goal_state(const LeafState &state) {
    LeafFactorID factor = state.get_id().get_factor();
    if (!g_goals_per_factor[factor].empty()){
        bool is_goal = true;
        for (size_t g = 0; g < g_goals_per_factor[factor].size(); ++g){
            int var = g_goals_per_factor[factor][g].first;
            int val = g_goals_per_factor[factor][g].second;
            if (state[var] != val){
                is_goal = false;
                break;
            }
        }
        if (is_a_leaf_goal_state[factor].size() <= state.get_id().hash()){
            is_a_leaf_goal_state[factor].resize(state.get_id().hash() + 1, false);
        }
        if (is_goal && store_leaf_goal_states && !is_a_leaf_goal_state[factor][state.get_id().hash()]){
            leaf_goal_states[factor].push_back(state.get_id().hash());
        }
        is_a_leaf_goal_state[factor][state.get_id().hash()] = is_goal;
    }
}

LeafStateHash ExplicitStateCPG::get_leaf_state_hash(const vector<int> &new_leaf_state, LeafFactorID factor) {
    assert(new_leaf_state.size() == g_leaves[factor].size());

    size_t num_leaf_states_before = g_state_registry->size(factor);

    LeafStateHash new_state_id = g_state_registry->get_leaf_state_hash(new_leaf_state, factor);

    if (num_leaf_states_before <= new_state_id){
        // need to construct leaf state space reachable from new leaf state
        assert(leaf_state_id_map[factor].size() <= new_state_id);

        Prices cpg;
        cpg.resize();

        leaf_state_id_map[factor].resize(new_state_id + 1, -1);

        cpg.add_state(new_state_id, factor, 0);

        build_leaf_state_space(cpg, new_state_id, factor, false);
    }

    return new_state_id;
}

int ExplicitStateCPG::get_total_goal_price() const {
    int leaf_goal_cost = 0;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        if (!g_goals_per_factor[factor].empty()){
            if (!goal_reachable(factor)){
                return CompliantPathGraph::INF;
            }
            leaf_goal_cost += get_goal_cost(factor);
        } else if (!g_factoring->is_fork_leaf(factor)) {
            // for non-fork leaves, need to add minimum price of compliant leaf state
            // for fork leaves, the initial leaf state is always compliant at cost 0
            int min_compliant_state_cost = numeric_limits<int>::max();
            size_t num_leaf_states = get_number_states(factor);
            for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
                if (has_leaf_state(id, factor)){
                    min_compliant_state_cost = min(min_compliant_state_cost, get_cost_of_state(id, factor));
                    if (min_compliant_state_cost == 0){
                        break;
                    }
                    if (--num_leaf_states == 0){
                        break;
                    }
                }
            }
            leaf_goal_cost += min_compliant_state_cost;
        }
    }
    return leaf_goal_cost;
}


bool ExplicitStateCPG::is_optimal_leaf_plan(int leaf_part_g) const {
    int sum_goal_cost = leaf_part_g;
    // when using g-value adjustment, part of the leaf goal cost might go into the center g value.
    // also, cost of non-fork non-goal leaves might go into leaf_part_g, which is important to check
    for (LeafFactorID factor(0); factor < min_leaf_goal_cost.size(); ++factor){
        if (!g_goals_per_factor[factor].empty()){
            assert(get_goal_cost(factor) >= 0);
            sum_goal_cost += get_goal_cost(factor);
            if (sum_goal_cost > sum_min_leaf_goal_cost){
                return false;
            }
        } else if (!g_factoring->is_fork_leaf(factor)) {
            // in case of non-fork leaves without goal, we do not know if the current goal is
            // the cheapest possible, unless there is a compliant leaf state with price 0
            // for fork leaves, it is trivially true
            int min_compliant_path_cost = numeric_limits<int>::max();
            size_t num_leaf_states = get_number_states(factor);
            for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
                if (has_leaf_state(id, factor)){
                    assert(get_cost_of_state(id, factor) >= 0);
                    min_compliant_path_cost = min(min_compliant_path_cost, get_cost_of_state(id, factor));
                    if (min_compliant_path_cost == 0){
                        break;
                    }
                    if (--num_leaf_states == 0){
                        break;
                    }
                }
            }
            if (min_compliant_path_cost > 0) {
                return false;
            }
        }
    }
    return true;
}

void ExplicitStateCPG::print_statistics() {
    size_t min_leaf_factor_size = numeric_limits<int>::max();
    double avg_leaf_factor_size = 0;
    size_t max_leaf_factor_size = 0;
    size_t tmp;
    bool precomputed_state_spaces = true;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        tmp = g_state_registry->size(factor);
        min_leaf_factor_size = min(min_leaf_factor_size, tmp);
        avg_leaf_factor_size += tmp;
        max_leaf_factor_size = max(max_leaf_factor_size, tmp);
        if (!precompute_leaf_state_space(factor)){
            precomputed_state_spaces = false;
        }
        cout << "Number of registered leaf states in factor " << factor << ": " << tmp << endl;
    }
    if (!precomputed_state_spaces){
        cout << "min reachable leaf factor size "  << min_leaf_factor_size << endl;
        cout << "avg reachable leaf factor size "  << (int) (avg_leaf_factor_size/g_leaves.size()) << endl;
        cout << "max reachable leaf factor size "  << max_leaf_factor_size << endl;
    }
}

