#include "state_registry.h"

#include "axioms.h"
#include "compliant_paths/cpg_storage.h"
#include "compliant_paths/compliant_path_graph.h"
#include "compliant_paths/explicit_state_cpg.h"
#include "factoring.h"
#include "operator.h"
#include "search_engine.h"
#include "symmetries/graph_creator.h"
#include "symmetries/symmetry_cpg.h"

#include <limits>
#include <cstdint>

using namespace std;

StateRegistry::StateRegistry()
    : dominance_pruning_timer(0.0),
      state_data_pool(g_state_packer->get_num_bins()),
      leaf_state_data_pool(vector<segmented_vector::SegmentedArrayVector<PackedStateBin>* >
                                (g_factoring ? g_leaves.size() : 0, 0)),
      registered_states(0,
                        StateIDSemanticHash(state_data_pool, g_state_packer->get_num_bins()),
                        StateIDSemanticEqual(state_data_pool, g_state_packer->get_num_bins())),
      registered_leaf_states(vector<LeafStateIDSet>(g_factoring ? g_leaves.size() : 0,
                             LeafStateIDSet(0, LeafStateIDSemanticHash(leaf_state_data_pool),
                                                LeafStateIDSemanticEqual(leaf_state_data_pool)))),
      cached_initial_state(0) {
    if (g_factoring){
        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
            leaf_state_data_pool[factor] = new segmented_vector::SegmentedArrayVector<PackedStateBin>
                                        (g_leaf_state_packers[factor]->get_num_bins());
        }
    }
}

StateRegistry::~StateRegistry() {
    for (set<PerStateInformationBase *>::iterator it = subscribers.begin();
         it != subscribers.end(); ++it) {
        (*it)->remove_state_registry(this);
    }
    delete cached_initial_state;
    if (g_factoring){
        for (size_t i = 0; i < g_leaves.size(); i++){
            delete leaf_state_data_pool[i];
        }
    }
}

StateID StateRegistry::insert_id_or_pop_state() {
    /*
      Attempt to insert a StateID for the last state of state_data_pool
      if none is present yet. If this fails (another entry for this state
      is present), we have to remove the duplicate entry from the
      state data pool.
    */
    StateID id(state_data_pool.size() - 1);
    pair<StateIDSet::iterator, bool> result = registered_states.insert(id);
    if (!result.second) {
        // is known state
        state_data_pool.pop_back();
    }
    assert(registered_states.size() == state_data_pool.size());
    return *result.first;
}

LeafStateHash StateRegistry::insert_id_or_pop_leaf_state(LeafFactorID factor) {
    /*
      Attempt to insert a LeafStateID for the last state of leaf_factor_data_pool
      if none is present yet. If this fails (another entry for this state
      is present), we have to remove the duplicate entry from the
      state data pool.
    */
    LeafStateID id(LeafStateHash(leaf_state_data_pool[factor]->size() - 1), factor);
    assert(id.value < LeafStateHash::MAX);
    pair<LeafStateIDSet::iterator, bool> result = registered_leaf_states[factor].insert(id);
    if (!result.second) {
        // is known leaf state
        leaf_state_data_pool[factor]->pop_back();
    }
    assert(registered_leaf_states[factor].size() == leaf_state_data_pool[factor]->size());
    return result.first->value;
}

GlobalState StateRegistry::lookup_state(StateID id) const {
    return GlobalState(state_data_pool[id.value], *this, id);
}

LeafState StateRegistry::lookup_leaf_state(LeafStateHash id, LeafFactorID factor) const {
    return LeafState((*leaf_state_data_pool[factor])[id], LeafStateID(id, factor));
}

