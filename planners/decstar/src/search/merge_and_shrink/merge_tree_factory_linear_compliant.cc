#include "merge_tree_factory_linear_compliant.h"

#include "factored_transition_system.h"
#include "merge_tree.h"
#include "transition_system.h"

#include "../globals.h"
#include "../leaf_state.h"
#include "../task_proxy.h"

#include "../options/option_parser.h"
#include "../options/options.h"
#include "../options/plugin.h"

#include "../utils/markup.h"
#include "../utils/rng.h"
#include "../utils/rng_options.h"
#include "../utils/system.h"

#include <algorithm>

using namespace std;

namespace merge_and_shrink {
MergeTreeFactoryLinearCompliant::MergeTreeFactoryLinearCompliant(const options::Options &options)
    : MergeTreeFactory(options),
      variable_order_type(
          options.get<variable_order_finder::VariableOrderType>("variable_order")),
      rng(utils::parse_rng_from_options(options)) {
}

LeafFactorID select_var(vector<int> &remaining_variables, int var, int position) {
    assert(remaining_variables[position] == var);
    remaining_variables.erase(remaining_variables.begin() + position);
    return g_belongs_to_factor[var];
}

unique_ptr<MergeTree> MergeTreeFactoryLinearCompliant::compute_merge_tree(
    const TaskProxy &task_proxy) {
    variable_order_finder::VariableOrderFinder vof(task_proxy, variable_order_type, rng);
    vector<int> remaining_variables;
    remaining_variables.reserve(task_proxy.get_variables().size());
    while (!vof.done()) {
        remaining_variables.push_back(vof.next());
    }
    int var = remaining_variables.front();
    int position = 0;
    LeafFactorID current_leaf_id = select_var(remaining_variables, var, position);
    MergeTreeNode *root = new MergeTreeNode(var);
    while (!remaining_variables.empty()) {
        var = -1;
        position = -1;
        if (current_leaf_id != LeafFactorID::CENTER) {
            for (size_t i = 0; i < remaining_variables.size(); ++i) {
                if (g_belongs_to_factor[remaining_variables[i]] == current_leaf_id) {
                    var = remaining_variables[i];
                    position = i;
                    break;
                }
            }
        }

        /*
          Either there is no "current leaf" being handled because the last
          added var was a center var, or all vars of the current leaf have been
          added. In both cases, we continue with the next var.
        */
        if (var == -1) {
            var = remaining_variables.front();
            position = 0;
        }

        current_leaf_id = select_var(remaining_variables, var, position);
        MergeTreeNode *right_child = new MergeTreeNode(var);
        root = new MergeTreeNode(root, right_child);
    }
    return utils::make_unique_ptr<MergeTree>(
        root, rng, update_option);
}

string MergeTreeFactoryLinearCompliant::name() const {
    return "linear compliant";
}

void MergeTreeFactoryLinearCompliant::dump_tree_specific_options(utils::LogProxy &log) const {
    if (log.is_at_least_normal()) {
        dump_variable_order_type(variable_order_type, log);
    }
}

void MergeTreeFactoryLinearCompliant::add_options_to_parser(
    options::OptionParser &parser) {
    MergeTreeFactory::add_options_to_parser(parser);
    vector<string> merge_strategies;
    merge_strategies.push_back("CG_GOAL_LEVEL");
    merge_strategies.push_back("CG_GOAL_RANDOM");
    merge_strategies.push_back("GOAL_CG_LEVEL");
    merge_strategies.push_back("RANDOM");
    merge_strategies.push_back("LEVEL");
    merge_strategies.push_back("REVERSE_LEVEL");
    parser.add_enum_option<variable_order_finder::VariableOrderType>(
        "variable_order", merge_strategies,
        "the order in which atomic transition systems are merged",
        "CG_GOAL_LEVEL");
}

static shared_ptr<MergeTreeFactory> _parse(options::OptionParser &parser) {
    MergeTreeFactoryLinearCompliant::add_options_to_parser(parser);
    parser.document_synopsis(
        "Linear merge trees",
        "These merge trees implement several linear merge orders, which "
        "are described in the paper:" + utils::format_conference_reference(
            {"Malte Helmert", "Patrik Haslum", "Joerg Hoffmann"},
            "Flexible Abstraction Heuristics for Optimal Sequential Planning",
            "https://ai.dmi.unibas.ch/papers/helmert-et-al-icaps2007.pdf",
            "Proceedings of the Seventeenth International Conference on"
            " Automated Planning and Scheduling (ICAPS 2007)",
            "176-183",
            "AAAI Press",
            "2007"));
    options::Options opts = parser.parse();
    if (parser.dry_run())
        return nullptr;
    else
        return make_shared<MergeTreeFactoryLinearCompliant>(opts);
}

static options::Plugin<MergeTreeFactory> _plugin("linear_compliant", _parse);
}
