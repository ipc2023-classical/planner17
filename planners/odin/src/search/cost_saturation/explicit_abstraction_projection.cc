#include "explicit_abstraction_projection.h"

#include "bdd_builder.h"

using namespace std;

namespace cost_saturation {

// ____________________________________________________________________________
const vector<FactPair> &ExplicitAbstractionProjection::compute_state(int state_id) const {
    state_facts.clear();
    // state facts ordered descending for variable id (= consistent with bdd topdown variable order)
    for (int i = pattern.size() - 1; i >= 0; --i) {
        int temp = state_id / hash_multipliers[i];
        int val = temp % pattern_domain_sizes[i];
        int var = pattern[i];
        state_facts.emplace_back(var, val);
    }
    return state_facts;
}


ExplicitAbstractionProjection::ExplicitAbstractionProjection(
    std::shared_ptr<TaskInfo> task_info,
    std::shared_ptr<BddBuilder> bdd_builder,
    std::unique_ptr<AbstractionFunction> abstraction_function,
    int num_transitions,
    int num_states,
    int init_state_id,
    std::unordered_set<int> &&goal_states,
    std::vector<std::vector<Successor>> &&backward_graph,
    std::vector<int> &&num_transitions_by_operator,
    std::vector<bool> &&has_loop,
    std::vector<bool> &&has_outgoing,
    const pdbs::Pattern &pattern,
    std::vector<int> &&hash_multipliers,
    std::vector<int> &&pattern_domain_sizes)
    : ExplicitAbstraction(
        task_info,
        bdd_builder,
        move(abstraction_function),
        num_transitions,
        num_states,
        init_state_id,
        move(goal_states),
        move(backward_graph),
        move(num_transitions_by_operator),
        move(has_loop),
        move(has_outgoing)),
        pattern(pattern),
        hash_multipliers(hash_multipliers),
        pattern_domain_sizes(pattern_domain_sizes) {
}

// ____________________________________________________________________________
BDD ExplicitAbstractionProjection::make_bdd(int state_id) const {
    return bdd_builder->make_bdd(compute_state(state_id));
}

// ____________________________________________________________________________
const BDD& ExplicitAbstractionProjection::make_bdd_and_cache(const Transition &transition) const {
    if (transition_bdd_cache.is_uninitialized()) {
        transition_bdd_cache.initialize(Abstraction::get_num_transitions());
    }
    if (!transition_bdd_cache.exists(transition.id)) {
        transition_bdd_cache.insert(
            transition.id,
            bdd_builder->make_bdd(compute_state(transition.src), transition.op));
    }
    return transition_bdd_cache.get(transition.id);
}

// ____________________________________________________________________________
BDD ExplicitAbstractionProjection::make_bdd(const Transition &transition) const {
    return bdd_builder->make_bdd(compute_state(transition.src), transition.op);
}

}