const GlobalState &StateRegistry::get_initial_state() {
    if (cached_initial_state == 0) {
        
        unique_ptr<PackedStateBin[]> center_buffer(new PackedStateBin[g_state_packer->get_num_bins()]);
        fill_n(center_buffer.get(), g_state_packer->get_num_bins(), 0);

        vector<unique_ptr<PackedStateBin[]>> leaf_buffers;
        
        if (g_factoring){
            leaf_buffers.resize(g_leaves.size());
            for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
                leaf_buffers[factor].reset(new PackedStateBin[g_leaf_state_packers[factor]->get_num_bins()]);
                fill_n(leaf_buffers[factor].get(), g_leaf_state_packers[factor]->get_num_bins(), 0);
            }
            g_state_packer->set(center_buffer.get(), g_center.size(), 0);
        }

        for (size_t var = 0; var < g_initial_state_data.size(); ++var) {
            if (g_factoring){
                if (g_belongs_to_factor[var] == LeafFactorID::CENTER){
                    g_state_packer->set(center_buffer.get(), g_new_index[var], g_initial_state_data[var]);
                } else {
                    g_leaf_state_packers[g_belongs_to_factor[var]]->set(leaf_buffers[g_belongs_to_factor[var]].get(),
                            g_new_index[var],
                            g_initial_state_data[var]);
                }
            } else {
                g_state_packer->set(center_buffer.get(), var, g_initial_state_data[var]);
            }
        }

        if (!g_factoring){
            g_axiom_evaluator->evaluate(center_buffer.get());
        }
        
        state_data_pool.push_back(center_buffer.get());

        StateID id = insert_id_or_pop_state();
        cached_initial_state = new GlobalState(lookup_state(id));

        if (g_factoring){
            for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
                leaf_state_data_pool[factor]->push_back(leaf_buffers[factor].get());
                insert_id_or_pop_leaf_state(factor);
            }

            unique_ptr<CompliantPathGraph> init_state_cpg = CompliantPathGraph::get_init_state_cpg();

            CompliantPathGraph::notify_new_center_state(*cached_initial_state, *init_state_cpg);

            init_state_cpg->store_new_cpg(*cached_initial_state);

            state_duplicate_counter[0] = 0;
        }

#ifdef DEBUG_SEARCH
        cout << "dump init state StateRegistry" << endl;
        cached_initial_state->dump_pddl();
#endif
    }
    return *cached_initial_state;
}

void StateRegistry::permute_initial_state() {
    // TODO refactor this... what about having a decoupled state registry?
    if (g_factoring){
        // TODO this is really ugly!
        symmetries::SymmetryCPG *cpg = dynamic_cast<const symmetries::SymmetryCPG*>(CPGStorage::storage->get_cpg(*cached_initial_state))->get_init_sym_cpg();
        const vector<int> &new_center = g_symmetry_graph->get_canonical_decoupled_state(*cached_initial_state, *cpg);

        assert(new_center.size() == g_variable_domain.size());// TODO this is quite ugly, but easier for using the symmetry code

        bool changed = false;
        for (int var : g_center){
            if ((*cached_initial_state)[var] != new_center[var]){
                changed = true;
                break;
            }
        }

        if (changed){
            registered_states.erase(cached_initial_state->get_id());

            PackedStateBin *sym_buffer = state_data_pool[state_data_pool.size() - 1];
            for (size_t var = 0; var < g_center.size(); ++var){
                g_state_packer->set(sym_buffer, var, new_center[g_center[var]]);
            }
            g_state_packer->set(sym_buffer, g_center.size(), 0);

            StateID id = insert_id_or_pop_state();
            assert(id.hash() == 0);

            delete cached_initial_state;
            cached_initial_state = new GlobalState(lookup_state(id));
        }
        CompliantPathGraph::notify_new_center_state(*cached_initial_state, *CPGStorage::storage->get_cpg(*cached_initial_state));
    } else {
        const vector<int> &new_state = g_symmetry_graph->get_canonical_state(*cached_initial_state);

        bool changed = false;
        for (size_t var = 0; var < g_variable_domain.size(); ++var){
            if ((*cached_initial_state)[var] != new_state[var]){
                changed = true;
                break;
            }
        }

        if (changed){
            registered_states.erase(cached_initial_state->get_id());

            PackedStateBin *sym_buffer = state_data_pool[state_data_pool.size() - 1];
            for (size_t var = 0; var < g_variable_domain.size(); ++var){
                g_state_packer->set(sym_buffer, var, new_state[var]);
            }

            StateID id = insert_id_or_pop_state();

            delete cached_initial_state;
            cached_initial_state = new GlobalState(lookup_state(id));
        }
    }
}

GlobalState StateRegistry::get_state_permutation(const GlobalState &state, const symmetries::Permutation &permutation) {
    assert(g_symmetry_graph);
    assert(!g_factoring);

    vector<int> permuted(g_variable_domain.size(), -1);
    permutation.permute_state(state, permuted);

    state_data_pool.push_back(state.get_packed_buffer());
    PackedStateBin *buffer = state_data_pool[state_data_pool.size() - 1];

    for (size_t var = 0; var < permuted.size(); ++var) {
        g_state_packer->set(buffer, var, permuted[var]);
    }

    StateID id = insert_id_or_pop_state();
    return lookup_state(id);
}

