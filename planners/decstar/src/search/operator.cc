#include "operator.h"

#include "compliant_paths/compliant_path_graph.h"
#include "compliant_paths/cpg_storage.h"
#include "factoring.h"
#include "state_registry.h"

#include <iostream>

using namespace std;

Condition::Condition(istream &in) {
    in >> var >> val;
}

bool Condition::is_applicable(const GlobalState &state) const {
    assert(!g_factoring || g_belongs_to_factor[var] == LeafFactorID::CENTER);
    return state[var] == val;
}

bool Condition::is_applicable(const LeafState &state) const {
    assert(g_belongs_to_factor[var] == state.get_id().get_factor());
    return state[var] == val;
}

void Condition::dump() const {
    cout << g_fact_names[var][val];
}

void Effect::dump() const {
    cout << " => " << g_fact_names[var][val];
    if (!conditions.empty()) {
        cout << " if";
        for (size_t i = 0; i < conditions.size(); ++i) {
            cout << " ";
            conditions[i].dump();
        }
    }
}


void Operator::read_pre_post(istream &in) {
    int cond_count, var, pre, post;
    in >> cond_count;
    vector<Condition> conditions;
    conditions.reserve(cond_count);
    for (int i = 0; i < cond_count; ++i)
        conditions.push_back(Condition(in));
    in >> var >> pre >> post;
    if (pre != -1)
        preconditions.push_back(Condition(var, pre));
    effects.push_back(Effect(var, post, conditions));
}

Operator::Operator(istream &in, bool axiom) {
    marked = false;
    dead = false;

    is_an_axiom = axiom;
    if (!is_an_axiom) {
        check_magic(in, "begin_operator");
        in >> ws;
        getline(in, name);
        int count;
        in >> count;
        for (int i = 0; i < count; ++i)
            preconditions.push_back(Condition(in));
        in >> count;
        for (int i = 0; i < count; ++i)
            read_pre_post(in);

        int op_cost;
        in >> op_cost;
        cost = g_use_metric ? op_cost : 1;

        g_min_action_cost = min(g_min_action_cost, cost);
        g_max_action_cost = max(g_max_action_cost, cost);

        check_magic(in, "end_operator");
    } else {
        name = "<axiom>";
        cost = 0;
        check_magic(in, "begin_rule");
        read_pre_post(in);
        check_magic(in, "end_rule");
    }
}

bool Operator::is_applicable(const GlobalState &state) const {
    if (g_factoring){
        if (!is_center_applicable(state)){
            return false;
        }
        if (g_factoring->get_profile() == FORK && get_affected_factor() == LeafFactorID::CENTER){
            // in fork topology, center actions don't have leaf preconditions
            return true;
        }
        return CPGStorage::storage->get_cpg(state)->is_applicable(*this);
    } else {
        for (size_t i = 0; i < preconditions.size(); ++i){
            if (!preconditions[i].is_applicable(state)){
                return false;
            }
        }
    }
    return true;
}

bool Operator::is_applicable(LeafStateHash id, LeafFactorID factor) const {
    if (!has_precondition_on(factor)){
        return true;
    }
    LeafState state = g_state_registry->lookup_leaf_state(id, factor);
    for (const Condition &cond : get_preconditions(factor)){
        if (!cond.is_applicable(state)){
            return false;
        }
    }
    return true;
}

bool Operator::is_center_applicable(const GlobalState &state) const {
    for (const Condition &cond : get_preconditions(LeafFactorID::CENTER)){
        if (!cond.is_applicable(state)){
            return false;
        }
    }
    return true;
}

void Operator::dump() const {
    cout << name << ":";
    for (size_t i = 0; i < preconditions.size(); ++i) {
        cout << " [";
        preconditions[i].dump();
        if (g_factoring){
            if (g_belongs_to_factor[preconditions[i].var] == LeafFactorID::CENTER){
                cout << " center";
            } else {
                cout << " leaf " << g_belongs_to_factor[preconditions[i].var];
            }
        }
        cout << "]";
    }
    for (size_t i = 0; i < effects.size(); ++i) {
        cout << " [";
        effects[i].dump();
        if (g_factoring){
            if (g_belongs_to_factor[effects[i].var] == LeafFactorID::CENTER){
                cout << " center";
            } else {
                cout << " leaf " << g_belongs_to_factor[effects[i].var];
            }
        }
        cout << "]";
    }
    cout << endl;
    if (g_factoring){
        factor_info->dump();
    }
}

void Operator::set_affected_factor(LeafFactorID affected_factor) {
    std::sort(preconditions.begin(), preconditions.end(),
            [](const Condition &a, const Condition &b) {
        if (g_belongs_to_factor[a.var] == LeafFactorID::CENTER){
            if (g_belongs_to_factor[b.var] == LeafFactorID::CENTER){
                return a.var < b.var;
            }
            return true;
        } else if (g_belongs_to_factor[b.var] == LeafFactorID::CENTER){
            return false;
        } else if (g_belongs_to_factor[a.var] != g_belongs_to_factor[b.var]){
            return g_belongs_to_factor[a.var] < g_belongs_to_factor[b.var];
        }
        return a.var < b.var;
    });
    std::sort(effects.begin(), effects.end(),
            [](const Effect &a, const Effect &b) {
        if (g_belongs_to_factor[a.var] == LeafFactorID::CENTER){
            if (g_belongs_to_factor[b.var] == LeafFactorID::CENTER){
                return a.var < b.var;
            }
            return true;
        } else if (g_belongs_to_factor[b.var] == LeafFactorID::CENTER){
            return false;
        } else if (g_belongs_to_factor[a.var] != g_belongs_to_factor[b.var]){
            return g_belongs_to_factor[a.var] < g_belongs_to_factor[b.var];
        }
        return a.var < b.var;
    });

    factor_info = FactorInfo::create(this, affected_factor);
}
