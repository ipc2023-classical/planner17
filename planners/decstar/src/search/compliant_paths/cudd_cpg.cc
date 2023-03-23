#include "cudd_cpg.h"

#include "../factoring.h"
#include "../leaf_state_id.h"
#include "../operator.h"
#include "../state.h"
#include "../symbolic/sym_decoupled_manager.h"
#include "../symbolic/sym_pricing_function.h"
#include "../symbolic/sym_pricing_function_debug.h"
#include "../symbolic/sym_pricing_function_sat.h"

#include <functional>

using namespace std;
using namespace symbolic;


template<class T>
bool CuddCPG<T>::initialized = false;

template<class T>
Storage<CuddCPG<T>>* CuddCPG<T>::cpg_storage;

template<class T>
unique_ptr<SymDecoupledManager<T>> CuddCPG<T>::sym_manager;


template<class T>
CuddCPG<T>::CuddCPG(const CuddCPG<T> &other) {
    sym_leaf_info = other.sym_leaf_info;
}

template<class T>
CuddCPG<T>& CuddCPG<T>::operator=(CuddCPG<T> &&other) {
    sym_leaf_info = move(other.sym_leaf_info);
    return *this;
}

template<class T>
unique_ptr<CompliantPathGraph> CuddCPG<T>::get_init_state_cpg() {
    initialize();

    CuddCPG<T> *cpg = new CuddCPG<T>();

    cpg->sym_leaf_info.reserve(g_leaves.size());

    const GlobalState init_center_state = g_state_registry->get_center_state(g_initial_state_data);

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        cpg->sym_leaf_info.push_back(sym_manager->get_initial_state_prices(factor, init_center_state));
    }

    return unique_ptr<CompliantPathGraph>(cpg);
}

template<class T>
void CuddCPG<T>::set_sym_manager(const symbolic::SymDecoupledManagerOptions &options) {
    sym_manager.reset(new SymDecoupledManager<T>(options));
}

template<class T>
void CuddCPG<T>::initialize() {
    if (!initialized){
        if (!sym_manager){
            // no options specified via command line => take default options
            set_sym_manager(SymDecoupledManagerOptions());
        }
        sym_manager->initialize(cost_type);
        initialized = true;
    }
}

template<class T>
void CuddCPG<T>::set_min_leaf_goal_cost(LeafFactorID factor, int cost) {
    if (min_leaf_goal_cost.empty()){
        min_leaf_goal_cost.resize(g_leaves.size(), 0);
    }
    min_leaf_goal_cost[factor] = cost;
}

template<class T>
void CuddCPG<T>::set_min_leaf_goal_cost(int cost) {
    sum_min_leaf_goal_cost = cost;
}

template<class T>
unique_ptr<CompliantPathGraph> CuddCPG<T>::get_successor_via_center_action(const GlobalState &new_center, const Operator &op) const {
    CuddCPG<T> *cpg = new CuddCPG<T>();

    cpg->sym_leaf_info.reserve(g_leaves.size());

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        cpg->sym_leaf_info.push_back(
                sym_manager->update_prices_via_propagation(
                        sym_manager->update_prices_via_operator(sym_leaf_info[factor],
                                factor,
                                op),
                                factor,
                                new_center));
    }

    return unique_ptr<CompliantPathGraph>(cpg);
}

template<class T>
DOMINANCE CuddCPG<T>::check_dominance(const GlobalState &other, int /*g_advantage*/, DOMINANCE needed) {
    // TODO incorporate g_advantage
    // TODO implement better exact duplicate checking

    const auto &other_cpg = cpg_storage->cpgs[other];

    bool dominates = true, dominated = true;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){

        dominates = dominates && sym_leaf_info[factor]->dominates(*(other_cpg.sym_leaf_info[factor]));
        dominated = dominated && other_cpg.sym_leaf_info[factor]->dominates(*(sym_leaf_info[factor]));

        if (!dominates && needed == DOMINANCE::DOMINATES){
            return DOMINANCE::NONE;
        }
        if (!dominated && needed == DOMINANCE::DOMINATED){
            return DOMINANCE::NONE;
        }
    }

    if (dominated && dominates){
        return DOMINANCE::EQUAL;
    } else if (pruning->use_exact_duplicate_checking()){
        return DOMINANCE::NONE;
    } else if (dominated){
        return DOMINANCE::DOMINATED;
    } else if (dominates){
        return DOMINANCE::DOMINATES;
    }
    return DOMINANCE::NONE;
}

template<class T>
void CuddCPG<T>::store_new_cpg(const GlobalState &state) {
    cpg_storage->store_cpg(state, *this);
}

template<class T>
bool CuddCPG<T>::is_hypercube_covered(const GlobalState &, int ) const {
    // TODO implement this
    cerr << "hypercube pruning for symbolic leaf representation not yet implemented" << endl;
    exit_with(utils::ExitCode::SEARCH_UNSUPPORTED);
    return false;
}

