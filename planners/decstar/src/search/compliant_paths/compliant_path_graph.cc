#include "compliant_path_graph.h"

#include "cpg_storage.h"
#include "explicit_state_cpg.h"
#include "../factoring.h"
#include "../leaf_state_id.h"
#include "../operator.h"
#include "path_price_tag.h"
#include "pruning_options.h"
#include "../search_space.h"
#include "../state.h"
#include "../state_id.h"
#include "symbolic_state_cpg.h"


using namespace std;


bool CompliantPathGraph::initialized = false;

shared_ptr<PruningOptions> CompliantPathGraph::pruning;

vector<int> CompliantPathGraph::min_leaf_goal_cost;

int CompliantPathGraph::sum_min_leaf_goal_cost = 0;

vector<int> CompliantPathGraph::min_leaf_action_cost;

const int CompliantPathGraph::INF = -1;

SearchSpace* CompliantPathGraph::search_space;

OperatorCost CompliantPathGraph::cost_type;

unordered_map<size_t, vector<int>> CompliantPathGraph::non_dominated_states;

unordered_map<size_t, unordered_map<uint64_t, vector<int>>> CompliantPathGraph::duplicate_table;


void CompliantPathGraph::set_cost_type(OperatorCost ct) {
    cost_type = ct;
    min_leaf_action_cost.resize(g_leaves.size(), numeric_limits<int>::max());
    for (const auto &op : g_operators){
        LeafFactorID factor = op.get_affected_factor();
        if (factor != LeafFactorID::CENTER){
            min_leaf_action_cost[factor] = min(min_leaf_action_cost[factor], get_adjusted_action_cost(op, cost_type));
        }
    }
}

void CompliantPathGraph::notify_new_center_state(const GlobalState &state, const CompliantPathGraph &cpg) {
    if (g_symmetry_graph && state.get_id().hash() == 0){
        // need some cleanup for the special case of permuted initial state
        if (pruning->use_exact_duplicate_checking() && duplicate_table[state.get_id().hash()].size() == 1){
            assert(duplicate_table.find(state.get_id().hash()) == duplicate_table.end() ||
                    duplicate_table[state.get_id().hash()].size() == 1);
            duplicate_table.erase(state.get_id().hash());
        } else if (pruning->use_transitivity() && non_dominated_states[state.get_id().hash()].size() == 1){
            assert(non_dominated_states.find(state.get_id().hash()) == non_dominated_states.end() ||
                    non_dominated_states[state.get_id().hash()].size() == 1);
            non_dominated_states.erase(state.get_id().hash());
        }
    }
    if (pruning->use_exact_duplicate_checking()){
        assert(g_symmetry_graph || duplicate_table.find(state.get_id().hash()) == duplicate_table.end());
        assert(!g_symmetry_graph || duplicate_table[state.get_id().hash()].size() == 0);
        duplicate_table[state.get_id().hash()][cpg.get_hash()].push_back(0);
    } else if (pruning->use_transitivity()){
        assert(g_symmetry_graph || non_dominated_states.find(state.get_id().hash()) == non_dominated_states.end());
        assert(!g_symmetry_graph || non_dominated_states[state.get_id().hash()].size() == 0);
        non_dominated_states[state.get_id().hash()].push_back(0);
    }
}

