#include "successor_generator_internals.h"

#include "../globals.h"
#include "../operator.h"
#include "../state.h"
#include "../state_registry.h"

#include <cassert>

using namespace std;

/*
  Notes on possible optimizations:

  - Using specialized allocators (e.g. an arena allocator) could
    improve cache locality and reduce memory.

  - We could keep the different nodes in a single vector (for example
    of type unique_ptr<GeneratorBase>) and then use indices rather
    than pointers for representing child nodes. This would reduce the
    memory overhead for pointers in 64-bit builds. However, this
    overhead is not as bad as it used to be.

  - Going further down this route, on the more extreme end of the
    spectrum, we could use a "byte-code" style representation, where
    the successor generator is just a long vector of ints combining
    information about node type with node payload.

    For example, we could represent different node types as follows,
    where BINARY_FORK etc. are symbolic constants for tagging node
    types:

    - binary fork: [BINARY_FORK, child_1, child_2]
    - multi-fork:  [MULTI_FORK, n, child_1, ..., child_n]
    - vector switch: [VECTOR_SWITCH, var_id, child_1, ..., child_k]
    - single switch: [SINGLE_SWITCH, var_id, value, child_index]
    - hash switch: [HASH_SWITCH, var_id, map_no]
      where map_no is an index into a separate vector of hash maps
      (represented out of band)
    - single leaf: [SINGLE_LEAF, op_id]
    - vector leaf: [VECTOR_LEAF, n, op_id_1, ..., op_id_n]

    We could compact this further by permitting to use operator IDs
    directly wherever child nodes are used, by using e.g. negative
    numbers for operatorIDs and positive numbers for node IDs,
    obviating the need for SINGLE_LEAF. This would also make
    VECTOR_LEAF redundant, as MULTI_FORK could be used instead.

    Further, if the other symbolic constants are negative numbers,
    we could represent forks just as [n, child_1, ..., child_n] without
    symbolic constant at the start, unifying binary and multi-forks.

    To completely unify the representation, not needing hash values
    out of band, we might consider switches of the form [SWITCH, k,
    var_id, value_1, child_1, ..., value_k, child_k] that permit
    binary searching. This would only leave switch and fork nodes, and
    we could do away with the type tags by just using +k for one node
    type and -k for the other. (But it may be useful to leave the
    possibility of the current vector switches for very dense switch
    nodes, which could be used in the case where k equals the domain
    size of the variable in question.)

  - More modestly, we could stick with the current polymorphic code,
    but just use more types of nodes, such as switch nodes that stores
    a vector of (value, child) pairs to be scanned linearly or with
    binary search.

  - We can also try to optimize memory usage of the existing nodes
    further, e.g. by replacing vectors with something smaller, like a
    zero-terminated heap-allocated array.
*/

