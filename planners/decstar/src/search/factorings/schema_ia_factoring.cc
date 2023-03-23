#include "schema_ia_factoring.h"

#include "../operator.h"
#include "../option_parser.h"
#include "../plugin.h"
#include "../task_utils/causal_graph.h"
#include "../utils/hash.h"

#include <set>
#include <vector>

using namespace std;

namespace schema_ia_factoring {

SchemaIAFactoring::SchemaIAFactoring(const Options &opts) : Factoring(opts) {
    profile = STAR;
    cout << "using schema-incarcs factoring strategy" << endl;
}

vector<set<int>> SchemaIAFactoring::get_leaves(const vector<bool> &center,
                                   const vector<vector<bool> > &schema_cg,
                                   const vector<vector<bool> > &intersect,
                                   const vector<EffectSchema> &eff_schemas) const {
    // compute the number of leaf factors
    vector<set<int>> components;
    vector<int> component_map(center.size(), -1);
    vector<bool> handled_c(center.size(), false);
    for (int as = 0; as < static_cast<int>(center.size()); ++as){
        if (!center[as] && !handled_c[as]){
            size_t id = 0;
            vector<int> c(1, as);
            // compute all schemas intersection with or causally connected to as
            while (id < c.size()) {
                handled_c[c[id]] = true;
                for (int nb = 0; nb < static_cast<int>(center.size()); ++nb) {
                    if (intersect[c[id]][nb] ||
                        (!center[nb] &&
                         (schema_cg[c[id]][nb] || schema_cg[nb][c[id]]))) {
                        // nb and c[id] have non-empty intersection, or
                        // nb is a leaf and causally connected to c[id]
                        if (find(c.begin(), c.end(), nb) == c.end()) {
                            c.push_back(nb);
                        }
                    }
                }
                ++id;
            }

            vector<int> del_components;
            size_t num_c = c.size();
            for (size_t i = 0; i < num_c; ++i){
                if (component_map[c[i]] != -1){
                    del_components.push_back(component_map[c[i]]);
                    c.insert(c.end(),
                             components[component_map[c[i]]].begin(),
                             components[component_map[c[i]]].end());
                }
            }
            sort(c.begin(), c.end());
            c.erase(unique(c.begin(), c.end()), c.end());
            sort(del_components.begin(), del_components.end(), std::greater{});
            del_components.erase(unique(del_components.begin(), del_components.end()), del_components.end());
            for (int del_id : del_components){
                components.erase(components.begin() + del_id);
            }
            int64_t leaf_size = 1;
            for (int c_as : c){
                component_map[c_as] = components.size();
                for (int var : eff_schemas[c_as].vars){
                    leaf_size *= g_variable_domain[var];
                    if (max_leaf_size != 0 && leaf_size > max_leaf_size){
                        break;
                    }
                }
            }
            if (max_leaf_size == 0 || leaf_size <= max_leaf_size) {
                components.push_back(set<int>(c.begin(), c.end()));
            }
        }
    }
    return components;
}

Factoring::FactoredVars SchemaIAFactoring::get_factoring() {
    // TODO allow empty center and do like now, but with action schema (pre+eff vars) and only intersection

    vector<EffectSchema> eff_schemas(get_effect_schemas());

    vector<vector<size_t> > var_to_schemas(g_variable_domain.size());
    for (size_t i = 0; i < eff_schemas.size(); ++i){
        for (int var : eff_schemas[i].vars){
            var_to_schemas[var].push_back(i);
        }
    }

    vector<vector<bool> > intersect(eff_schemas.size(), vector<bool>(eff_schemas.size(), false));

    // compute intersecting patterns
    for (int var = 0; var < static_cast<int>(g_variable_domain.size()); ++var){
        for (size_t s1 : var_to_schemas[var]){
            for (size_t s2 : var_to_schemas[var]){
                intersect[s1][s2] = true;
            }
        }
    }

    vector<vector<bool> > schema_cg(eff_schemas.size(), vector<bool>(eff_schemas.size(), false));

    const causal_graph::CausalGraph &cg = causal_graph::get_causal_graph();
    // check dependencies
    for (int var = 0; var < static_cast<int>(g_variable_domain.size()); ++var){
        for (int pre : cg.get_predecessors(var)){
            for (size_t s1 : var_to_schemas[var]) {
                for (size_t s2: var_to_schemas[pre]) {
                    schema_cg[s2][s1] = true;
                }
            }
        }
        for (int succ : cg.get_successors(var)){
            for (size_t s1 : var_to_schemas[var]) {
                for (size_t s2 : var_to_schemas[succ]){
                    schema_cg[s1][s2] = true;
                }
            }
        }
    }

    // TODO alternatively do sorting according to # leaf-only actions + combination of the two?
    // another alternative would be to sort by increasing number of blocking leaves
    vector<vector<size_t> > schemas_by_num_neighors;
    for (size_t s1 = 0; s1 < eff_schemas.size(); ++s1){
        size_t neighbors = 0;
        for (size_t s2 = 0; s2 < eff_schemas.size(); ++s2){
            if (s1 != s2 && (schema_cg[s1][s2] || schema_cg[s2][s1])){
                ++neighbors;
            }
        }
        if (schemas_by_num_neighors.size() <= neighbors){
            schemas_by_num_neighors.resize(neighbors + 1);
        }
        schemas_by_num_neighors[neighbors].push_back(s1);
    }


    vector<bool> center(eff_schemas.size(), false);
    size_t max_num_leaves = get_leaves(center, schema_cg, intersect, eff_schemas).size();
    vector<bool> best_center(eff_schemas.size(), false);
    for (int n = schemas_by_num_neighors.size() - 1; n >= 0; --n){
        for (size_t s : schemas_by_num_neighors[n]){
            if (!center[s]){
                center[s] = true;
                size_t new_num_leaves = get_leaves(center, schema_cg, intersect, eff_schemas).size();
                if (new_num_leaves > max_num_leaves){
                    max_num_leaves = new_num_leaves;
                    best_center = center;
                }
            }
        }
    }

    FactoredVars factoring;
    for (const auto &leaf_components : get_leaves(best_center, schema_cg, intersect, eff_schemas)){
        set<int> l;
        for (int c : leaf_components) {
            for (int var: eff_schemas[c].vars) {
                l.insert(var);
            }
        }
        factoring.push_back(l);
    }
    return factoring;
}

vector<SchemaIAFactoring::EffectSchema> SchemaIAFactoring::get_effect_schemas() const {
    vector<EffectSchema> effect_schemas;
    utils::HashMap<std::vector<int>, size_t> scheme_loockup;
    for (const Operator &op : g_operators) {
        vector<int> vars;
        int64_t leaf_size = 1;
        for (const Effect &eff : op.get_effects()) {
            vars.push_back(eff.var);
            leaf_size *= g_variable_domain[eff.var];
            if (max_leaf_size != 0 && leaf_size > max_leaf_size){
                break;
            }
        }
        if (max_leaf_size != 0 && leaf_size > max_leaf_size){
            continue;
        }
        sort(vars.begin(), vars.end());

        auto it = scheme_loockup.find(vars);
        if (it == scheme_loockup.end()){
            scheme_loockup[vars] = effect_schemas.size();
            effect_schemas.push_back(EffectSchema(1, vars));
        } else {
            effect_schemas[it->second].incr_num_action();
        }
    }
    return effect_schemas;
}

//void SchemaIAFactoring::merge_potential_leaves(vector<PotentialLeaf> &potential_leaves,
//        vector<set<size_t> > &var_to_p_leaves) const {
//
//    queue<PotentialLeaf> open;
//    for (PotentialLeaf &p_leaf : potential_leaves) {
//        sort(p_leaf.vars.begin(), p_leaf.vars.end());
//        if (p_leaf.vars.size() > 1) {
//            open.push(p_leaf);
//        }
//    }
//
//    int id = potential_leaves.size();
//    vector<PotentialLeaf> merged_leaves;
//    for (int iteration = 0; iteration < max_merge_steps; iteration++) {
//        while (!open.empty()) {
//            PotentialLeaf p_leaf = open.front();
//            open.pop();
//            set<int> overlapping_leaves;
//            for (int var : p_leaf.vars) {
//                for (int index : var_to_p_leaves[var]) {
//                    overlapping_leaves.insert(index);
//                }
//            }
//
//            for (int i : overlapping_leaves) {
//                vector<int> vars = potential_leaves[i].vars;
//                if (vars.size() == 1 || includes(p_leaf.vars.begin(), p_leaf.vars.end(), vars.begin(), vars.end()) || includes(vars.begin(), vars.end(), p_leaf.vars.begin(), p_leaf.vars.end())) {
//                    continue;
//                }
//                vector<int> merged_vars (p_leaf.vars.size() + vars.size());
//                auto it = set_union(p_leaf.vars.begin(), p_leaf.vars.end(), vars.begin(), vars.end(), merged_vars.begin());
//                merged_vars.resize(it - merged_vars.begin());
//
//                //duplicate check
//                bool dublicate = false;
//                for (int j : var_to_p_leaves[merged_vars[0]]) {
//                    if (potential_leaves[j].vars == merged_vars) {
//                       dublicate = true;
//                       break;
//                    }
//                }
//                if (!dublicate) {
//                    for (PotentialLeaf &merged_leaf : merged_leaves) {
//                        if (merged_leaf.vars == merged_vars) {
//                           dublicate = true;
//                           break;
//                        }
//                    }
//                }
//                if (dublicate) {
//                    continue;
//                }
//
//                PotentialLeaf merged_leaf (id, 0, merged_vars);
//
//                //calculate number of leaf actions and leaf-only actions
//                set<int> overlapping_with_merged_leaf;
//                for (int var : merged_vars) {
//                    for (int j : var_to_p_leaves[var]) {
//                        overlapping_with_merged_leaf.insert(j);
//                    }
//                }
//                for (int j : overlapping_with_merged_leaf) {
//                    merged_leaf.num_leaf_actions += potential_leaves[j].num_actions;
//                    if (includes(merged_vars.begin(), merged_vars.end(), potential_leaves[j].vars.begin(), potential_leaves[j].vars.end())) {
//                        merged_leaf.num_leaf_only_actions += potential_leaves[j].num_actions;
//                    }
//                }
//                if (p_leaf.get_flexibility() > merged_leaf.get_flexibility() || potential_leaves[i].get_flexibility() > merged_leaf.get_flexibility()) {
//                    continue;
//                }
//
//                merged_leaves.push_back(merged_leaf);
//                id++;
//            }
//        }
//        for (PotentialLeaf &merged_leaf : merged_leaves) {
//            potential_leaves.push_back(merged_leaf);
//            open.push(merged_leaf);
//            for (int var : merged_leaf.vars) {
//                var_to_p_leaves[var].insert(merged_leaf.id);
//            }
//        }
//        merged_leaves.clear();
//    }
//}

static shared_ptr<Factoring> _parse_schema_ia_factoring(OptionParser &parser) {
    // TODO docu
    Factoring::add_options_to_parser(parser);

    Options opts = parser.parse();

    if (!parser.dry_run()) {
        return make_shared<SchemaIAFactoring>(opts);
    }

    return 0;
}

static Plugin<Factoring> _plugin_lp("schema_ia", _parse_schema_ia_factoring);
}