GlobalState StateRegistry::get_decoupled_state_permutation(const GlobalState &state,
        symmetries::SymmetryCPG &cpg,
        const symmetries::DecoupledPermutation &permutation) {
    vector<int> permuted(g_variable_domain.size(), -1);
    for (int var : g_center){
        permuted[var] = state[var];
    }
    permutation.permute_decoupled_state(permuted, cpg);

    state_data_pool.push_back(state.get_packed_buffer());
    PackedStateBin *buffer = state_data_pool[state_data_pool.size() - 1];

    for (size_t var = 0; var < g_center.size(); ++var) {
        g_state_packer->set(buffer, var, permuted[g_center[var]]);
    }
    g_state_packer->set(buffer, g_center.size(), 0);

    return lookup_state(insert_id_or_pop_state());
}

//TODO it would be nice to move the actual state creation (and operator application)
//     out of the StateRegistry. This could for example be done by global functions
//     operating on state buffers (PackedStateBin *).
GlobalState StateRegistry::get_successor_state(const GlobalState &predecessor, const Operator &op, bool compute_canonical) {
    g_inc_g_by = 0;

    assert(!g_factoring || op.get_affected_factor() == LeafFactorID::CENTER);
    assert(op.is_applicable(predecessor));

    assert(!op.is_axiom());

    state_data_pool.push_back(predecessor.get_packed_buffer());
    PackedStateBin *buffer = state_data_pool[state_data_pool.size() - 1];

#ifdef DEBUG_SEARCH
    cout << "################ applying " << op.get_name() << " in state " << predecessor.get_id() << endl;
    predecessor.dump_pddl();
    const PriceTag &r = g_price_tags[predecessor];
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        cout << "#states in leaf factor " << factor << ": " << r.get_number_states(factor) << endl;
        for (LeafStateHash id(0); id < size(factor); ++id){
            if (r.has_leaf_state(id, factor)){
                lookup_leaf_state(id, factor).dump_pddl();
            }
        }
    }
#endif

    if (!g_factoring) {
        for (size_t i = 0; i < op.get_effects().size(); ++i) {
            const Effect &effect = op.get_effects()[i];
            if (effect.does_fire(predecessor)){
                g_state_packer->set(buffer, effect.var, effect.val);
            }
        }
        g_axiom_evaluator->evaluate(buffer);
    } else {
        for (const Effect &eff : op.get_effects(LeafFactorID::CENTER)){
            // no need to check does_fire here, because no conditional effects allowed (yet)
            g_state_packer->set(buffer, g_new_index[eff.var], eff.val);
        }
        g_state_packer->set(buffer, g_center.size(), 0);
    }

    StateID id = insert_id_or_pop_state();

    if (g_factoring){
        GlobalState s = lookup_state(id);

        int old_dup_counter = -1;
        DupCounterTable::iterator pos = state_duplicate_counter.find(id.hash());
        if (pos != state_duplicate_counter.end()){
            old_dup_counter = pos->second;
        }

        PruningOptions::reset_ignore_current_state();

        unique_ptr<CompliantPathGraph> new_cpg = CPGStorage::storage->get_cpg(predecessor)->get_successor_via_center_action(s, op);

        if (g_symmetry_graph && compute_canonical){
            const vector<int> &new_center = g_symmetry_graph->get_canonical_decoupled_state(s, dynamic_cast<symmetries::SymmetryCPG &>(*new_cpg));

            bool changed = false;
            for (int var : g_center){
                if (s[var] != new_center[var]){
                    changed = true;
                    break;
                }
            }

            if (changed){
                if (old_dup_counter != -1){
                    // remove the newly added state if we do not need it later
                    state_data_pool.push_back(predecessor.get_packed_buffer());
                } else {
                    registered_states.erase(id);
                }

                PackedStateBin *sym_buffer = state_data_pool[state_data_pool.size() - 1];
                for (size_t var = 0; var < g_center.size(); ++var){
                    g_state_packer->set(sym_buffer, var, new_center[g_center[var]]);
                }
                g_state_packer->set(sym_buffer, g_center.size(), 0);

                id = insert_id_or_pop_state();
                s = lookup_state(id);

                old_dup_counter = -1;
                DupCounterTable::iterator pos = state_duplicate_counter.find(id.hash());
                if (pos != state_duplicate_counter.end()){
                    old_dup_counter = pos->second;
                }
            }
        }

        if (old_dup_counter == -1){ // is new center state
            CompliantPathGraph::notify_new_center_state(s, *new_cpg);
            new_cpg->store_new_cpg(s);
            state_duplicate_counter[id.hash()] = 0;
        } else {
            auto start = std::chrono::high_resolution_clock::now();
            auto [new_dup_counter, replace_old_cpg] = new_cpg->check_dominance(s, old_dup_counter, predecessor, op);
            dominance_pruning_timer += std::chrono::high_resolution_clock::now() - start;
            if (new_dup_counter >= MAX_DUPLICATE_COUNTER){
                cerr << "Maximum number of decoupled states with the same center exceeded (" << MAX_DUPLICATE_COUNTER << "). Need to increase MAX_DUPLICATE_COUNTER in globals.cc and recompile [t=" << utils::g_timer << "]" << endl;
                exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
            }

            state_data_pool.push_back(s.get_packed_buffer());
            buffer = state_data_pool[state_data_pool.size() - 1];
            g_state_packer->set(buffer, g_center.size(), new_dup_counter);

            size_t base_state_id = id.hash();

            id = insert_id_or_pop_state();
            s = lookup_state(id);

            if (new_dup_counter > old_dup_counter){
                // is a new decoupled state
                state_duplicate_counter[base_state_id] = new_dup_counter;
            }

            if (new_dup_counter > old_dup_counter || replace_old_cpg){
                // new decoupled state, or new decoupled state dominates an existing one => replace cpg
                new_cpg->store_new_cpg(s);
            }
        }

#ifdef DEBUG_SEARCH
        cout << "created state " << id << endl;
        s.dump_pddl();
        const PriceTag &r = g_price_tags[s];
        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
            cout << "#states in leaf factor " << factor << ": " << r.get_number_states(factor) << endl;
            for (LeafStateHash id(0); id < size(factor); ++id){
                if (r.has_leaf_state(id, factor)){
                    lookup_leaf_state(id, factor).dump_pddl();
                }
            }
        }