pair<int, bool> CompliantPathGraph::check_dominance(const GlobalState &base_state,
                                                    int curr_number_duplicates,
                                                    const GlobalState &predecessor,
                                                    const Operator &op) {

    int new_g = search_space->get_node(predecessor).get_g() + get_adjusted_action_cost(op, cost_type) + g_inc_g_by;

#ifdef DEBUG_PRUNING
    cout << "start checking duplicates for state " << base_state.get_id() << ", g = " << new_g << endl;
    dump();
#endif

    vector<size_t> predecessors;

    if (g_factoring->get_search_type() != DECOUPLED_SEARCH_TYPE::SAT
            && g_factoring->get_search_type() != DECOUPLED_SEARCH_TYPE::UNSAT){
        StateID curr_id = predecessor.get_id();
        while (curr_id.hash() != 0){
            assert(find(predecessors.begin(), predecessors.end(), curr_id.hash()) == predecessors.end());
            predecessors.push_back(curr_id.hash());
            curr_id = search_space->get_node(g_state_registry->lookup_state(curr_id)).get_parent_state_id();
        }
        predecessors.push_back(0); // initial state always has StateID 0
    }

    int replaced_state_dup = -1;

    size_t base_state_id_hash = base_state.get_id().hash();
    uint64_t leaf_hash = 0;
    bool check_all = true;

    vector<int> dup_state_indeces;

    if (pruning->use_exact_duplicate_checking()){
        leaf_hash = get_hash();
        assert(duplicate_table.find(base_state_id_hash) != duplicate_table.end());
        const auto it = duplicate_table[base_state_id_hash].find(leaf_hash);
        if (it != duplicate_table[base_state_id_hash].end()){
            dup_state_indeces = it->second;
        }
        check_all = false;
    } else if (pruning->use_transitivity()){
        const auto it = non_dominated_states.find(base_state_id_hash);
        assert(it != non_dominated_states.end());
        dup_state_indeces = it->second;
        check_all = false;
    }

    if (check_all){
        dup_state_indeces.reserve(curr_number_duplicates + 1);
        for (int dup = 0; dup <= curr_number_duplicates; ++dup){
            dup_state_indeces.push_back(dup);
        }
    }

    for (int dup : dup_state_indeces){
        // check the price tags of all equal center states

#ifdef DEBUG_PRUNING
        cout << "current dup counter " << dup << endl;
#endif

        // get other state
        const GlobalState s = g_state_registry->get_decoupled_state(base_state, dup);

#ifdef DEBUG_PRUNING
        cout << "compare to state " << s.get_id() << ", g = " << search_space->get_node(s).get_g() << endl;
        CPGStorage::storage->get_cpg(s)->dump();
#endif


        if (g_factoring->get_search_type() == SAT || g_factoring->get_search_type() == UNSAT){
            // for non-optimal planning, we prune a state if it is dominated or equal to an existing one,
            // ignoring the g-values; we need to pay attention to properly handle dominated states with
            // lower g-value, though

            DOMINANCE res = check_dominance(s);

            if (res == DOMINANCE::EQUAL || res == DOMINANCE::DOMINATED){
                int old_g = search_space->get_node(s).get_g();
                if (new_g < old_g){
                    // otherwise, that existing state would be reopened, depending on the search engine
                    PruningOptions::set_ignore_current_state();
                }
                return {dup, false};
            } else if (res == DOMINANCE::DOMINATES){
                // set dominated nodes to closed
                SearchNode node = search_space->get_node(s);
                if (node.is_open()){
                    node.close();
                }
                if (pruning->use_transitivity()){
                    // no need to check against this state later on; the new state dominates it,
                    // so checking against the new one is sufficient
                    const auto it = find(non_dominated_states[base_state_id_hash].begin(),
                                         non_dominated_states[base_state_id_hash].end(),
                                         dup);
                    assert(it != non_dominated_states[base_state_id_hash].end());
                    non_dominated_states[base_state_id_hash].erase(it);
                }
            }

        } else {

            // pruning for optimal search

            int old_g = search_space->get_node(s).get_g();

            if (find(predecessors.begin(), predecessors.end(), s.get_id().hash()) == predecessors.end()){
                // we need the distinction between g-values here, to mimic the behaviour of A*
                // TODO we could improve pruning power by e.g. allowing states with higher g-value
                // to dominate existing states, but this requires an explicit way to tell the search
                // engine what to do with the current state, independent of its g value.
                if (new_g >= old_g){

                    DOMINANCE needed = DOMINANCE::NONE;
                    if (new_g > old_g && !pruning->include_g_in_dominance()){
                        // if g-values are equal, or if we take into account the g-difference in
                        // the dominance check, dominance in both directions is useful;
                        // otherwise, we can only do something if the new state is dominated/equal
                        needed = DOMINANCE::DOMINATED;
                    }

                    DOMINANCE res = check_dominance(s, old_g - new_g, needed);

                    if (res == DOMINANCE::DOMINATED || res == DOMINANCE::EQUAL){
                        // current state is dominated by or equal to a previously generated state
                        return {dup, false};
                    } else if ((new_g == old_g || pruning->include_g_in_dominance()) && res == DOMINANCE::DOMINATES){
                        // close dominated states if they are not parent of current state
                        // cannot do anything else; search does not reopen nodes with higher g
                        SearchNode node = search_space->get_node(s);
                        if (node.is_open()){
                            node.close();
                        }
                        if (pruning->use_transitivity()){
                            const auto it = find(non_dominated_states[base_state_id_hash].begin(),
                                    non_dominated_states[base_state_id_hash].end(),
                                    dup);
                            assert(it != non_dominated_states[base_state_id_hash].end());
                            non_dominated_states[base_state_id_hash].erase(it);
                        }
                    }

                } else if (new_g < old_g) {

                    DOMINANCE needed = DOMINANCE::NONE;
                    if (!pruning->include_g_in_dominance()){
                        // if we take into account the g-difference in
                        // the dominance check, dominance in both directions is useful;
                        // otherwise, we can only do something if the new state dominates/is equal
                        needed = DOMINANCE::DOMINATES;
                    }

                    DOMINANCE res = check_dominance(s, old_g - new_g, needed);

                    if (res == DOMINANCE::EQUAL || res == DOMINANCE::DOMINATES){
                        // state will replace old state in search
                        // need to set h dirty so the search evaluates the heuristic on the
                        // new state, which can result in lower h value
                        // TODO setting h dirty is probably just needed when the new state dominates the old one
                        search_space->get_node(s).set_h_dirty();
                        return {dup, true};
                    } else if (pruning->include_g_in_dominance() && res == DOMINANCE::DOMINATED){
                        // treat as duplicate, need to tell search to not reopen/update parent
                        PruningOptions::set_ignore_current_state();
                        return {dup, false};
                    }

                }

            } else {
                // current state is successor of the state compared to, so can only be
                // pruned if it is dominated by/equal to its predecessor
                assert(new_g >= old_g);

                DOMINANCE res = check_dominance(s, old_g - new_g, DOMINANCE::DOMINATED);

                if (res == DOMINANCE::DOMINATED || res == DOMINANCE::EQUAL){
                    return {dup, false};
                }
            }
        }
    }
    if (replaced_state_dup != -1){
        return {replaced_state_dup, false};
    } else {
        if (pruning->use_hypercube_pruning()){
            if (is_hypercube_covered(base_state, curr_number_duplicates)){
                PruningOptions::set_ignore_current_state();
                return {0, false};
            }
        }
        if (pruning->use_exact_duplicate_checking()){
            duplicate_table[base_state_id_hash][leaf_hash].push_back(curr_number_duplicates + 1);
        } else if (pruning->use_transitivity()){
            non_dominated_states[base_state_id_hash].push_back(curr_number_duplicates + 1);
        }
        return {curr_number_duplicates + 1, false};
    }
}