template<class T>
void CuddCPG<T>::populate_reached_leaf_facts(function<void(int, int)> f) const {
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        sym_manager->populate_reached_leaf_facts(*(sym_leaf_info[factor]), f);
    }
}

template<class T>
void CuddCPG<T>::populate_cost_of_leaf_facts(function<void(int, int, int)> f) const {
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        sym_manager->populate_cost_of_leaf_facts(*(sym_leaf_info[factor]), f);
    }
}

template<class T>
bool CuddCPG<T>::goal_reachable(LeafFactorID factor) const {
    assert(factor < sym_leaf_info.size() && sym_leaf_info[factor]);
    return sym_leaf_info[factor]->get_goal_cost() != INF;
}

template<class T>
int CuddCPG<T>::get_goal_cost(LeafFactorID factor) const {
    assert(factor < sym_leaf_info.size() && sym_leaf_info[factor]);
    return sym_leaf_info[factor]->get_goal_cost();
}

template<class T>
bool CuddCPG<T>::is_applicable(const Operator &op) const {
    return sym_manager->is_applicable(op, sym_leaf_info);
}

template<class T>
void CuddCPG<T>::remove_inapplicable_ops(vector<OperatorID> &ops) const {
    ops.erase(remove_if(ops.begin(),
            ops.end(),
            [&](OperatorID id){
        return !is_applicable(g_operators[id]);
    }),
            ops.end());
}

template<>
int CuddCPG<symbolic::SymPricingFunction>::get_total_goal_price() const {
    int goal_price = 0;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        if (g_goals_per_factor[factor].empty()){
            if (!g_factoring->is_fork_leaf(factor)){
                goal_price += sym_leaf_info[factor]->get_min_price();
            }
        } else {
            if (!goal_reachable(factor)){
                return CompliantPathGraph::INF;
            }
            goal_price += sym_leaf_info[factor]->get_goal_cost();
        }
    }
    return goal_price;
}

template<class T>
int CuddCPG<T>::get_total_goal_price() const {
    int goal_price = 0;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        if (g_goals_per_factor[factor].empty()){
            if (!g_factoring->is_fork_leaf(factor)){
                // TODO the price could as well be 0; compare to Reachable
                goal_price += CompliantPathGraph::min_leaf_action_cost[factor];
            }
        } else {
            if (!goal_reachable(factor)){
                return CompliantPathGraph::INF;
            }
            goal_price += sym_leaf_info[factor]->get_goal_cost();
        }
    }
    return goal_price;
}

template<>
bool CuddCPG<symbolic::SymPricingFunction>::is_optimal_leaf_plan(int leaf_part_g) const {
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
            if (sym_leaf_info[factor]->get_min_price() > 0) {
                return false;
            }
        }
    }
    return true;
}

template<class T>
bool CuddCPG<T>::is_optimal_leaf_plan(int ) const {
    // for non-optimal planning, this should never be called by the SearchEngine
    assert(false);
    return true;
}

template<class T>
uint64_t CuddCPG<T>::get_hash() const {
    // TODO
    cerr << "CuddCPG<T>::get_hash() not yet implemented" << endl;
    exit_with(utils::ExitCode::SEARCH_UNSUPPORTED);
    return 0;
}

template<class T>
void CuddCPG<T>::dump() const {
    // TODO add some more info
    // TODO: could use stateCount in LeafStateSpace
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        cout << "factor " << factor << " goal_cost = " << get_goal_cost(factor) << endl;
    }
}

template<class T>
size_t CuddCPG<T>::get_memory_footprint() const {
    // TODO double-check that this does make some sense
    size_t num_bytes = 0;
    for (const shared_ptr<T> &leaf : sym_leaf_info){
        num_bytes += sizeof(*leaf);
    }
    return num_bytes;
}

template<class T>
void CuddCPG<T>::fill_in_leaf_actions(vector<OperatorID> &center_path, vector<StateID> &states) {

    reverse(center_path.begin(), center_path.end());
    reverse(states.begin(), states.end());

    vector<vector<OperatorID>> leaf_paths(center_path.size() + 1);
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        sym_manager->get_leaf_compliant_plan(states, center_path, factor, leaf_paths);
    }

    vector<OperatorID> plan = leaf_paths[0];
    for (size_t i = 0; i < center_path.size(); ++i){
        plan.push_back(center_path[i]);
        plan.insert(plan.end(), leaf_paths[i+1].begin(), leaf_paths[i+1].end());
    }

    reverse(plan.begin(), plan.end());

    center_path.swap(plan);
}

template<class T>
void CuddCPG<T>::print_statistics() {
    // TODO: could use stateCount in LeafStateSpace
    cout << "TODO: print statistics in CuddCPG" << endl;
}

template<class T>
void CuddCPG<T>::register_cpg_storage(Storage<CuddCPG<T>> *storage) {
    cpg_storage = storage;
}

template class CuddCPG<SymPricingFunction>;
template class CuddCPG<SymPricingFunctionDebug>;
template class CuddCPG<SymPricingFunctionSAT>;