#endif
        return s;
    } else if (g_symmetry_graph && compute_canonical){
        GlobalState s = lookup_state(id);

        const vector<int> &new_state = g_symmetry_graph->get_canonical_state(s);

        bool changed = false;
        for (size_t var = 0; var < g_variable_domain.size(); ++var){
            if (s[var] != new_state[var]){
                changed = true;
                break;
            }
        }

        if (changed){
            if (id.hash() + 1 != state_data_pool.size()){
                state_data_pool.push_back(s.get_packed_buffer());
            } else {
                registered_states.erase(id);
            }

            PackedStateBin *sym_buffer = state_data_pool[state_data_pool.size() - 1];
            for (size_t var = 0; var < g_variable_domain.size(); ++var){
                g_state_packer->set(sym_buffer, var, new_state[var]);
            }

            id = insert_id_or_pop_state();
        }
    }
    return lookup_state(id);
}

GlobalState StateRegistry::get_state(const vector<int> &facts) {
    assert(facts.size() == g_variable_domain.size());

    state_data_pool.push_back(cached_initial_state->get_packed_buffer());
    PackedStateBin *buffer = state_data_pool[state_data_pool.size() - 1];

    for (size_t var = 0; var < g_variable_domain.size(); ++var) {
        g_state_packer->set(buffer, var, facts[var]);
    }

    StateID id = insert_id_or_pop_state();
    return lookup_state(id);
}

GlobalState StateRegistry::get_center_state(const vector<int> &facts) {
    assert(facts.size() == g_variable_domain.size());// TODO this is quite ugly, but easier for using the symmetry code

    state_data_pool.push_back(cached_initial_state->get_packed_buffer());
    PackedStateBin *buffer = state_data_pool[state_data_pool.size() - 1];

    for (size_t var = 0; var < g_center.size(); ++var) {
        g_state_packer->set(buffer, var, facts[g_center[var]]);
    }
    g_state_packer->set(buffer, g_center.size(), 0);

    StateID id = insert_id_or_pop_state();
    return lookup_state(id);
}

GlobalState StateRegistry::get_decoupled_state(const GlobalState &base_state, int dup_counter) {
    assert(dup_counter >= 0);
    assert(dup_counter < MAX_DUPLICATE_COUNTER);

    state_data_pool.push_back(base_state.get_packed_buffer());
    PackedStateBin *buffer = state_data_pool[state_data_pool.size() - 1];

    g_state_packer->set(buffer, g_center.size(), dup_counter);

    StateID id = insert_id_or_pop_state();

    return lookup_state(id);
}

