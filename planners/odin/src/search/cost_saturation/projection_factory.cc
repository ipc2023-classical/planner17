#include "projection_factory.h"

#include "projection.h"
#include "utils.h"
#include "task_info.h"
#include "bdd_builder.h"

#include "../task_proxy.h"
#include "../pdbs/match_tree.h"
#include "../task_utils/task_properties.h"
#include "../utils/collections.h"
#include "../utils/logging.h"
#include "../utils/math.h"
#include "../utils/memory.h"

#include <cassert>
#include <unordered_map>
#include <map>

using namespace std;

namespace cost_saturation {

struct OperatorGroup {
    vector<FactPair> preconditions;
    vector<FactPair> effects;
    vector<int> operator_ids;

    bool operator<(const OperatorGroup &other) const {
        return operator_ids < other.operator_ids;
    }
};

using OperatorIDsByPreEffMap = utils::HashMap<pair<vector<FactPair>, vector<FactPair>>, vector<int>>;
using OperatorGroups = vector<OperatorGroup>;

static OperatorGroups group_equivalent_operators(
    const TaskProxy &task_proxy, const vector<int> &variable_to_pattern_index) {
    OperatorIDsByPreEffMap grouped_operator_ids;
    // Reuse vectors to save allocations.
    vector<FactPair> preconditions;
    vector<FactPair> effects;
    for (OperatorProxy op : task_proxy.get_operators()) {
        effects.clear();
        for (EffectProxy eff : op.get_effects()) {
            if (variable_to_pattern_index[eff.get_fact().get_pair().var] != -1) {
                effects.push_back(eff.get_fact().get_pair());
            }
        }
        /* Skip operators that only induce self-loops. They can be queried
           with operator_induces_self_loop(). */
        if (effects.empty()) {
            continue;
        }
        sort(effects.begin(), effects.end());

        preconditions.clear();
        for (FactProxy fact : op.get_preconditions()) {
            if (variable_to_pattern_index[fact.get_pair().var] != -1) {
                preconditions.push_back(fact.get_pair());
            }
        }
        sort(preconditions.begin(), preconditions.end());

        grouped_operator_ids[make_pair(move(preconditions), move(effects))].push_back(op.get_id());
    }
    OperatorGroups groups;
    for (auto &entry : grouped_operator_ids) {
        auto &pre_eff = entry.first;
        OperatorGroup group;
        group.preconditions = move(pre_eff.first);
        group.effects = move(pre_eff.second);
        group.operator_ids = move(entry.second);
        assert(utils::is_sorted_unique(group.operator_ids));
        groups.push_back(move(group));
    }
    // Sort by first operator ID for better cache locality.
    sort(groups.begin(), groups.end());
    return groups;
}

static OperatorGroups get_singleton_operator_groups(const TaskProxy &task_proxy) {
    OperatorGroups groups;
    for (OperatorProxy op : task_proxy.get_operators()) {
        OperatorGroup group;
        group.preconditions = task_properties::get_fact_pairs(op.get_preconditions());
        sort(group.preconditions.begin(), group.preconditions.end());
        group.effects.reserve(op.get_effects().size());
        for (EffectProxy eff : op.get_effects()) {
            group.effects.push_back(eff.get_fact().get_pair());
        }
        sort(group.effects.begin(), group.effects.end());
        group.operator_ids = {op.get_id()};
        groups.push_back(move(group));
    }
    return groups;
}


// ____________________________________________________________________________
static bool is_consistent(
    int state_index,
    const vector<int> &hash_multipliers,
    const vector<int> &pattern_domain_sizes,
    const vector<FactPair> &abstract_facts) {
    for (const FactPair &abstract_goal : abstract_facts) {
        int pattern_var_id = abstract_goal.var;
        int temp = state_index / hash_multipliers[pattern_var_id];
        int val = temp % pattern_domain_sizes[pattern_var_id];
        if (val != abstract_goal.value) {
            return false;
        }
    }
    return true;
}


static unordered_set<int> compute_goal_states(
    int num_states,
    const TaskInfo &task_info,
    const vector<int> &hash_multipliers,
    const vector<int> &pattern_domain_sizes,
    const vector<int> &variable_to_pattern_index) {
    vector<FactPair> abstract_goals;
    for (FactPair goal : task_info.get_goals()) {
        if (variable_to_pattern_index[goal.var] != -1) {
            abstract_goals.emplace_back(
                variable_to_pattern_index[goal.var], goal.value);
        }
    }
    unordered_set<int> goal_states;
    for (int state_index = 0; state_index < num_states; ++state_index) {
        if (is_consistent(state_index, hash_multipliers, pattern_domain_sizes, abstract_goals)) {
            goal_states.insert(state_index);
        }
    }
    return goal_states;
}


// ____________________________________________________________________________
static vector<int> get_abstract_preconditions(
    const vector<FactPair> &prev_pairs,
    const vector<FactPair> &pre_pairs,
    const vector<int> &hash_multipliers) {
    vector<int> abstract_preconditions(hash_multipliers.size(), -1);
    for (const FactPair &fact : prev_pairs) {
        int pattern_index = fact.var;
        abstract_preconditions[pattern_index] = fact.value;
    }
    for (const FactPair &fact : pre_pairs) {
        int pattern_index = fact.var;
        abstract_preconditions[pattern_index] = fact.value;
    }
    return abstract_preconditions;
}

// ____________________________________________________________________________
static int compute_hash_effect(
    const vector<FactPair> &preconditions,
    const vector<FactPair> &effects,
    const vector<int> &hash_multipliers) {
    int hash_effect = 0;
    assert(preconditions.size() == effects.size());
    for (size_t i = 0; i < preconditions.size(); ++i) {
        int var = preconditions[i].var;
        assert(var == effects[i].var);
        int old_val = preconditions[i].value;
        int new_val = effects[i].value;
        assert(old_val != -1);
        int effect = (new_val - old_val) * hash_multipliers[var];
        hash_effect += effect;
    }
    return hash_effect;
}

static void multiply_out(int pos,
    const vector<int> &hash_multipliers,
    const vector<int> &pattern,
    vector<FactPair> &prev_pairs,
    vector<FactPair> &pre_pairs,
    vector<FactPair> &eff_pairs,
    const vector<FactPair> &effects_without_pre,
    const VariablesProxy &variables,
    const OperatorCallback &callback) {
    if (pos == static_cast<int>(effects_without_pre.size())) {
        // All effects without precondition have been checked.
        if (!eff_pairs.empty()) {
            callback(prev_pairs, pre_pairs, eff_pairs, hash_multipliers);
        }
    } else {
        // For each possible value for the current variable, build an
        // abstract operator.
        int var_id = effects_without_pre[pos].var;
        int eff = effects_without_pre[pos].value;
        VariableProxy var = variables[pattern[var_id]];
        for (int i = 0; i < var.get_domain_size(); ++i) {
            if (i != eff) {
                pre_pairs.emplace_back(var_id, i);
                eff_pairs.emplace_back(var_id, eff);
            } else {
                prev_pairs.emplace_back(var_id, i);
            }
            multiply_out(pos + 1, hash_multipliers, pattern, prev_pairs, pre_pairs, eff_pairs,
                         effects_without_pre, variables, callback);
            if (i != eff) {
                pre_pairs.pop_back();
                eff_pairs.pop_back();
            } else {
                prev_pairs.pop_back();
            }
        }
    }
}


static void build_ranked_operators(
    const vector<int> &hash_multipliers,
    const vector<int> &pattern,
    const vector<FactPair> &preconditions,
    const vector<FactPair> &effects,
    const vector<int> &variable_to_pattern_index,
    const VariablesProxy &variables,
    const OperatorCallback &callback) {
    // All variable value pairs that are a prevail condition
    vector<FactPair> prev_pairs;
    // All variable value pairs that are a precondition (value != -1)
    vector<FactPair> pre_pairs;
    // All variable value pairs that are an effect
    vector<FactPair> eff_pairs;
    // All variable value pairs that are a precondition (value = -1)
    vector<FactPair> effects_without_pre;

    int num_vars = variables.size();
    vector<bool> has_precond_and_effect_on_var(num_vars, false);
    vector<bool> has_precondition_on_var(num_vars, false);

    for (FactPair pre : preconditions)
        has_precondition_on_var[pre.var] = true;

    for (FactPair eff : effects) {
        int var_id = eff.var;
        int pattern_var_id = variable_to_pattern_index[var_id];
        int val = eff.value;
        if (pattern_var_id != -1) {
            if (has_precondition_on_var[var_id]) {
                has_precond_and_effect_on_var[var_id] = true;
                eff_pairs.emplace_back(pattern_var_id, val);
            } else {
                effects_without_pre.emplace_back(pattern_var_id, val);
            }
        }
    }
    for (FactPair pre : preconditions) {
        int pattern_var_id = variable_to_pattern_index[pre.var];
        if (pattern_var_id != -1) { // variable occurs in pattern
            if (has_precond_and_effect_on_var[pre.var]) {
                pre_pairs.emplace_back(pattern_var_id, pre.value);
            } else {
                prev_pairs.emplace_back(pattern_var_id, pre.value);
            }
        }
    }
    multiply_out(0, hash_multipliers, pattern, prev_pairs, pre_pairs, eff_pairs,
                 effects_without_pre, variables, callback);
}

// ____________________________________________________________________________
unique_ptr<Projection> ProjectionFactory::convert_abstraction(
    const TaskProxy &task_proxy,
    const pdbs::Pattern &pattern,
    std::shared_ptr<TaskInfo> task_info,
    std::shared_ptr<BddBuilder> bdd_builder,
    bool combine_labels) {

    assert(utils::is_sorted_unique(pattern));
    assert(pattern.size() > 0);

    vector<int> hash_multipliers;
    hash_multipliers.reserve(pattern.size());
    int num_states = 1;
    for (int pattern_var_id : pattern) {
        hash_multipliers.push_back(num_states);
        VariableProxy var = task_proxy.get_variables()[pattern_var_id];
        if (utils::is_product_within_limit(num_states, var.get_domain_size(),
                                           numeric_limits<int>::max())) {
            num_states *= var.get_domain_size();
        } else {
            cerr << "Given pattern is too large! (Overflow occured): " << endl;
            cerr << pattern << endl;
            utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
        }
    }
    assert(hash_multipliers.size() > 0);

    unique_ptr<AbstractionFunction> abstraction_function = utils::make_unique_ptr<ProjectionFunction>(pattern, hash_multipliers);

    VariablesProxy variables = task_proxy.get_variables();
    vector<int> variable_to_pattern_index(variables.size(), -1);
    for (size_t i = 0; i < pattern.size(); ++i) {
        variable_to_pattern_index[pattern[i]] = i;
    }
    vector<int> pattern_domain_sizes;
    pattern_domain_sizes.reserve(pattern.size());
    for (int pattern_var : pattern) {
        pattern_domain_sizes.push_back(variables[pattern_var].get_domain_size());
    }

    unique_ptr<pdbs::MatchTree> match_tree_backward = utils::make_unique_ptr<pdbs::MatchTree>(
        task_proxy, pattern, hash_multipliers);


    int total_num_transitions = 0;
    int total_num_label_transitions = 0;
    vector<int> label_transition_id_offset;
    OperatorGroups operator_groups;
    if (combine_labels) {
        operator_groups = group_equivalent_operators(task_proxy, variable_to_pattern_index);
    } else {
        operator_groups = get_singleton_operator_groups(task_proxy);
    }
    int num_ops_covered_by_labels = 0;
    for (const auto &group : operator_groups) {
        num_ops_covered_by_labels += group.operator_ids.size();
    }
    array_pool_template::ArrayPool<int> label_to_operators;
    std::vector<RankedOperator> ranked_operators;
    label_to_operators.reserve(operator_groups.size(), num_ops_covered_by_labels);
    for (OperatorGroup &group : operator_groups) {
        const vector<FactPair> &preconditions = group.preconditions;
        const vector<FactPair> &effects = group.effects;

        int label_id = label_to_operators.size();
        label_to_operators.push_back(move(group.operator_ids));

        build_ranked_operators(
            hash_multipliers, pattern, preconditions, effects, variable_to_pattern_index, variables,
            [&](
                const vector<FactPair> &prevail,
                const vector<FactPair> &preconditions_,
                const vector<FactPair> &effects_,
                const vector<int> &hash_multipliers_) {
                vector<FactPair> regression_preconditions = prevail;
                regression_preconditions.insert(
                    regression_preconditions.end(), effects_.begin(), effects_.end());
                sort(regression_preconditions.begin(), regression_preconditions.end());
                int ranked_op_id = ranked_operators.size();
                match_tree_backward->insert(ranked_op_id, regression_preconditions);

                vector<int> abstract_preconditions = get_abstract_preconditions(
                    prevail, preconditions_, hash_multipliers_);
                int precondition_hash = 0;
                for (size_t pos = 0; pos < hash_multipliers_.size(); ++pos) {
                    int pre_val = abstract_preconditions[pos];
                    if (pre_val != -1) {
                        precondition_hash += hash_multipliers_[pos] * pre_val;
                    }
                }

                ranked_operators.emplace_back(
                    label_id,
                    precondition_hash,
                    compute_hash_effect(preconditions_, effects_, hash_multipliers_));

                // compute number of state-changing transitions that this abstract operator induces.
                label_transition_id_offset.emplace_back(total_num_label_transitions);
                int num_ranked_operator_transitions = task_info->get_num_transitions_from_operator(pattern, *label_to_operators.get_slice(label_id).begin());
                total_num_label_transitions += num_ranked_operator_transitions;
                total_num_transitions += num_ranked_operator_transitions * label_to_operators.size();
            });
    }
    ranked_operators.shrink_to_fit();

    // Initialize goal states.
    unordered_set<int> goal_states = compute_goal_states(num_states, *task_info, hash_multipliers, pattern_domain_sizes, variable_to_pattern_index);

    // Initialize initial state.
    int init_state_id = abstraction_function->get_abstract_state_id(task_info->get_initial_state());

    return unique_ptr<Projection>(
        new Projection(
            task_info,
            bdd_builder,
            move(abstraction_function),
            total_num_transitions,
            num_states,
            init_state_id,
            move(goal_states),
            pattern,
            move(label_to_operators),
            move(ranked_operators),
            move(match_tree_backward),
            move(hash_multipliers),
            move(pattern_domain_sizes),
            total_num_label_transitions,
            move(label_transition_id_offset)));
}

}