namespace successor_generator {
GeneratorForkBinary::GeneratorForkBinary(
    unique_ptr<GeneratorBase> generator1,
    unique_ptr<GeneratorBase> generator2)
    : generator1(move(generator1)),
      generator2(move(generator2)) {
    /* There is no reason to use a fork if only one of the generators exists.
       Use the existing generator directly if one of them exists or a nullptr
       otherwise. */
    assert(this->generator1);
    assert(this->generator2);
}

void GeneratorForkBinary::generate_applicable_ops(
    const GlobalState &state, vector<OperatorID> &applicable_ops) const {
    generator1->generate_applicable_ops(state, applicable_ops);
    generator2->generate_applicable_ops(state, applicable_ops);
}

void GeneratorForkBinary::generate_applicable_ops(
    const LeafState &state, vector<OperatorID> &applicable_ops) const {
    generator1->generate_applicable_ops(state, applicable_ops);
    generator2->generate_applicable_ops(state, applicable_ops);
}

void GeneratorForkBinary::generate_applicable_ops_ignore_outside_pre(
    const LeafState &state, vector<OperatorID> &applicable_ops) const {
    generator1->generate_applicable_ops_ignore_outside_pre(state, applicable_ops);
    generator2->generate_applicable_ops_ignore_outside_pre(state, applicable_ops);
}

void GeneratorForkBinary::remove_never_applicable_center_ops(LeafFactorID factor) {
    generator1->remove_never_applicable_center_ops(factor);
    generator2->remove_never_applicable_center_ops(factor);
}

GeneratorForkMulti::GeneratorForkMulti(vector<unique_ptr<GeneratorBase>> children)
    : children(move(children)) {
    /* Note that we permit 0-ary forks as a way to define empty
       successor generators (for tasks with no operators). It is
       the responsibility of the factory code to make sure they
       are not generated in other circumstances. */
    assert(this->children.empty() || this->children.size() >= 2);
}

void GeneratorForkMulti::generate_applicable_ops(
    const GlobalState &state, vector<OperatorID> &applicable_ops) const {
    for (const auto &generator : children)
        generator->generate_applicable_ops(state, applicable_ops);
}

void GeneratorForkMulti::generate_applicable_ops(
    const LeafState &state, vector<OperatorID> &applicable_ops) const {
    for (const auto &generator : children)
        generator->generate_applicable_ops(state, applicable_ops);
}

void GeneratorForkMulti::generate_applicable_ops_ignore_outside_pre(
    const LeafState &state, vector<OperatorID> &applicable_ops) const {
    for (const auto &generator : children)
        generator->generate_applicable_ops_ignore_outside_pre(state, applicable_ops);
}

void GeneratorForkMulti::remove_never_applicable_center_ops(LeafFactorID factor) {
    for (auto &generator : children){
        generator->remove_never_applicable_center_ops(factor);
    }
}

GeneratorSwitchVector::GeneratorSwitchVector(
    int switch_var_id, vector<unique_ptr<GeneratorBase>> &&generator_for_value)
    : switch_var_id(switch_var_id),
      generator_for_value(move(generator_for_value)) {
}

void GeneratorSwitchVector::generate_applicable_ops(
    const GlobalState &state, vector<OperatorID> &applicable_ops) const {
    int val = state[switch_var_id];
    const unique_ptr<GeneratorBase> &generator_for_val = generator_for_value[val];
    if (generator_for_val) {
        generator_for_val->generate_applicable_ops(state, applicable_ops);
    }
}

void GeneratorSwitchVector::generate_applicable_ops(
    const LeafState &state, vector<OperatorID> &applicable_ops) const {
    int val = state[switch_var_id];
    const unique_ptr<GeneratorBase> &generator_for_val = generator_for_value[val];
    if (generator_for_val) {
        generator_for_val->generate_applicable_ops(state, applicable_ops);
    }
}

void GeneratorSwitchVector::generate_applicable_ops_ignore_outside_pre(
    const LeafState &state, vector<OperatorID> &applicable_ops) const {
    if (g_belongs_to_factor[switch_var_id] == state.get_id().get_factor()){
        int val = state[switch_var_id];
        const unique_ptr<GeneratorBase> &generator_for_val = generator_for_value[val];
        if (generator_for_val) {
            generator_for_val->generate_applicable_ops_ignore_outside_pre(state, applicable_ops);
        }
    } else {
        for (int val = 0; val < g_variable_domain[switch_var_id]; ++val){
            const unique_ptr<GeneratorBase> &generator_for_val = generator_for_value[val];
            if (generator_for_val) {
                generator_for_val->generate_applicable_ops_ignore_outside_pre(state, applicable_ops);
            }
        }
    }
}

void GeneratorSwitchVector::remove_never_applicable_center_ops(LeafFactorID factor) {
    for (auto &generator_for_val : generator_for_value){
        if (generator_for_val){
            generator_for_val->remove_never_applicable_center_ops(factor);
        }
    }
}

GeneratorSwitchHash::GeneratorSwitchHash(
    int switch_var_id,
    unordered_map<int, unique_ptr<GeneratorBase>> &&generator_for_value)
    : switch_var_id(switch_var_id),
      generator_for_value(move(generator_for_value)) {
}

void GeneratorSwitchHash::generate_applicable_ops(
    const GlobalState &state, vector<OperatorID> &applicable_ops) const {
    int val = state[switch_var_id];
    const auto &child = generator_for_value.find(val);
    if (child != generator_for_value.end()) {
        const unique_ptr<GeneratorBase> &generator_for_val = child->second;
        generator_for_val->generate_applicable_ops(state, applicable_ops);
    }
}

void GeneratorSwitchHash::generate_applicable_ops(
    const LeafState &state, vector<OperatorID> &applicable_ops) const {
    assert(g_belongs_to_factor[switch_var_id] == state.get_id().get_factor());
    int val = state[switch_var_id];
    const auto &child = generator_for_value.find(val);
    if (child != generator_for_value.end()) {
        const unique_ptr<GeneratorBase> &generator_for_val = child->second;
        generator_for_val->generate_applicable_ops(state, applicable_ops);
    }
}

void GeneratorSwitchHash::generate_applicable_ops_ignore_outside_pre(
    const LeafState &state, vector<OperatorID> &applicable_ops) const {
    if (g_belongs_to_factor[switch_var_id] == state.get_id().get_factor()){
        int val = state[switch_var_id];
        const auto &child = generator_for_value.find(val);
        if (child != generator_for_value.end()) {
            const unique_ptr<GeneratorBase> &generator_for_val = child->second;
            generator_for_val->generate_applicable_ops_ignore_outside_pre(state, applicable_ops);
        }
    } else {
        for (const auto &child : generator_for_value){
            const unique_ptr<GeneratorBase> &generator_for_val = child.second;
            generator_for_val->generate_applicable_ops_ignore_outside_pre(state, applicable_ops);
        }
    }
}

void GeneratorSwitchHash::remove_never_applicable_center_ops(LeafFactorID factor) {
    for (auto &generator_for_val : generator_for_value){
        generator_for_val.second->remove_never_applicable_center_ops(factor);
    }
}

GeneratorSwitchSingle::GeneratorSwitchSingle(
    int switch_var_id, int value, unique_ptr<GeneratorBase> generator_for_value)
    : switch_var_id(switch_var_id),
      value(value),
      generator_for_value(move(generator_for_value)) {
}

void GeneratorSwitchSingle::generate_applicable_ops(
    const GlobalState &state, vector<OperatorID> &applicable_ops) const {
    if (value == state[switch_var_id]) {
        generator_for_value->generate_applicable_ops(state, applicable_ops);
    }
}

void GeneratorSwitchSingle::generate_applicable_ops(
    const LeafState &state, vector<OperatorID> &applicable_ops) const {
    assert(g_belongs_to_factor[switch_var_id] == state.get_id().get_factor());
    if (value == state[switch_var_id]) {
        generator_for_value->generate_applicable_ops(state, applicable_ops);
    }
}

void GeneratorSwitchSingle::generate_applicable_ops_ignore_outside_pre(
    const LeafState &state, vector<OperatorID> &applicable_ops) const {
    if (g_belongs_to_factor[switch_var_id] != state.get_id().get_factor() || value == state[switch_var_id]) {
        generator_for_value->generate_applicable_ops_ignore_outside_pre(state, applicable_ops);
    }
}

void GeneratorSwitchSingle::remove_never_applicable_center_ops(LeafFactorID factor) {
    generator_for_value->remove_never_applicable_center_ops(factor);
}

GeneratorLeafVector::GeneratorLeafVector(vector<OperatorID> &&applicable_operators)
    : applicable_operators(move(applicable_operators)) {
}

void GeneratorLeafVector::generate_applicable_ops(
    const GlobalState &, vector<OperatorID> &applicable_ops) const {
    /*
      In our experiments (issue688), a loop over push_back was faster
      here than doing this with a single insert call because the
      containers are typically very small. However, we have changed
      the container type from list to vector since then, so this might
      no longer apply.
    */
    for (OperatorID id : applicable_operators) {
        applicable_ops.push_back(id);
    }
}

void GeneratorLeafVector::generate_applicable_ops(
    const LeafState &, vector<OperatorID> &applicable_ops) const {
    /*
      In our experiments (issue688), a loop over push_back was faster
      here than doing this with a single insert call because the
      containers are typically very small. However, we have changed
      the container type from list to vector since then, so this might
      no longer apply.
    */
    for (OperatorID id : applicable_operators) {
        applicable_ops.push_back(id);
    }
}

void GeneratorLeafVector::generate_applicable_ops_ignore_outside_pre(
    const LeafState &state, vector<OperatorID> &applicable_ops) const {
    /*
      In our experiments (issue688), a loop over push_back was faster
      here than doing this with a single insert call because the
      containers are typically very small. However, we have changed
      the container type from list to vector since then, so this might
      no longer apply.
    */
    LeafFactorID factor = state.get_id().get_factor();
    for (OperatorID id : applicable_operators) {
        if (g_operators[id].has_precondition_on(factor) ||
                    g_operators[id].has_effect_on(factor)){
            applicable_ops.push_back(id);
        }
    }
}

void GeneratorLeafVector::remove_never_applicable_center_ops(LeafFactorID factor) {
    auto it = applicable_operators.begin();
    while (it != applicable_operators.end()){
        if (g_operators[*it].has_precondition_on(factor)){
            bool applicable = false;
            for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
                if (g_operators[*it].is_applicable(id, factor)){
                    applicable = true;
                    break;
                }
            }
            if (!applicable){
                it = applicable_operators.erase(it);
                continue;
            }
        }
        ++it;
    }
}

