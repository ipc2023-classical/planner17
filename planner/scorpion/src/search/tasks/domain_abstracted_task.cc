#include "domain_abstracted_task.h"

#include "../utils/system.h"

using namespace std;

namespace extra_tasks {
/*
  If we need the same functionality again in another task, we can move this to
  actract_task.h. We should then document that this method is only supposed to
  be used from within AbstractTasks. More high-level users should use
  has_conditional_effects(TaskProxy) from task_tools.h instead.
*/
static bool has_conditional_effects(const AbstractTask &task) {
    int num_ops = task.get_num_operators();
    for (int op_index = 0; op_index < num_ops; ++op_index) {
        int num_effs = task.get_num_operator_effects(op_index, false);
        for (int eff_index = 0; eff_index < num_effs; ++eff_index) {
            int num_conditions = task.get_num_operator_effect_conditions(
                op_index, eff_index, false);
            if (num_conditions > 0) {
                return true;
            }
        }
    }
    return false;
}

DomainAbstractedTask::DomainAbstractedTask(
    const shared_ptr<AbstractTask> &parent,
    vector<int> &&domain_size,
    vector<int> &&initial_state_values,
    vector<FactPair> &&goals,
    vector<vector<string>> &&fact_names,
    vector<vector<int>> &&value_map)
    : DelegatingTask(parent),
      domain_size(move(domain_size)),
      initial_state_values(move(initial_state_values)),
      goals(move(goals)),
      fact_names(move(fact_names)),
      value_map(move(value_map)) {
    if (parent->get_num_axioms() > 0) {
        ABORT("DomainAbstractedTask doesn't support axioms.");
    }
    if (has_conditional_effects(*parent)) {
        ABORT("DomainAbstractedTask doesn't support conditional effects.");
    }
    // The inverse value map should not be too big so just compute it every time.
    build_inverse_value_map();
}

int DomainAbstractedTask::get_variable_domain_size(int var) const {
    return domain_size[var];
}

string DomainAbstractedTask::get_fact_name(const FactPair &fact) const {
    return fact_names[fact.var][fact.value];
}

bool DomainAbstractedTask::are_facts_mutex(const FactPair &, const FactPair &) const {
    ABORT("DomainAbstractedTask doesn't support querying mutexes.");
}

FactPair DomainAbstractedTask::get_operator_precondition(
    int op_index, int fact_index, bool is_axiom) const {
    return get_abstract_fact(
        parent->get_operator_precondition(op_index, fact_index, is_axiom));
}

FactPair DomainAbstractedTask::get_operator_effect(
    int op_index, int eff_index, bool is_axiom) const {
    return get_abstract_fact(
        parent->get_operator_effect(op_index, eff_index, is_axiom));
}

FactPair DomainAbstractedTask::get_goal_fact(int index) const {
    return get_abstract_fact(parent->get_goal_fact(index));
}

vector<int> DomainAbstractedTask::get_initial_state_values() const {
    return initial_state_values;
}

void DomainAbstractedTask::convert_state_values_from_parent(
    vector<int> &values) const {
    int num_vars = domain_size.size();
    for (int var = 0; var < num_vars; ++var) {
        int old_value = values[var];
        int new_value = value_map[var][old_value];
        values[var] = new_value;
    }
}

void DomainAbstractedTask::build_inverse_value_map() {
    assert(value_map.size() == domain_size.size());
    inverse_value_map.clear();

    for (int var_id = 0; var_id < (int)value_map.size(); ++var_id) {
        // assert(g_variable_domain[var_id] == (int)value_map[var_id].size());
        int num_concrete_values = value_map[var_id].size();
        int num_abstract_values = 0;
        for (int val = 0; val < num_concrete_values; ++val) {
            num_abstract_values = std::max(num_abstract_values, get_abstract_value(FactPair(var_id, val)));
        }
        ++num_abstract_values;

        vector<Bitset> concrete_vals(num_abstract_values, Bitset(num_concrete_values));
        for (int concrete_value = 0; concrete_value < num_concrete_values; ++concrete_value) {
            int abstract_value = get_abstract_value(FactPair(var_id, concrete_value));
            concrete_vals[abstract_value].set(concrete_value);
        }
        inverse_value_map.push_back(move(concrete_vals));
    }
}

void DomainAbstractedTask::get_concrete_values(int var_index, const Bitset &abstract_values, Bitset &concrete_values) {
    concrete_values.reset();
    for (int i = 0; i < (int)abstract_values.size(); ++i) {
        if (abstract_values[i]) {
            concrete_values |= inverse_value_map[var_index][i];
        }
    }
}

int DomainAbstractedTask::get_concrete_value(const FactPair &fact) {
    assert(utils::in_bounds(fact.var, inverse_value_map));
    assert(utils::in_bounds(fact.value, inverse_value_map[fact.var]));
    Bitset& concrete_values = inverse_value_map[fact.var][fact.value];
    return concrete_values.first_index_set();
}

bool DomainAbstractedTask::does_convert_ancestor_state_values(
    const AbstractTask *) const {
    return true;
}
}
