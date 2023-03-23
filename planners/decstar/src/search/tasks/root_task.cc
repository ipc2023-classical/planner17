#include "root_task.h"

#include "../globals.h"
#include "../operator.h"
#include "../option_parser.h"
#include "../plugin.h"
#include "../state_registry.h"

#include "../utils/collections.h"
#include "../utils/timer.h"

#include <algorithm>
#include <cassert>
#include <memory>
#include <set>
#include <unordered_set>
#include <vector>


using namespace std;

namespace tasks {
shared_ptr<AbstractTask> g_root_task = nullptr;

class RootTask : public AbstractTask {
    vector<pair<int, int>> goal;
public:
    explicit RootTask();

    virtual int get_num_variables() const override;
    virtual string get_variable_name(int var) const override;
    virtual int get_variable_domain_size(int var) const override;
    virtual int get_variable_axiom_layer(int var) const override;
    virtual int get_variable_default_axiom_value(int var) const override;
    virtual string get_fact_name(const FactPair &fact) const override;
    virtual bool are_facts_mutex(
        const FactPair &fact1, const FactPair &fact2) const override;

    virtual int get_operator_cost(int index, bool is_axiom) const override;
    virtual string get_operator_name(
        int index, bool is_axiom) const override;
    virtual int get_num_operators() const override;
    virtual int get_num_operator_preconditions(
        int index, bool is_axiom) const override;
    virtual FactPair get_operator_precondition(
        int op_index, int fact_index, bool is_axiom) const override;
    virtual int get_num_operator_effects(
        int op_index, bool is_axiom) const override;
    virtual int get_num_operator_effect_conditions(
        int op_index, int eff_index, bool is_axiom) const override;
    virtual FactPair get_operator_effect_condition(
        int op_index, int eff_index, int cond_index, bool is_axiom) const override;
    virtual FactPair get_operator_effect(
        int op_index, int eff_index, bool is_axiom) const override;
    virtual int convert_operator_index(
        int index, const AbstractTask *ancestor_task) const override;

    virtual int get_num_axioms() const override;

    virtual int get_num_goals() const override;
    virtual FactPair get_goal_fact(int index) const override;

    virtual vector<int> get_initial_state_values() const override;
    virtual void convert_ancestor_state_values(
        vector<int> &values,
        const AbstractTask *ancestor_task) const override;
};

RootTask::RootTask() {
    // TODO: this hack keeps a copy of g_goal which is possibly modified by
    // factoring.
    assert(!g_goal.empty());
    goal = g_goal;
}

int RootTask::get_num_variables() const {
    return g_variable_domain.size();
}

string RootTask::get_variable_name(int var) const {
    return g_variable_name[var];
}

int RootTask::get_variable_domain_size(int var) const {
    return g_variable_domain[var];
}

int RootTask::get_variable_axiom_layer(int var) const {
    return g_axiom_layers[var];
}

int RootTask::get_variable_default_axiom_value(int var) const {
    return g_default_axiom_values[var];
}

string RootTask::get_fact_name(const FactPair &fact) const {
    assert(utils::in_bounds(fact.value, g_fact_names[fact.var]));
    return g_fact_names[fact.var][fact.value];
}

bool RootTask::are_facts_mutex(const FactPair &fact1, const FactPair &fact2) const {
    if (fact1.var == fact2.var) {
        // Same variable: mutex iff different value.
        return fact1.value != fact2.value;
    }
    return are_mutex({fact1.var, fact1.value}, {fact2.var, fact2.value});
}

static const Operator &get_operator_or_axiom(int op_index, bool is_axiom) {
    if (is_axiom) {
        assert(utils::in_bounds(op_index, g_axioms));
        return g_axioms[op_index];
    } else {
        assert(utils::in_bounds(op_index, g_operators));
        return g_operators[op_index];
    }
}

int RootTask::get_operator_cost(int index, bool is_axiom) const {
    const Operator &op = get_operator_or_axiom(index, is_axiom);
    return op.get_cost();
}

string RootTask::get_operator_name(int index, bool is_axiom) const {
    const Operator &op = get_operator_or_axiom(index, is_axiom);
    return op.get_name();
}

int RootTask::get_num_operators() const {
    return g_operators.size();
}

int RootTask::get_num_operator_preconditions(int index, bool is_axiom) const {
    return get_operator_or_axiom(index, is_axiom).get_preconditions().size();
}

FactPair RootTask::get_operator_precondition(
    int op_index, int fact_index, bool is_axiom) const {
    const vector<Condition> &pre = get_operator_or_axiom(op_index, is_axiom).get_preconditions();
    assert(utils::in_bounds(fact_index, pre));
    return FactPair(pre[fact_index].var, pre[fact_index].val);
}

int RootTask::get_num_operator_effects(int op_index, bool is_axiom) const {
    return get_operator_or_axiom(op_index, is_axiom).get_effects().size();
}

int RootTask::get_num_operator_effect_conditions(
    int op_index, int eff_index, bool is_axiom) const {
    const vector<Effect> &effs = get_operator_or_axiom(op_index, is_axiom).get_effects();
    assert(utils::in_bounds(eff_index, effs));
    return effs[eff_index].conditions.size();
}

FactPair RootTask::get_operator_effect_condition(
    int op_index, int eff_index, int cond_index, bool is_axiom) const {
    const vector<Effect> &effs = get_operator_or_axiom(op_index, is_axiom).get_effects();
    assert(utils::in_bounds(eff_index, effs));
    const Effect &eff = effs[eff_index];
    assert(utils::in_bounds(cond_index, eff.conditions));
    return FactPair(eff.conditions[cond_index].var, eff.conditions[cond_index].val);
}

FactPair RootTask::get_operator_effect(
    int op_index, int eff_index, bool is_axiom) const {
    const vector<Effect> &effs = get_operator_or_axiom(op_index, is_axiom).get_effects();
    assert(utils::in_bounds(eff_index, effs));
    const Effect &eff = effs[eff_index];
    return FactPair(eff.var, eff.val);
}

int RootTask::convert_operator_index(
    int index, const AbstractTask *ancestor_task) const {
    if (this != ancestor_task) {
        ABORT("Invalid operator ID conversion");
    }
    return index;
}

int RootTask::get_num_axioms() const {
    return g_axioms.size();
}

int RootTask::get_num_goals() const {
    return goal.size();
}

FactPair RootTask::get_goal_fact(int index) const {
    assert(utils::in_bounds(index, goal));
    return FactPair(goal[index].first, goal[index].second);
}

vector<int> RootTask::get_initial_state_values() const {
    return g_initial_state_data;
}

void RootTask::convert_ancestor_state_values(
    vector<int> &, const AbstractTask *ancestor_task) const {
    if (this != ancestor_task) {
        ABORT("Invalid state conversion");
    }
}

//void read_root_task(istream &in) {
//    assert(!g_root_task);
//    g_root_task = make_shared<RootTask>(in);
//}

void create_root_task() {
    g_root_task = make_shared<RootTask>();
}

static shared_ptr<AbstractTask> _parse(OptionParser &parser) {
    if (parser.dry_run())
        return nullptr;
    else
        return g_root_task;
}

static Plugin<AbstractTask> _plugin("no_transform", _parse);
}