GeneratorLeafSingle::GeneratorLeafSingle(OperatorID applicable_operator)
    : applicable_operator(applicable_operator) {
}

void GeneratorLeafSingle::generate_applicable_ops(
    const GlobalState &, vector<OperatorID> &applicable_ops) const {
    if (applicable_operator != OperatorID::no_operator){
        // in case the op is never applicable given an invertible ifork leaf
        applicable_ops.push_back(applicable_operator);
    }
}

void GeneratorLeafSingle::generate_applicable_ops(
    const LeafState &, vector<OperatorID> &applicable_ops) const {
    if (applicable_operator != OperatorID::no_operator){
        // in case the op is never applicable given an invertible ifork leaf
        applicable_ops.push_back(applicable_operator);
    }
}

void GeneratorLeafSingle::generate_applicable_ops_ignore_outside_pre(
    const LeafState &state, vector<OperatorID> &applicable_ops) const {
    if (applicable_operator != OperatorID::no_operator){
        // in case the op is never applicable given an invertible ifork leaf
        LeafFactorID factor = state.get_id().get_factor();
        if (g_operators[applicable_operator].has_precondition_on(factor) ||
                g_operators[applicable_operator].has_effect_on(factor)){
            applicable_ops.push_back(applicable_operator);
        }
    }
}

void GeneratorLeafSingle::remove_never_applicable_center_ops(LeafFactorID factor) {
    if (applicable_operator != OperatorID::no_operator
            && g_operators[applicable_operator].has_precondition_on(factor)){
        // need to check if op was already removed by a previous call
        bool applicable = false;
        for (LeafStateHash id(0); id < g_state_registry->size(factor); ++id){
            if (g_operators[applicable_operator].is_applicable(id, factor)){
                applicable = true;
                break;
            }
        }
        if (!applicable){
            applicable_operator = OperatorID::no_operator;
        }
    }
}
}