GlobalState StateRegistry::get_center_successor(const GlobalState &center, const Operator& op) {
    state_data_pool.push_back(center.get_packed_buffer());
    PackedStateBin *buffer = state_data_pool[state_data_pool.size() - 1];

    for (const Effect &eff : op.get_effects(LeafFactorID::CENTER)){
        // no need to check does_fire here, because no conditional effects allowed (yet)
        g_state_packer->set(buffer, g_new_index[eff.var], eff.val);
    }
    g_state_packer->set(buffer, g_center.size(), 0);

    StateID id = insert_id_or_pop_state();
    return lookup_state(id);
}

LeafStateHash StateRegistry::get_successor_leaf_state_hash(const LeafState &predecessor, const Operator &op) {
    assert(!op.is_axiom());

    LeafFactorID factor = predecessor.get_id().get_factor();

    leaf_state_data_pool[factor]->push_back(predecessor.get_packed_buffer());
    PackedStateBin *buffer = (*leaf_state_data_pool[factor])[leaf_state_data_pool[factor]->size() - 1];

    for (const Effect &eff : op.get_effects(factor)){
        // no need to check does_fire here, because no conditional effects allowed (yet)
        g_leaf_state_packers[factor]->set(buffer, g_new_index[eff.var], eff.val);
    }

    // not supported (yet)
    // g_axiom_evaluator->evaluate(buffer);

    return insert_id_or_pop_leaf_state(factor);
}

LeafStateHash StateRegistry::get_leaf_state_hash(const vector<int> &facts, LeafFactorID factor) {
    assert(g_leaves[factor].size() == facts.size());

    leaf_state_data_pool[factor]->push_back((*leaf_state_data_pool[factor])[0]);
    PackedStateBin *buffer = (*leaf_state_data_pool[factor])[leaf_state_data_pool[factor]->size() - 1];

    for (size_t var = 0; var < facts.size(); ++var){
        // no need to check does_fire here, because no conditional effects allowed (yet)
        g_leaf_state_packers[factor]->set(buffer, var, facts[var]);
    }

    return insert_id_or_pop_leaf_state(factor);
}

void StateRegistry::print_decoupled_search_statistics() const {
    // sum_leaves(|leaf| * #reachable leaf states) + sum_s(|center| + sum_leaves(#reachable leaf states in s))
    size_t dec_size = sizeof(PackedStateBin) * g_state_packer->get_num_bins() * size();
    uint64_t num_member_states = 0;

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        dec_size += sizeof(PackedStateBin) * g_leaf_state_packers[factor]->get_num_bins() * size(factor);
    }

    for (size_t i = 0; i < CPGStorage::storage->size(this); ++i){
        dec_size += CPGStorage::storage->get_cpg(lookup_state(StateID(i)))->get_memory_footprint();
        if (g_factoring->get_leaf_representation_type() == LEAF_REPRESENTATION_TYPE::EXPLICIT){
            const ExplicitStateCPG *cpg = static_cast<const ExplicitStateCPG *>(CPGStorage::storage->get_cpg(lookup_state(StateID(i))));
            int num_member_states_state = 1;
            for (LeafFactorID leaf(0); leaf < g_leaves.size(); ++leaf){
                num_member_states_state *= cpg->get_number_states(leaf);
            }
            num_member_states += num_member_states_state;
        }
    }
    cout << "decoupled state space size " << dec_size << endl;

    if (g_factoring->get_leaf_representation_type() == LEAF_REPRESENTATION_TYPE::EXPLICIT){
        cout << "Average number of member states (generated decoupled states): "
                << (num_member_states / CPGStorage::storage->size(this)) << endl;
    }

    cout << "Time spent on dominance pruning: " << dominance_pruning_timer.count() << "s" << endl;

    int m = 0;
    for (DupCounterTable::const_iterator it = state_duplicate_counter.begin(); it != state_duplicate_counter.end(); ++it){
        m = max(m, (int) it->second);
    }
    cout << "maximum duplicate counter " << m << endl;
}

void StateRegistry::subscribe(PerStateInformationBase *psi) const {
    subscribers.insert(psi);
}

void StateRegistry::unsubscribe(PerStateInformationBase *psi) const {
    subscribers.erase(psi);
}