void CompliantPathGraph::fill_in_leaf_actions(std::vector<OperatorID> &ops, std::vector<StateID> &states) {
    if (g_factoring->get_leaf_representation_type() == LEAF_REPRESENTATION_TYPE::EXPLICIT){
        return PathPrices::fill_in_leaf_actions(ops, states);
    } else {
        return SymbolicStateCPG::fill_in_leaf_actions(ops, states);
    }
}

int CompliantPathGraph::get_min_leaf_goal_cost(LeafFactorID factor) {
    return min_leaf_goal_cost[factor];
}

int CompliantPathGraph::get_min_leaf_goal_cost() {
    return sum_min_leaf_goal_cost;
}

void CompliantPathGraph::initialize() {
    if (!initialized){
        pruning->verify_options();
        CPGStorage::initialize(*pruning);
        initialized = true;
    }
}

unique_ptr<CompliantPathGraph> CompliantPathGraph::get_init_state_cpg() {
    initialize();

    if (g_factoring->get_leaf_representation_type() == LEAF_REPRESENTATION_TYPE::EXPLICIT){
        return ExplicitStateCPG::get_init_state_cpg();
    } else {
        return SymbolicStateCPG::get_init_state_cpg();
    }
}

void CompliantPathGraph::print_statistics() {
    g_state_registry->print_decoupled_search_statistics();
    if (g_factoring->get_leaf_representation_type() == LEAF_REPRESENTATION_TYPE::EXPLICIT){
        return PathPrices::print_statistics();
    } else {
        return SymbolicStateCPG::print_statistics();
    }
}

