#include "task_info.h"

#include "../task_utils/task_properties.h"
#include "../utils/logging.h"

#include <map>

namespace cost_saturation {

// ____________________________________________________________________________
static vector<vector<FactPair>> get_preconditions_by_operator(
    const OperatorsProxy &ops) {
    vector<vector<FactPair>> preconditions_by_operator;
    preconditions_by_operator.reserve(ops.size());
    for (OperatorProxy op : ops) {
        vector<FactPair> preconditions = task_properties::get_fact_pairs(op.get_preconditions());
        sort(preconditions.begin(), preconditions.end());
        preconditions_by_operator.push_back(move(preconditions));
    }
    return preconditions_by_operator;
}

// ____________________________________________________________________________
static vector<FactPair> get_postconditions(
    const OperatorProxy &op) {
    // Use map to obtain sorted postconditions.
    map<int, int> var_to_post;
    for (FactProxy fact : op.get_preconditions()) {
        var_to_post[fact.get_variable().get_id()] = fact.get_value();
    }
    for (EffectProxy effect : op.get_effects()) {
        FactPair fact = effect.get_fact().get_pair();
        var_to_post[fact.var] = fact.value;
    }
    vector<FactPair> postconditions;
    postconditions.reserve(var_to_post.size());
    for (const pair<const int, int> &fact : var_to_post) {
        postconditions.emplace_back(fact.first, fact.second);
    }
    return postconditions;
}

// ____________________________________________________________________________
static vector<vector<FactPair>> get_postconditions_by_operator(
    const OperatorsProxy &ops) {
    vector<vector<FactPair>> postconditions_by_operator;
    postconditions_by_operator.reserve(ops.size());
    for (OperatorProxy op : ops) {
        postconditions_by_operator.push_back(get_postconditions(op));
    }
    return postconditions_by_operator;
}

// ____________________________________________________________________________
static int lookup_value(const vector<FactPair> &facts, int var) {
    assert(is_sorted(facts.begin(), facts.end()));
    // TODO (dominik): binary search can be an option here because the facts are sorted.
    for (const FactPair &fact : facts) {
        if (fact.var == var) {
            return fact.value;
        } else if (fact.var > var) {
            return UNDEFINED;
        }
    }
    return UNDEFINED;
}

// ____________________________________________________________________________
static vector<int> get_variables(const OperatorProxy &op) {
    unordered_set<int> vars;
    vars.reserve(op.get_preconditions().size());
    for (FactProxy precondition : op.get_preconditions()) {
        vars.insert(precondition.get_variable().get_id());
    }
    for (EffectProxy effect : op.get_effects()) {
        vars.insert(effect.get_fact().get_variable().get_id());
    }
    vector<int> variables(vars.begin(), vars.end());
    sort(variables.begin(), variables.end());
    return variables;
}

// ____________________________________________________________________________
static vector<int> get_changed_variables(const OperatorProxy &op) {
    unordered_map<int, int> var_to_precondition;
    for (FactProxy precondition : op.get_preconditions()) {
        const FactPair fact = precondition.get_pair();
        var_to_precondition[fact.var] = fact.value;
    }
    vector<int> changed_variables;
    for (EffectProxy effect : op.get_effects()) {
        const FactPair fact = effect.get_fact().get_pair();
        auto it = var_to_precondition.find(fact.var);
        if (it != var_to_precondition.end() && it->second != fact.value) {
            changed_variables.push_back(fact.var);
        }
    }
    sort(changed_variables.begin(), changed_variables.end());
    return changed_variables;
}

// ____________________________________________________________________________
TaskInfo::TaskInfo(const TaskProxy &task_proxy) :
    initial_state(task_proxy.get_initial_state()) {
    utils::Timer timer;
    VariablesProxy variables = task_proxy.get_variables();
    num_variables = task_proxy.get_variables().size();
    num_operators = task_proxy.get_operators().size();
    goals = task_properties::get_fact_pairs(task_proxy.get_goals());
    mentioned_variables.resize(num_operators * num_variables, false);
    pre_eff_variables.resize(num_operators * num_variables, false);
    precondition_variables.resize(num_operators * num_variables, false);
    effect_variables.resize(num_operators * num_variables, false);
    for (OperatorProxy op : task_proxy.get_operators()) {
        for (int var : get_variables(op)) {
            mentioned_variables[get_index(op.get_id(), var)] = true;
        }
        for (int changed_var : get_changed_variables(op)) {
            pre_eff_variables[get_index(op.get_id(), changed_var)] = true;
        }
        for (FactProxy fact : op.get_preconditions()) {
            int var = fact.get_variable().get_id();
            precondition_variables[get_index(op.get_id(), var)] = true;
        }
        for (EffectProxy effect : op.get_effects()) {
            int var = effect.get_fact().get_variable().get_id();
            effect_variables[get_index(op.get_id(), var)] = true;
        }
    }

    domain_size.resize(num_variables);
    for (VariableProxy variable : task_proxy.get_variables()) {
        domain_size[variable.get_id()] = variable.get_domain_size();
    }

    preconditions_by_operator = get_preconditions_by_operator(task_proxy.get_operators());
    postconditions_by_operator = get_postconditions_by_operator(task_proxy.get_operators());

    operator_costs = task_properties::get_operator_costs(task_proxy);
    cout << "Total time to compute task info: " << timer() << "\n";
}

// ____________________________________________________________________________
const vector<int> &TaskInfo::get_operator_costs() const {
    return operator_costs;
}

// ____________________________________________________________________________
int TaskInfo::get_operator_cost(int op) const {
    return operator_costs[op];
}

// ____________________________________________________________________________
int TaskInfo::get_domain_size(int var) const {
    return domain_size[var];
}

// ____________________________________________________________________________
const vector<int> &TaskInfo::get_domain_sizes() const {
    return domain_size;
}

// ____________________________________________________________________________
const State &TaskInfo::get_initial_state() const {
    return initial_state;
}

// ____________________________________________________________________________
int TaskInfo::get_precondition_value(int op_id, int var) const {
    return lookup_value(preconditions_by_operator[op_id], var);
}

// ____________________________________________________________________________
int TaskInfo::get_postcondition_value(int op_id, int var) const {
    return lookup_value(postconditions_by_operator[op_id], var);
}

// ____________________________________________________________________________
bool TaskInfo::operator_has_precondition(int op_id, int var) const {
    return precondition_variables[get_index(op_id, var)];
}

// ____________________________________________________________________________
const vector<FactPair> &TaskInfo::get_goals() const {
    return goals;
}

// ____________________________________________________________________________
int TaskInfo::get_num_variables() const {
    return num_variables;
}

// ____________________________________________________________________________
int TaskInfo::get_num_operators() const {
    return num_operators;
}

// ____________________________________________________________________________
bool TaskInfo::operator_mentions_variable(int op_id, int var) const {
    return mentioned_variables[get_index(op_id, var)];
}

// ____________________________________________________________________________
bool TaskInfo::operator_has_effect(int op_id, int var) const {
    return effect_variables[get_index(op_id, var)];
}

// ____________________________________________________________________________
bool TaskInfo::operator_induces_self_loop(const pdbs::Pattern &pattern, int op_id) const {
    // Return false iff the operator has a precondition and effect for a pattern variable.
    for (int var : pattern) {
        if (pre_eff_variables[get_index(op_id, var)]) {
            return false;  // no loop
        }
    }
    return true;  // loop (how many?)
}

// ____________________________________________________________________________
bool TaskInfo::operator_is_active(const pdbs::Pattern &pattern, int op_id) const {
    for (int var : pattern) {
        if (effect_variables[get_index(op_id, var)]) {
            return true;
        }
    }
    return false;
}

// ____________________________________________________________________________
int TaskInfo::get_num_transitions_from_concrete_operator(const pdbs::Pattern &pattern, int op_id) const {
    int num_transitions = 1;
    bool has_state_changing_effect = false;
    for (int var : pattern) {
        int index = get_index(op_id, var);
        if (pre_eff_variables[index]) {
            has_state_changing_effect = true;
            // multiplier 1
        } else if (effect_variables[index]) {
            has_state_changing_effect = true;
            // multiplier D-1
            num_transitions *= domain_size[var] - 1;
        } else if (!precondition_variables[index]) {
            // multiplier D
            num_transitions *= domain_size[var];
        }
    }
    if (has_state_changing_effect) {
        return num_transitions;
    }
    return 0;
}

// ____________________________________________________________________________
int TaskInfo::get_num_transitions_from_operator(const pdbs::Pattern &pattern, int op_id) const {
    int num_transitions = 1;
    for (size_t i = 0; i < pattern.size(); ++i) {
        int var = pattern[i];
        /* for value of a variable that occurs only in the effect
            an abstract operator is build.
            for value of precondition this is already considered in precondition.hash
            for all other variables we need to increment_to_next_state.
        */
        if (!operator_mentions_variable(op_id, var)) {
            num_transitions *= domain_size[var];
        }
    }
    return num_transitions;
}

// ____________________________________________________________________________
int TaskInfo::get_num_loops(const pdbs::Pattern &pattern, int op_id) const {
    int num_loops = 1;
    for (int var : pattern) {
        int index = get_index(op_id, var);
        if (pre_eff_variables[index]) {
            return 0;
        } else if (!precondition_variables[index]) {
            num_loops *= get_domain_size(var);
        }
    }
    return num_loops;
}

}