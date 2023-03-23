#include "factoring.h"

#include "algorithms/sccs.h"
#include "factorings/factoring_ranking.h"
#include "compliant_paths/compliant_path_graph.h"
#include "compliant_paths/cudd_cpg.h"
#include "compliant_paths/explicit_state_cpg.h"
#include "globals.h"
#include "operator.h"
#include "option_parser.h"
#include "plugin.h"
#include "symbolic/sym_decoupled_manager.h"
#include "symbolic/sym_pricing_function.h"
#include "symbolic/sym_pricing_function_sat.h"
#include "task_utils/causal_graph.h"
#include "utils/hash.h"
#include "utils/timer.h"

#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <limits>
#include <map>
#include <sstream>

using namespace std;


void InteractionGraph::add_dependency(LeafFactorID from, LeafFactorID to) {
    assert(from != to);
    size_t from_id = from + 1; // shift by 1 for center
    if (from == LeafFactorID::CENTER){
        from_id = 0;
        ifork = false;
    }
    size_t to_id = to + 1; // shift by 1 for center
    if (to == LeafFactorID::CENTER){
        to_id = 0;
        fork = false;
    }
    if (from != LeafFactorID::CENTER && to != LeafFactorID::CENTER){
        fork = false;
        ifork = false;
        strict_star = false;
    }
    if (find(successors[from_id].begin(), successors[from_id].end(), to) == successors[from_id].end()){
        successors[from_id].push_back(to);
    }
    if (find(predecessors[to_id].begin(), predecessors[to_id].end(), from) == predecessors[to_id].end()){
        predecessors[to_id].push_back(from);
    }
}

vector<set<size_t>> Factoring::var_to_affecting_op;

vector<Factoring::ActionSchema> Factoring::action_schemas;

const string Factoring::TIME_OUT_MESSAGE = "Factoring process timed out.";

void Factoring::init_var_to_ops_map() {
    if (var_to_affecting_op.empty()) {
        var_to_affecting_op = vector<set<size_t> >(g_variable_domain.size(), set<size_t>());
        for (size_t op = 0; op < g_operators.size(); ++op) {
            for (const Effect &eff : g_operators[op].get_effects()) {
                var_to_affecting_op[eff.var].insert(op);
            }
        }
    }
}

void Factoring::init_action_schemas() {
    if (action_schemas.empty()){
        assert(!g_operators.empty());
        utils::HashMap<std::vector<int>, utils::HashMap<std::vector<int>, size_t> > scheme_loockup;
        for (const Operator &op : g_operators) {
            vector<int> pre_vars;
            for (const Condition &pre : op.get_preconditions()) {
                pre_vars.push_back(pre.var);
            }
            sort(pre_vars.begin(), pre_vars.end());

            vector<int> eff_vars;
            for (const Effect &eff : op.get_effects()) {
                eff_vars.push_back(eff.var);
            }
            sort(eff_vars.begin(), eff_vars.end());

            if (scheme_loockup.find(pre_vars) == scheme_loockup.end()){
                scheme_loockup[pre_vars][eff_vars] = action_schemas.size();
                action_schemas.push_back(ActionSchema(1, pre_vars, eff_vars));
            } else if (scheme_loockup[pre_vars].find(eff_vars) == scheme_loockup[pre_vars].end()){
                scheme_loockup[pre_vars][eff_vars] = action_schemas.size();
                action_schemas.push_back(ActionSchema(1, pre_vars, eff_vars));
            } else {
                action_schemas[scheme_loockup[pre_vars][eff_vars]].incr_num_action();
            }
        }
    }
}

Factoring::Factoring(const Options &opts) :
            search_type(opts.get<DECOUPLED_SEARCH_TYPE>("search_type")),
            abstain_type(opts.get<ABSTAIN_TYPE>("abstain_type")),
            leaf_type(opts.get<LEAF_REPRESENTATION_TYPE>("leaf_representation")),
            factoring_time_limit(opts.get<int>("factoring_time_limit")),
            max_leaf_size(opts.get<int>("max_leaf_size")),
            factoring_timer(utils::CountdownTimer(numeric_limits<double>::infinity())) {

    switch(search_type){
        case DECOUPLED_SEARCH_TYPE::ASDA : cout << "performing Anytime Star Decoupled A* search" << endl; break;
        case DECOUPLED_SEARCH_TYPE::SDA : cout << "performing Star Decoupled A* search" << endl; break;
        case DECOUPLED_SEARCH_TYPE::SAT : cout << "performing decoupled satisficing search" << endl; break;
        case DECOUPLED_SEARCH_TYPE::UNSAT : cout << "trying to prove task unsolvable" << endl; break;
        default : cout << "unknown decoupled search type " << search_type << endl; exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
    }
    if (max_leaf_size == 0){
        cout << "no bound on leaf factor size" << endl;
        // TODO probably change command line to -1 => no bound
    } else {
        max_leaf_size = numeric_limits<int>::max();
        cout << "maximum leaf factor size " << max_leaf_size << endl;
    }
    if (opts.contains("pruning")){
        CompliantPathGraph::set_pruning_options(opts.get<shared_ptr<PruningOptions>>("pruning"));
    } else {
        CompliantPathGraph::set_pruning_options(make_shared<PruningOptions>());
        cout << "using default pruning method: BasicPruning" << endl;
    }
#ifndef USE_CUDD
    if (leaf_type == LEAF_REPRESENTATION_TYPE::SYMBOLIC){
        cerr << "Fast Downward needs to be compiled with Cudd support "
                "to run decoupled search with symbolic leaf representation." << endl;
        exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
    }
#endif
    if (leaf_type == LEAF_REPRESENTATION_TYPE::SYMBOLIC && opts.contains("cudd_options")){
        const auto sym_opts = opts.get<shared_ptr<symbolic::SymDecoupledManagerOptions>>("cudd_options");
        if (search_type == SAT || search_type == UNSAT){
            CuddCPG<symbolic::SymPricingFunctionSAT>::set_sym_manager(*sym_opts);
        } else {
            CuddCPG<symbolic::SymPricingFunction>::set_sym_manager(*sym_opts);
        }
    }
    min_number_leaves = opts.get<int>("min_num_leaves");;
    max_precompute_state_space_size = opts.get<int>("build_state_space_size");
}

class RandomFactoring : public Factoring {

protected:

    FactoredVars get_factoring() override;

public:

    RandomFactoring(const Options &opts)
            : Factoring(opts) {
        profile = STAR;
        min_number_leaves = 1;
        cout << "using random 2-factor (1 leaf + center) factoring profile" << endl;
    }

};

class ForkFactoring : public Factoring {

protected:

    bool maximize_mobility;

    bool extend_leaves;

    bool average_mobility;

    FactoredVars get_fork_maximize_leaves(bool inverted = false, std::vector<int> variables = std::vector<int>()) const;

    FactoredVars get_fork_maximize_mobility(bool inverted = false, std::vector<int> variables = std::vector<int>()) const;

    FactoredVars get_factoring() override;

public:
    
    ForkFactoring(const Options &opts, FACTORING_PROFILE profile = FORK)
            : Factoring(opts),
              maximize_mobility(opts.get<bool>("maximize_mobility")),
              extend_leaves(opts.get<bool>("extend_leaves")),
              average_mobility(opts.get<bool>("average_mobility")) {
        if (profile == IFORK){
            Factoring::profile = IFORK;
            cout << "using inverted-fork factoring profile" << endl;
        } else if (profile == FORK){
            Factoring::profile = FORK;
            cout << "using fork factoring profile" << endl;
        }
    }

    static void add_options_to_parser(OptionParser &parser);

};

class XShapeFactoring : public ForkFactoring {

protected:

    FactoredVars get_factoring() override;

public:

    XShapeFactoring(const Options &opts)
            : ForkFactoring(opts, STAR) {
        profile = STAR;
        cout << "using X-shape factoring profile" << endl;
    }

};

class IncidentArcsFactoring : public Factoring {

protected:

    bool arg_all_rankings;
    vector<FactoringRanking* > arg_rankings;
    bool maximize_leaves;

    FactoredVars get_factoring() override;

public:

    IncidentArcsFactoring(const Options &opts)
            : Factoring(opts),
              arg_all_rankings(opts.get<bool>("all_rankings")),
              maximize_leaves(opts.get<bool>("maximize_leaves")) {
        profile = STAR;
        cout << "using incident-arcs factoring profile" << endl;
        cout << "ranking_features: ";
        if (!opts.contains("rankings")) {
            cout << "No ranking specified, taking number of mobile leaves as default." << endl;
            // TODO implement this
//	        arg_rankings.push_back(new LeavesRanking());
        } else {
//            arg_rankings = opts.get_list<FactoringRanking *>("rankings");
//            for (FactoringRanking *ranking : arg_rankings) {
//                cout << ranking->print_feature() << " ";
//            }
//            cout << endl;
            cout << "WARNING: Provided rankings are completely ignored. Instead, the number of mobile leaves is used." << endl;
        }
    }

    static void add_options_to_parser(OptionParser &parser);

};


class SokobanFactoring : public Factoring {

protected:

    FactoredVars get_factoring() override;

public:

    SokobanFactoring(const Options &opts)
            : Factoring(opts) {
        profile = STAR;
        cout << "using sokoban factoring profile" << endl;
    }

};

class OpenstacksFactoring : public Factoring {

protected:

    FactoredVars get_factoring() override;

public:

    OpenstacksFactoring(const Options &opts)
            : Factoring(opts) {
        profile = STAR;
        cout << "using openstacks factoring profile" << endl;
    }

};

class TPPConstrainedFactoring : public Factoring {

    bool inverted;

protected:

    FactoredVars get_factoring() override;

public:

    TPPConstrainedFactoring(const Options &opts)
            : Factoring(opts), inverted(opts.get<bool>("inverted")) {
        profile = STAR;
        cout << "using " <<  (inverted ? "inverted-" : "") << "tpp factoring profile" << endl;
    }

};

class DocTransferFactoring : public Factoring {

protected:

    FactoredVars get_factoring() override;

public:

    DocTransferFactoring(const Options &opts)
            : Factoring(opts) {
        profile = STAR;
        cout << "using doc transfer factoring profile" << endl;
    }

};

class PegsolFactoring : public Factoring {

protected:

    FactoredVars get_factoring() override;

public:

    PegsolFactoring(const Options &opts)
            : Factoring(opts) {
        profile = STAR;
        cout << "using pegsol factoring profile" << endl;
    }

};



void Factoring::apply_factoring(const FactoredVars &factoring) {
    g_belongs_to_factor = vector<LeafFactorID>(g_variable_domain.size(), LeafFactorID::CENTER);
    g_new_index = vector<size_t>(g_variable_domain.size());
    g_leaves.resize(factoring.size());

    InteractionGraph interaction_graph(factoring.size());

    {
        // create canonical factoring by sorting the leaves
        vector<size_t> ordering(factoring.size(), 0);
        size_t id = 0;
        for (int var = 0; var < (int) g_variable_domain.size(); ++var){
            for (LeafFactorID factor(0); factor < factoring.size(); ++factor){
                if (*factoring[factor].begin() == var){
                    ordering[factor] = id;
                    ++id;
                    break;
                }
            }
        }
        assert(id == factoring.size());

        for (size_t i = 0; i < factoring.size(); ++i){
            LeafFactorID factor(ordering[i]);
            vector<int> variables(factoring[i].begin(), factoring[i].end());
            for (size_t j = 0; j < variables.size(); ++j){
                g_belongs_to_factor[variables[j]] = factor;
                g_new_index[variables[j]] = j;
            }
            g_leaves[factor] = variables;
        }
    }

    for (size_t i = 0; i < g_variable_domain.size(); ++i){
        LeafFactorID affected_factor = g_belongs_to_factor[i];
        if (affected_factor == LeafFactorID::CENTER){
            g_center.push_back(i);
            g_new_index[i] = g_center.size() - 1;
        }
    }

    bool is_generalized_factoring = false;
    // determine factor of each operator
    for (Operator &op : g_operators){

        set<LeafFactorID> pre_factors;
        set<LeafFactorID> eff_factors;

        for (const Condition &pre : op.get_preconditions()){
            pre_factors.insert(g_belongs_to_factor[pre.var]);
        }

        for (const Effect &eff : op.get_effects()){
            eff_factors.insert(g_belongs_to_factor[eff.var]);
        }
        assert(!eff_factors.empty());

        for (LeafFactorID pre_factor : pre_factors){
            for (LeafFactorID eff_factor : eff_factors){
                if (pre_factor != eff_factor){
                    interaction_graph.add_dependency(pre_factor, eff_factor);
                }
            }
        }
        for (LeafFactorID eff1_factor : eff_factors){
            for (LeafFactorID eff2_factor : eff_factors){
                if (eff1_factor != eff2_factor){
                    interaction_graph.add_dependency(eff1_factor, eff2_factor);
                }
            }
        }

        bool is_center_op = false;
        if (eff_factors.find(LeafFactorID::CENTER) != eff_factors.end()){
            // effect on center variable
            is_center_op = true;
        } else if (eff_factors.size() > 1){
            // effect on more than one factor
            is_center_op = true;
            is_generalized_factoring = true;
        } else {
            pre_factors.erase(LeafFactorID::CENTER);
            if (pre_factors.size() > 1){
                // precondition on more than one leaf
                is_center_op = true;
                is_generalized_factoring = true;
            } else if (!pre_factors.empty() && *pre_factors.begin() != *eff_factors.begin()){
                // precondition on leaf A, but effect on leaf B
                is_center_op = true;
                is_generalized_factoring = true;
            }
        }
        if (!is_center_op){
            assert(eff_factors.size() == 1);
            op.set_affected_factor(*eff_factors.begin());
        } else {
            op.set_affected_factor(LeafFactorID::CENTER);
        }
    }

    if (is_generalized_factoring){
        cout << "Info: factoring is not a star factoring" << endl;
        profile = GENERAL;
    }

    fork_leaf = vector<bool>(g_leaves.size(), true);
    ifork_leaf = vector<bool>(g_leaves.size(), true);
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        size_t num_succ = interaction_graph.get_successors(factor).size();
        size_t num_pred = interaction_graph.get_predecessors(factor).size();
        if (num_succ > 0){
            fork_leaf[factor] = false;
            assert(!interaction_graph.is_fork());
            if (num_succ > 1 || interaction_graph.get_successors(factor).front() != LeafFactorID::CENTER){
                // dependency to at least one leaf factor
                assert(!interaction_graph.is_ifork());
                assert(!interaction_graph.is_strict_star());
                ifork_leaf[factor] = false;
            }
        }
        if (num_pred > 0){
            ifork_leaf[factor] = false;
            assert(!interaction_graph.is_ifork());
            if (num_pred > 1 || interaction_graph.get_predecessors(factor).front() != LeafFactorID::CENTER){
                // dependency to at least one leaf factor
                assert(!interaction_graph.is_fork());
                assert(!interaction_graph.is_strict_star());
                fork_leaf[factor] = false;
            }
        }
    }
    if (interaction_graph.is_fork()){
        assert(!is_generalized_factoring);
        profile = FORK;
        cout << "Info: factoring type set to fork, no non-fork leaf factors" << endl;
    } else if (interaction_graph.is_ifork()){
        assert(!is_generalized_factoring);
        profile = IFORK;
        cout << "Info: factoring type set to inverted-fork, no non-inverted-fork leaf factors" << endl;
    } else if (interaction_graph.is_strict_star()){
        assert(!is_generalized_factoring);
        cout << "Info: factoring is strict-star factoring, no inter-leaf dependencies" << endl;
    }

    // setup g_goals_per_factor
    // TODO check if each fork leaf contains a goal! what to do if not??
    // this should probably be assured by the get_factoring methods?!
    g_goals_per_factor = vector<vector<pair<int, int> > >(g_leaves.size());
    vector<int> indeces_to_remove;
    for (size_t g = 0; g < g_goal.size(); ++g){
        LeafFactorID affected_factor = g_belongs_to_factor[g_goal[g].first];
        if (affected_factor != LeafFactorID::CENTER){
            g_goals_per_factor[affected_factor].push_back(g_goal[g]);
            indeces_to_remove.push_back(g);
#ifdef DEBUG_FACTORING
            cout << "added fact to goal of factor " << affected_factor << ": "
                 << g_fact_names[g_goal[g].first][g_goal[g].second] << endl;
#endif
        }
    }
    if (abstain_type != ABSTAIN_TYPE::COMPUTE_FACTORING_RUN_STANDARD){
        // TODO instead of this hack, do not modify g_goal at all, but
        // introduce a g_center_goals variable
        vector<pair<int, int> >::iterator it = g_goal.begin();
        for (int i = indeces_to_remove.size() - 1; i >= 0; --i){
            g_goal.erase(it + indeces_to_remove[i]);
        }
    }
#ifdef DEBUG_FACTORING
    if (!g_goal.empty()){
        cout << "center goals:" << endl;
        for (size_t i = 0; i < g_goal.size(); ++i){
            cout << g_fact_names[g_goal[i].first][g_goal[i].second] << endl;
        }
    } else {
        cout << "no center goals" << endl;
    }
#endif

    vector<bool> precompute_leaf_state_space(g_leaves.size(), true);
    
    if (search_type == SAT || search_type == UNSAT){
        for (size_t i = 0; i < g_leaves.size(); ++i){
            uint64_t f_size = 1;
            for (size_t j = 0; j < g_leaves[i].size(); ++j){
                f_size *= g_variable_domain[g_leaves[i][j]];
                if (f_size > max_precompute_state_space_size){
                    precompute_leaf_state_space[i] = false;
                    break;
                }
            }
        }
    }
    if (leaf_type == LEAF_REPRESENTATION_TYPE::EXPLICIT){
        ExplicitStateCPG::set_precompute_leaf_state_spaces(precompute_leaf_state_space);
    }
}

void Factoring::print_factoring_statistics() const {
#ifdef DEBUG_FACTORING
    vector<bool> center(g_variable_domain.size(), true);
    cout << "final factoring:" << endl;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        cout << "leaf " << factor << ": ";
        for (int var : g_leaves[factor]){
            center[var] = false;
            cout << var << ", ";
        }
        cout << endl;
        for (size_t var_i = 0; var_i < g_leaves[factor].size(); ++var_i){
            cout << "   " << g_fact_names[g_leaves[factor][var_i]][0] << endl;
        }
    }
    cout << "center: " << endl;
    for (size_t i = 0; i < center.size(); ++i){
        if (center[i]){
            cout << "   " << g_fact_names[i][0] << endl;
        }
    }
#endif

    utils::HashState hash_state;
    feed(hash_state, g_leaves);
    cout << "Factoring hash: " << hash_state.get_hash32() << endl;

    cout << "number leaf factors: " << g_leaves.size() << endl;

    cout << g_center.size() << " variables in center factor" << endl;

    for (size_t i = 0; i < g_leaves.size(); ++i) {
        cout << g_leaves[i].size() << " variables in leaf factor " << i << endl;
    }
    
    uint64_t min_size = numeric_limits<uint64_t>::max();
    double avg_size = 0;
    uint64_t max_size = 0;
    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor){
        uint64_t f_size = 1;
        for (size_t j = 0; j < g_leaves[factor].size(); ++j){
            f_size *= g_variable_domain[g_leaves[factor][j]];
        }
        avg_size += f_size;
        min_size = min(min_size, f_size);
        max_size = max(max_size, f_size);
    }
    
    cout << "min leaf factor size: " << min_size << endl;
    cout << "average leaf factor size: " << (uint64_t)(avg_size / g_leaves.size()) << endl;
    cout << "max leaf factor size: " << max_size << endl;

    // mobility and flexibility
    vector<int> num_leaf_only_actions(g_leaves.size(), 0);
    vector<int> num_leaf_actions(g_leaves.size(), 0);


    // first in pair is number leaf actions, second is total number of affecting actions
    vector<vector<pair<size_t,size_t>>> fact_flexibility(g_variable_domain.size());
    for (size_t var = 0; var < g_variable_domain.size(); ++var){
        fact_flexibility[var].resize(g_variable_domain[var], make_pair(0, 0));
    }

    for (const Operator &op : g_operators) {
        if (op.get_affected_factor() == LeafFactorID::CENTER) {
            set<LeafFactorID> affected_leaf_factors;
            for (const Effect &eff : op.get_effects()) {
                if (g_belongs_to_factor[eff.var] != LeafFactorID::CENTER) {
                    affected_leaf_factors.insert(g_belongs_to_factor[eff.var]);
                }
                fact_flexibility[eff.var][eff.val].second++;
            }
            for (LeafFactorID factor : affected_leaf_factors) {
                num_leaf_actions[factor] += 1;
            }
        } else {
            num_leaf_actions[op.get_affected_factor()] += 1;
            num_leaf_only_actions[op.get_affected_factor()] += 1;
            for (const Effect &eff : op.get_effects()){
                fact_flexibility[eff.var][eff.val].first++;
                fact_flexibility[eff.var][eff.val].second++;
            }
        }
    }

    double sum_f_flex = 0.0;
    int num_facts = 0;
    for (LeafFactorID lid(0); lid < g_leaves.size(); ++lid){
        double l_f_flex = 0.0;
        int leaf_facts = 0;
        for (int var : g_leaves[lid]){
            for (int val = 0; val < g_variable_domain[var]; ++val){
                ++leaf_facts;
                ++num_facts;
                if (fact_flexibility[var][val].first > 0 && fact_flexibility[var][val].second > 0){
                    l_f_flex += (double) fact_flexibility[var][val].first / fact_flexibility[var][val].second;
                    sum_f_flex += (double) fact_flexibility[var][val].first / fact_flexibility[var][val].second;
                }
            }
        }
        cout << "avg fact flexibility for leaf " << lid << ": " << (l_f_flex / leaf_facts) << endl;
    }
    cout << "avg fact flexibility: " << (sum_f_flex / num_facts) << endl;

    int sum_mobility = 0;
    int min_mobility = g_operators.size();
    int max_mobility = 0;
    uint64_t product_mobility = 1;
    double sum_flexibility = 0;
    double min_flexibility = 1;
    double max_flexibility = 0;

    int f_mobility = 0;
    double f_flexibility = 0;

    for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor) {
        f_mobility = num_leaf_only_actions[factor];
        if (f_mobility == 0){
            // TODO this should be checked before
            cerr << "ERROR: non-mobile leaf factor " << factor << endl;
            for (int var : g_leaves[factor]){
                cerr << g_fact_names[var][0] << endl;
            }
            exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
        }
        sum_mobility += f_mobility;
        min_mobility = min(min_mobility, f_mobility);
        max_mobility = max(max_mobility, f_mobility);
        product_mobility *= f_mobility;

        f_flexibility = (double) f_mobility / (double) (num_leaf_actions[factor]);

        sum_flexibility += f_flexibility;
        min_flexibility = min(min_flexibility, f_flexibility);
        max_flexibility = max(max_flexibility, f_flexibility);
    }

    cout << "min mobility: " << min_mobility << endl;
    cout << "avg mobility: " <<  (double) sum_mobility / (double) g_leaves.size() << endl;
    cout << "max mobility: " << max_mobility << endl;
    cout << "sum mobility: " << sum_mobility << endl;
    cout << "product mobility: " << product_mobility << endl;
    cout << "min flexibility: " << min_flexibility << endl;
    cout << "avg flexibility: " << (double) sum_flexibility / (double) g_leaves.size() << endl;
    cout << "max flexibility: " << max_flexibility << endl;
    cout << "sum flexibility: " << sum_flexibility << endl;
}

bool Factoring::is_factoring_possible() const {
    // if there exists a variable that is affected by all actions, then
    // no mobile factoring can exist.
    vector<size_t> op_count(g_variable_domain.size(), 0);
    vector<bool> var_not_affected_by_some_op(g_variable_domain.size(), false);
    size_t num_vars_not_affected_by_some_op = 0;
    for (size_t i = 0; i < g_operators.size(); ++i){
        for (const Effect &eff : g_operators[i].get_effects()){
            if (op_count[eff.var] == i){
                ++op_count[eff.var];
            } else if (!var_not_affected_by_some_op[eff.var]) {
                var_not_affected_by_some_op[eff.var] = true;
                ++num_vars_not_affected_by_some_op;
                if (num_vars_not_affected_by_some_op == g_variable_domain.size()){
                    // no variable is affected by all actions
                    return true;
                }
            }
        }
    }
    for (size_t i = 0; i < op_count.size(); ++i){
        if (op_count[i] == g_operators.size()){
            cout << "No mobile factoring possible." << endl;
            return false;
        }
    }
    return true;
}

inline bool is_intersection_empty(const vector<int> &x, const vector<int> &y) {
    size_t i = 0;
    for (int a : x){
        for (; i < y.size(); ++i){
            if (a < y[i]){
                break;
            } else if (a == y[i]){
                return false;
            }
        }
    }
    return true;
}

bool Factoring::is_two_leaf_factoring_possible() const {
    init_action_schemas();
    for (size_t i = 0; i < action_schemas.size(); ++i){
        const auto &a1 = action_schemas[i];
        for (size_t j = i+1; j < action_schemas.size(); ++j){
            const auto &a2 = action_schemas[j];

            if (a1.eff_vars.size() + a2.eff_vars.size() >= g_variable_domain.size()){
                // TODO if we relax the notion of general star factorings to allow
                // for center actions without center effect, we can also get rid of this
                // check, since there will be center actions anyway (assuming the CG is weakly connected)

                // check if effects cover all variables of the task
                int var = 0;
                size_t i1 = 0;
                size_t i2 = 0;
                bool all_vars_covered = true;

                while (var < (int) g_variable_domain.size()){
                    if (var == a1.eff_vars[i1]){
                        ++var;
                        ++i1;
                        continue;
                    } else if (var == a2.eff_vars[i2]){
                        ++var;
                        ++i2;
                        continue;
                    } else if (var > a1.eff_vars[i1]){
                        ++i1;
                        continue;
                    } else if (var > a2.eff_vars[i2]){
                        ++i2;
                        continue;
                    }
                    all_vars_covered = false;
                    break;
                }
                if (all_vars_covered){
                    // the two potential leaves cover all variables => center empty
                    continue;
                }
            }
            if (!is_intersection_empty(a1.eff_vars, a2.eff_vars)){
                // potential leaves overlap
                continue;
            }
            if (!is_intersection_empty(a1.eff_vars, a2.pre_vars)){
                // actions of one leaf are preconditioned by variables in the other leaf
                continue;
            }
            if (!is_intersection_empty(a1.pre_vars, a2.eff_vars)){
                // actions of one leaf are preconditioned by variables in the other leaf
                continue;
            }
            // there exists a mobile factoring with at leaf two leaves: a1.eff_vars and a2.eff_vars
            return true;
        }
    }
    cout << "No mobile factoring with at least 2 leaves possible." << endl;
    return false;
}

inline void check_factoring(const vector<set<int>> &factoring) {
    // check that leaves are pairwise disjoint
    // TODO add more sanity checks?
    vector<bool> is_leaf_var(g_variable_domain.size(), false);
    for (const auto &leaf : factoring){
        for (int var : leaf){
            if (is_leaf_var[var]){
                cerr << "ERROR: invalid factoring, variable " << g_fact_names[var][0] << " appears in multiple leaves." << endl;
                utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
            }
            is_leaf_var[var] = true;
        }
    }
}

void Factoring::do_factoring_or_abstain() {
    verify_no_axioms_no_conditional_effects();

    // for calculating the factoring time
    if (factoring_time_limit > 0) {
        factoring_timer = utils::CountdownTimer(factoring_time_limit);
    } else {
        factoring_timer = utils::CountdownTimer(numeric_limits<double>::infinity());
    }

    FactoredVars best_factoring;
    if (is_factoring_possible() && (min_number_leaves < 2 || is_two_leaf_factoring_possible())){
        // simple sanity check to filter out tasks where no mobile factoring exists
        best_factoring = get_factoring();
        check_factoring(best_factoring);
    }

    assert(best_factoring.size() < (size_t) LeafFactorID::CENTER - 1);

    // save memory
    vector<set<size_t> >().swap(var_to_affecting_op);
    vector<ActionSchema>().swap(action_schemas);

    cout << "factoring time " << factoring_timer.get_elapsed_time() << endl;

    if (static_cast<int>(best_factoring.size()) < min_number_leaves){
        cout << "No factoring with at least " << min_number_leaves << " leaves found!" << endl;
        switch (abstain_type){
            case ABSTAIN_TYPE::ABSTAIN_ON_FAILURE : exit_with(utils::ExitCode::DECOUPLED_SEARCH_ABSTAINED);
            case ABSTAIN_TYPE::NO_SEARCH :
                            cout << "Factoring failed, do not perform search." << endl;
                            exit_with(utils::ExitCode::SEARCH_UNSOLVED_INCOMPLETE);
            case ABSTAIN_TYPE::COMPUTE_FACTORING_RUN_STANDARD: // fall through
            case ABSTAIN_TYPE::STANDARD_ON_FAILURE : return;
        }
    }

    apply_factoring(best_factoring);

    print_factoring_statistics();

    if (abstain_type == ABSTAIN_TYPE::NO_SEARCH) {
        cout << "Factoring complete, do not perform search." << endl;
        exit_with(utils::ExitCode::SEARCH_UNSOLVED_INCOMPLETE);
    }
}

Factoring::FactoredVars XShapeFactoring::get_factoring() {    ///////////////////////////  X-SHAPE

    FactoredVars best_factoring;
    if (maximize_mobility){
        best_factoring = get_fork_maximize_mobility();
    } else {
        best_factoring = get_fork_maximize_leaves();
    }

    vector<int> variables = vector<int>();

    for (size_t var = 0; var < g_variable_domain.size(); var++){
        bool is_leaf = false;
        for (size_t i = 0; i < best_factoring.size(); i++){
            if (best_factoring[i].find(var) != best_factoring[i].end()){
                is_leaf = true;
                break;
            }
        }
        if (!is_leaf){
            variables.push_back(var);
        }
    }

    cout << "found " << best_factoring.size() << " leaves" << endl;

    FactoredVars inv_fork;

    if (variables.size() > 0){
        // this happens e.g. in Movie, where the CG is not connected
        if (maximize_mobility){
            inv_fork = get_fork_maximize_mobility(true, variables);
        } else {
            inv_fork = get_fork_maximize_leaves(true, variables);
        }
    }

    int added = 0;

    // eliminate leaf -> leaf connections
    for (size_t i = 0; i < inv_fork.size(); ++i){
        bool is_connected = false;
        for (set<int>::iterator var = inv_fork[i].begin(); var != inv_fork[i].end(); ++var){
            vector<int> successors = causal_graph::get_causal_graph().get_successors(*var);
            for (size_t succ = 0; succ < successors.size(); succ++){
                for (size_t j = 0; j < best_factoring.size(); j++){
                    if (best_factoring[j].find(successors[succ]) != best_factoring[j].end()){
                        is_connected = true;
#ifdef DEBUG_FACTORING
                        cout << "ifork leaf " << i << " is connected to fork leaf " << j << ". need to discard it" << endl;
#endif
                    }
                }
                if (is_connected){
                    break;
                }
            }
            if (is_connected){
                break;
            }
        }
        if (!is_connected){
            best_factoring.push_back(inv_fork[i]);
            ++added;
        }
    }

    cout << "added " << added << " roots" << endl;

    if (static_cast<int>(best_factoring.size()) < min_number_leaves){

        if (maximize_mobility){
            best_factoring = get_fork_maximize_mobility(true);
        } else {
            best_factoring = get_fork_maximize_leaves(true);
        }

        cout << "found inv-fork factoring with " << best_factoring.size() << " leaves" << endl;

        if (static_cast<int>(best_factoring.size()) < min_number_leaves){
            return FactoredVars();
        }
    }

    return best_factoring;
}

Factoring::FactoredVars RandomFactoring::get_factoring() { //////////////////////////////  RANDOM
    // TODO implement factoring
    FactoredVars best_factoring(1);

    srand(time(NULL)); // TODO add support for getting seed via command line

    int64_t current_size = 1;

    for (size_t var = 0; var < g_variable_domain.size(); var++){
        if (rand() % 2 == 0){
            best_factoring[0].insert(var);
            current_size *= g_variable_domain[var];
        }
        if (max_leaf_size != 0 && current_size > max_leaf_size){
            best_factoring[0].erase(var);
            break;
        }
    }

    if (best_factoring[0].size() == g_variable_domain.size()){
        best_factoring[0].erase(rand() % g_variable_name.size());
    }
    if (best_factoring[0].size() == 0){
        best_factoring[0].insert(rand() % g_variable_name.size());
    }

    // TODO check if factoring is mobile

    return best_factoring;
}

Factoring::FactoredVars ForkFactoring::get_factoring() { ////////////////////////////////  (INVERTED) FORK

    FactoredVars factoring;
    if (maximize_mobility){
        factoring = get_fork_maximize_mobility(profile == IFORK);
    } else {
        factoring = get_fork_maximize_leaves(profile == IFORK);
    }

    if (static_cast<int>(factoring.size()) < min_number_leaves){
        return FactoredVars();
    }

    return factoring;
}

Factoring::FactoredVars IncidentArcsFactoring::get_factoring() {  ///////////////////// INCIDENT ARCS

    init_var_to_ops_map();

    // all variables sorted descendingly by number of incident arcs
    vector<vector<int> > variables;

    for (size_t var = 0; var < g_variable_domain.size(); ++var){
        size_t arcs = causal_graph::get_causal_graph().get_successors(var).size();
        arcs += causal_graph::get_causal_graph().get_predecessors(var).size();
        if (arcs >= variables.size()){
            variables.resize(arcs + 1);
        }
        variables[arcs].push_back(var);
    }

    FactoredVars best_factoring;
    int best_number_leaves = 0;

    vector<bool> discarded_leaves;

    set<int> leaf_vars;
    for (size_t var = 0; var < g_variable_domain.size(); ++var){
        leaf_vars.insert(var);
    }

    for (int arcs = variables.size() -1 ; arcs >= 0; --arcs){
        for (size_t cand = 0; cand < variables[arcs].size(); ++cand){

            if (factoring_timer.is_expired()){
                break;
            }

            leaf_vars.erase(variables[arcs][cand]);

            FactoredVars factoring = get_connected_components(leaf_vars);

            for (int i = factoring.size() - 1; i >= 0; --i){
                int64_t size = 1;
                for (int var : factoring[i]){
                    size *= g_variable_domain[var];
                    if (max_leaf_size != 0 && size > max_leaf_size){
                        break;
                    }
                }
                if (max_leaf_size != 0 && size > max_leaf_size){
                    factoring.erase(factoring.begin() + i);
                }
            }

            int number_leaves = static_cast<int>(factoring.size());
            if (number_leaves < best_number_leaves || number_leaves < min_number_leaves){
                // no need to perform the expensive frozen leaf check if it cannot
                // possibly result in more (enough) leaves
                continue;
            }
            vector<bool> discard_leaf = get_frozen_leaves(factoring);
            for (bool discard : discard_leaf){
                if (discard){
                    --number_leaves;
                }
            }

            if (number_leaves < min_number_leaves){
                continue;
            }

            bool replace = false;
            // tie-breaking for larger/smaller leaves with same number of leaves
            if (maximize_leaves && number_leaves > best_number_leaves){
                replace = true;
            } else if (!maximize_leaves && number_leaves >= best_number_leaves){
                replace = true;
            }

            if (replace){
                best_factoring = factoring;
                discarded_leaves = discard_leaf;
                best_number_leaves = number_leaves;
            }
        }
    }

    // put frozen leaves back to center
    for (int i = best_factoring.size() - 1; i >= 0; --i){
        if (discarded_leaves[i]){
            best_factoring.erase(best_factoring.begin() + i);
        }
    }

    if (static_cast<int>(best_factoring.size()) < min_number_leaves){
        return FactoredVars();
    }

#ifdef DEBUG_FACTORING
    cout << endl;                      // output factoring
    for (size_t l = 0; l < best_factoring.size(); ++l){
        cout << "leaf factor " << l << ":" << endl;
        for (set<int>::iterator it = best_factoring[l].begin(); it != best_factoring[l].end(); ++it){
            cout << "   " << g_fact_names[*it][0] << endl;
        }
    }
    cout << endl;
#endif

    return best_factoring;
}

Factoring::FactoredVars ForkFactoring::get_fork_maximize_leaves(bool inverted, vector<int> used_vars) const {             ///////////////////////// HELPER FUNCTIONS
    // TODO probably refactor and merge with get_fork_maximize_mobility method

    FactoredVars sccs = get_sccs(used_vars);

    FactoredVars best_factoring;

    if (sccs.size() == 1){
#ifdef DEBUG_FACTORING
        cout << "CG is a single SCC" << endl;
#endif
        return best_factoring;
    }

    typedef multimap<int64_t, pair<vector<int>, set<int> > > CandSCCs;
    // contains all leaf SCCs sorted by size
    CandSCCs canditate_sccs;

    bool all_leaves_fit_bound = true;

    for (size_t i = 0; i < sccs.size(); ++i){
        int64_t current_size = 1;
        bool is_leaf = true;

        for (int var : sccs[i]){
            if (max_leaf_size == 0 || current_size <= max_leaf_size){
                current_size *= g_variable_domain[var];
            }

            size_t bound = causal_graph::get_causal_graph().get_successors(var).size();
            if (inverted){
                bound = causal_graph::get_causal_graph().get_predecessors(var).size();
            }
            for (size_t succ = 0; succ < bound; ++succ){
                int succ_pred;
                if (inverted){
                    succ_pred = causal_graph::get_causal_graph().get_predecessors(var)[succ];
                } else {
                    succ_pred = causal_graph::get_causal_graph().get_successors(var)[succ];
                }

                if (used_vars.empty() || used_vars.size() == g_variable_domain.size()
                    || find(used_vars.begin(), used_vars.end(), succ_pred) != used_vars.end()){
                    if (sccs[i].find(succ_pred) == sccs[i].end()){
                        // SCC has successor/predecessor SCC
                        is_leaf = false;
                    }
                }
            }
        }

#ifdef DEBUG_FACTORING
        cout << "=========      " << (is_leaf ? "leaf " : "") << "SCC with " << sccs[i].size() << " variables" << endl;
        for (set<int>::iterator it = sccs[i].begin(); it != sccs[i].end(); ++it){
            cout << "   " << g_fact_names[*it][0] << endl;
        }
        cout << "=========      end SCC; has size " << current_size << endl;
#endif
        if (max_leaf_size == 0 || current_size <= max_leaf_size){
            if (is_leaf){
                best_factoring.push_back(sccs[i]);
            } else if (extend_leaves){
                canditate_sccs.insert(make_pair(current_size, make_pair(vector<int>(sccs[i].begin(), sccs[i].end()), set<int>())));
            }
        } else {
            all_leaves_fit_bound = false;
        }
    }
    bool change = true;
    while (extend_leaves && change && (!all_leaves_fit_bound || canditate_sccs.size() > 1)){
        change = false;

                // update interaction graph of remaining SCCs
        for (CandSCCs::iterator it = canditate_sccs.begin(); it != canditate_sccs.end(); ++it){
            set<int> &succ_pred_sccs = it->second.second;
            succ_pred_sccs.clear();

            const vector<int> &vars = it->second.first;

            for (size_t i = 0; i < vars.size(); ++i){
                bool found = true;
                size_t bound = causal_graph::get_causal_graph().get_successors(vars[i]).size();
                if (inverted){
                    bound = causal_graph::get_causal_graph().get_predecessors(vars[i]).size();
                }
                for (size_t var = 0; var < bound; ++var){
                    found = false;
                    int succ_pred;
                    if (inverted){
                        succ_pred = causal_graph::get_causal_graph().get_predecessors(vars[i])[var];
                    } else {
                        succ_pred = causal_graph::get_causal_graph().get_successors(vars[i])[var];
                    }
                    if (used_vars.empty() || used_vars.size() == g_variable_domain.size()
                        || find(used_vars.begin(), used_vars.end(), succ_pred) != used_vars.end()){
                        if (find(vars.begin(), vars.end(), succ_pred) != vars.end()){
                            found = true;
                            continue;
                        }
                        for (size_t j = 0; j < best_factoring.size(); ++j){
                            if (best_factoring[j].find(succ_pred) != best_factoring[j].end()){
                                succ_pred_sccs.insert(j);
                                found = true;
                                break;
                            }
                        }
                        if (!found){
                            break;
                        }
                    }
                }
                if (!found){
                    succ_pred_sccs.insert(-1);
                    break;
                }
            }
        }

        // try to augment an existing leaf with another SCC
        for (CandSCCs::iterator it = canditate_sccs.begin(); it != canditate_sccs.end(); ++it){
#ifdef DEBUG_FACTORING
            cout << "trying to augment leaf by candidate SCC:" << endl;
            for (size_t i = 0; i < it->second.first.size(); ++i){
                cout << "       " <<  g_fact_names[it->second.first[i]][0] << endl;
            }
            if (it->second.second.size() != 1){
                cout << "has more than 1 successor" << endl;
            }
            if (it->second.second.find(-1) != it->second.second.end()){
                cout << "has non leaf successors" << endl;
            }
#endif
            if (it->second.second.size() == 1 &&
                it->second.second.find(-1) == it->second.second.end()){
                // candidate only has a single CG successor/predecessor SCC that is also a leaf

                int successor = *it->second.second.begin();

                bool can_add = true;
                int64_t new_size = it->first;
                for (set<int>::const_iterator scc_it = best_factoring[successor].begin(); scc_it != best_factoring[successor].end(); ++scc_it){
                    new_size *= g_variable_domain[*scc_it];
                    if (max_leaf_size != 0 && new_size > max_leaf_size){
                        can_add = false;
                        break;
                    }
                }

                if (can_add){
                    vector<int> &cand = it->second.first;
                    for (size_t i = 0; i < cand.size(); ++i){
                        best_factoring[successor].insert(cand[i]);
                    }
                    canditate_sccs.erase(it);
                    change = true;
#ifdef DEBUG_FACTORING
                    cout << "merged" << endl;
#endif
                    break;
                }
#ifdef DEBUG_FACTORING
                else {
                    cout << "resulting leaf would exceed size limit" << endl;
                }
#endif
            }
        }
    }
    return best_factoring;
}

Factoring::FactoredVars ForkFactoring::get_fork_maximize_mobility(bool inverted, vector<int> used_vars) const {
    // perform the actual factoring

    typedef multimap<uint64_t, pair<vector<int>, set<int> > > CandSCCs;

#ifdef DEBUG_FACTORING
    cout << "maximizing leaf mobility" << endl;
#endif

    FactoredVars sccs = get_sccs(used_vars);

    FactoredVars best_factoring;

    if (sccs.size() == 1){
#ifdef DEBUG_FACTORING
    cout << "CG is a single SCC" << endl;
#endif
        return best_factoring;
    }

    vector<size_t> mobility(sccs.size(), 0);

    for (size_t i = 0; i < g_operators.size(); ++i){
        // only need to consider first effect, because each action
        // can only affect a single SCC, otherwise, eff-eff cycles between
        // another SCC => contradiction
        int var = g_operators[i].get_effects()[0].var;
        for (size_t j = 0; j < sccs.size(); ++j){
            if (sccs[j].find(var) != sccs[j].end()){
                ++mobility[j];
            }
        }
    }

    vector<int> vars_to_sccs(g_variable_domain.size());

    bool all_sscs_fit_bound = true;

    int64_t best_mobility = 1;

    int64_t current_size = 1;

    // contains all leaf SCCs sorted by size
    CandSCCs canditate_sccs;

    for (size_t i = 0; i < sccs.size(); ++i){
        assert(mobility[i] > 0);
#ifdef DEBUG_FACTORING
        cout << "mobility of SCC " << i << " = " << mobility[i] << endl;
#endif

        current_size = 1;
        bool is_leaf = true;

        for (set<int>::iterator it = sccs[i].begin(); it != sccs[i].end(); ++it){
            int var = *it;
            vars_to_sccs[var] = i;
            if (max_leaf_size == 0 || current_size <= max_leaf_size){
                current_size *= g_variable_domain[var];
            }

            size_t bound = causal_graph::get_causal_graph().get_successors(var).size();
            if (inverted){
                bound = causal_graph::get_causal_graph().get_predecessors(var).size();
            }
            for (size_t succ = 0; succ < bound; ++succ){
                int succ_pred;
                if (inverted){
                    succ_pred = causal_graph::get_causal_graph().get_predecessors(var)[succ];
                } else {
                    succ_pred = causal_graph::get_causal_graph().get_successors(var)[succ];
                }

                if (used_vars.empty() || used_vars.size() == g_variable_domain.size()
                    || find(used_vars.begin(), used_vars.end(), succ_pred) != used_vars.end()){
                    if (sccs[i].find(succ_pred) == sccs[i].end()){
                        // SCC has successor/predecessor SCC
                        is_leaf = false;
                    }
                }
            }
        }

#ifdef DEBUG_FACTORING
        cout << "=========      SCC with " << sccs[i].size() << " variables" << endl;
        for (set<int>::iterator it = sccs[i].begin(); it != sccs[i].end(); ++it){
            cout << "   " << g_fact_names[*it][0] << endl;
        }
        cout << "=========      end SCC; has size " << current_size << endl;
#endif
        if (max_leaf_size == 0 || current_size <= max_leaf_size){
            if (is_leaf){
                best_factoring.push_back(sccs[i]);
                if (average_mobility){
                    best_mobility += mobility[i];
                } else {
                    best_mobility *= mobility[i];
                }
            } else {
                canditate_sccs.insert(make_pair(current_size, make_pair(vector<int>(sccs[i].begin(), sccs[i].end()), set<int>())));
            }
        } else {
            all_sscs_fit_bound = false;
#ifdef DEBUG_FACTORING
            cout << " => too large" << endl;
#endif
        }
    }

#ifdef DEBUG_FACTORING
    cout << "number leaf factors with leaf-SCCs only: " << best_factoring.size() << " mobility = " << (average_mobility ? best_mobility / best_factoring.size() : best_mobility) << endl;
    cout << "number canditate sccs: " << canditate_sccs.size() << endl;
#endif

    FactoredVars current_factoring = best_factoring;

    bool change = !all_sscs_fit_bound || canditate_sccs.size() > 1;
    while (change){

        change = false;

        // update interaction graph of remaining SCCs
        for (CandSCCs::iterator it = canditate_sccs.begin(); it != canditate_sccs.end(); ++it){
            set<int> &succ_pred_sccs = it->second.second;
            succ_pred_sccs.clear();

            const vector<int> &vars = it->second.first;

            for (size_t i = 0; i < vars.size(); ++i){
                bool found = true;
                size_t bound = causal_graph::get_causal_graph().get_successors(vars[i]).size();
                if (inverted){
                    bound = causal_graph::get_causal_graph().get_predecessors(vars[i]).size();
                }
                for (size_t var = 0; var < bound; ++var){
                    found = false;
                    int succ_pred;
                    if (inverted){
                        succ_pred = causal_graph::get_causal_graph().get_predecessors(vars[i])[var];
                    } else {
                        succ_pred = causal_graph::get_causal_graph().get_successors(vars[i])[var];
                    }
                    if (used_vars.empty() || used_vars.size() == g_variable_domain.size()
                        || find(used_vars.begin(), used_vars.end(), succ_pred) != used_vars.end()){
                        if (find(vars.begin(), vars.end(), succ_pred) != vars.end()){
                            found = true;
                            continue;
                        }
                        for (size_t j = 0; j < current_factoring.size(); ++j){
                            if (current_factoring[j].find(succ_pred) != current_factoring[j].end()){
                                succ_pred_sccs.insert(j);
                                found = true;
                                break;
                            }
                        }
                        if (!found){
                            break;
                        }
                    }
                }
                if (!found){
                    succ_pred_sccs.insert(-1);
                    break;
                }
            }
        }


        // find best SCC to add to leaves
        CandSCCs::iterator best_successor_scc;
        int64_t successor_mobility = 0;

        for (CandSCCs::iterator it = canditate_sccs.begin(); it != canditate_sccs.end(); ++it){
            bool can_add = true;

            set<int> &succ_pred_sccs = it->second.second;

#ifdef DEBUG_FACTORING
            const vector<int> &variables = it->second.first;
            cout << "current SCC: " << variables.size() << " vars, size = " << it->first << endl;
            for (vector<int>::const_iterator d_it = variables.begin(); d_it != variables.end(); ++d_it){
                cout << "       " << g_fact_names[*d_it][0] << endl;
            }
#endif

            if (succ_pred_sccs.find(-1) != succ_pred_sccs.end()){
#ifdef DEBUG_FACTORING
                cout << "has non leaf-factor successors => drop for the moment" << endl;
#endif
                can_add = false;
            } else {
#ifdef DEBUG_FACTORING
                cout << "all successors are leaf factors => combining to new leaf factor" << endl;
#endif
                current_size = it->first;

                for (set<int>::iterator succ_it = succ_pred_sccs.begin(); succ_it != succ_pred_sccs.end(); ++succ_it){
                    const set<int> &successor = current_factoring[*succ_it];
                    for (set<int>::iterator succ_pred_vars = successor.begin(); succ_pred_vars != successor.end(); ++succ_pred_vars){
                        current_size *= g_variable_domain[*succ_pred_vars];
                        if (max_leaf_size != 0 && current_size > max_leaf_size){
                            break;
                        }
                    }
                    if (max_leaf_size != 0 && current_size > max_leaf_size){
                        break;
                    }
                }

                if (max_leaf_size != 0 && current_size > max_leaf_size){
                    can_add = false;
#ifdef DEBUG_FACTORING
                    cout << "resulting leaf factor would be too large" << endl;
#endif
                }
            }

            if (can_add){
                // reconstruct of which SCCs the current leaf factors consist
                int64_t new_mobility = 1;
                vector<set<int> > sccs(current_factoring.size() + 1);
                for (size_t i = 0; i < current_factoring.size(); ++i){
                    for (set<int>::iterator v_it = current_factoring[i].begin(); v_it != current_factoring[i].end(); ++v_it){
                        sccs[i].insert(vars_to_sccs[*v_it]);
                    }
                }
                const set<int> &succ_pred_sccs = it->second.second;
                set<int> factors_to_remove;
                for (set<int>::iterator succ_it = succ_pred_sccs.begin(); succ_it != succ_pred_sccs.end(); ++succ_it){
                    const set<int> &successors = current_factoring[*succ_it];
                    for (set<int>::iterator scc_it = successors.begin(); scc_it != successors.end(); ++scc_it){
                        sccs.back().insert(vars_to_sccs[*scc_it]);
                    }
                    factors_to_remove.insert(*succ_it);
                }
                sccs.back().insert(vars_to_sccs[it->second.first.front()]);// the new SCC

                for (set<int>::reverse_iterator rem_it = factors_to_remove.rbegin(); rem_it != factors_to_remove.rend(); ++rem_it){
                    FactoredVars::iterator r_it = sccs.begin() + *rem_it;
                    sccs.erase(r_it);
                }

                // compute mobility of potentially new factoring
                for (size_t i = 0; i < sccs.size(); ++i){
                    size_t mob = 0;
                    for (set<int>::iterator scc_it = sccs[i].begin(); scc_it != sccs[i].end(); ++scc_it){
                        mob += mobility[*scc_it];
                    }
                    if (average_mobility) {
                        new_mobility += mob;
                    } else {
                        new_mobility *= mob;
                    }
                }
                if (average_mobility) {
                    new_mobility /= sccs.size();
                }
#ifdef DEBUG_FACTORING
                cout << "new factoring would have mobility " << new_mobility << " and " << sccs.size() << " leaf factors" << endl;
#endif

                if (new_mobility > successor_mobility && static_cast<int>(sccs.size()) >= min_number_leaves){
#ifdef DEBUG_FACTORING
                    cout << "better than current best successor factoring => replace" << endl;
#endif
                    best_successor_scc = it;
                    successor_mobility = new_mobility;
                    change = true;
                }
            }
        }

        // update best factoring and check if any candidates left
        if (change){
            const set<int> &succ_pred_sccs = best_successor_scc->second.second;

            current_factoring.push_back(set<int>());
            set<int> &new_factor = current_factoring.back();

            set<int> factors_to_remove;
            for (set<int>::iterator succ_it = succ_pred_sccs.begin(); succ_it != succ_pred_sccs.end(); ++succ_it){
                set<int> succ_pred = current_factoring[*succ_it];

                factors_to_remove.insert(*succ_it);
                for (set<int>::iterator var_it = succ_pred.begin(); var_it != succ_pred.end(); ++var_it){
                    new_factor.insert(*var_it);
                }
            }

            const vector<int> &variables = best_successor_scc->second.first;

            for (size_t i = 0; i < variables.size(); ++i){
                new_factor.insert(variables[i]);
            }

            for (set<int>::reverse_iterator rem_it = factors_to_remove.rbegin(); rem_it != factors_to_remove.rend(); ++rem_it){
                FactoredVars::iterator r_it = current_factoring.begin() + *rem_it;
                current_factoring.erase(r_it);
            }

            canditate_sccs.erase(best_successor_scc);

            if (successor_mobility > best_mobility){
                best_factoring = current_factoring;
                best_mobility = successor_mobility;
#ifdef DEBUG_FACTORING
                cout << "found a new best factoring with " << best_factoring.size() << " leaf factors and mobility " << best_mobility << endl;
#endif
            }

            if (canditate_sccs.empty() || (all_sscs_fit_bound && canditate_sccs.size() == 1)){
#ifdef DEBUG_FACTORING
                cout << "no more candidates left, factoring completed" << endl;
#endif
                break;
            }
        }
    }

#ifdef DEBUG_FACTORING
    for (size_t i = 0; i < best_factoring.size(); i++){
        cout << "leaf factor " << i << endl;
        for (set<int>::iterator set_it = best_factoring[i].begin(); set_it != best_factoring[i].end(); ++set_it){
            cout << "   variable " << (*set_it) << " :"  << g_fact_names[*set_it][0] << endl;
        }
    }
    cout << "mobility: " << best_mobility << endl;
#endif

    return best_factoring;
}

Factoring::FactoredVars Factoring::get_sccs(const vector<int> &variables) const {
    vector<vector<int> > vars(g_variable_domain.size());
    size_t bound = variables.empty() ? g_variable_domain.size() : variables.size();
    for (size_t i = 0; i < bound; i++){
        if (variables.empty() || variables.size() == g_variable_domain.size()){
            // TODO the next line assumes that variables is sorted properly,
            // otherwise we need "variables[i]" instead of "i"
            vars[i] = causal_graph::get_causal_graph().get_successors(i);
        } else {
            for (int succ : causal_graph::get_causal_graph().get_successors(variables[i])){
                if (find(variables.begin(), variables.end(), succ) != variables.end()){
                    vars[variables[i]].push_back(succ);
                }
            }
        }
    }

    vector<vector<int> > found_sccs = sccs::compute_maximal_sccs(vars);
    FactoredVars real_sccs;

    for (const auto &scc : found_sccs){
        if (scc.size() != 1 || variables.empty() || variables.size() == g_variable_name.size()){
            // TODO this does not seem to work properly when variables is non-empty *and* does not contain all variables
            real_sccs.push_back(set<int>(scc.begin(), scc.end()));
        } else if (find(variables.begin(), variables.end(), scc[0]) != variables.end()){
            // TODO check this
            // this can happen if not all variables are in *variables*
            // the SCC class needs the input vector to be aligned very specifically
            real_sccs.push_back(set<int>(scc.begin(), scc.end()));
        }
    }

#ifdef DEBUG_FACTORING
    cout << "found " << real_sccs.size() << " SCCs" << endl;
#endif

    return real_sccs;
}

Factoring::FactoredVars Factoring::get_connected_components(const set<int> &variables) const {
    // TODO rewrite this function, it's super inefficient!
    FactoredVars components;

    vector<bool> vars(g_variable_domain.size(), false);
    for (int var : variables){
        vars[var] = true;
    }

    vector<int> var_comp_map(g_variable_domain.size(), -1);

    vector<bool> handled_var(g_variable_domain.size(), false);
    size_t number_handled_vars = 0;
    vector<int> open_vars;
    vector<bool> is_open_var(g_variable_domain.size(), false);

    while(number_handled_vars < variables.size()){
        if (open_vars.empty()){
            for (int var : variables){
                if (!handled_var[var]){
                    open_vars.push_back(var);
                    is_open_var[var] = true;
                    var_comp_map[var] = components.size();
                    components.push_back(set<int>());
                    components[var_comp_map[var]].insert(var);
                    break;
                }
            }
        }

        int curr = open_vars.back();
        open_vars.pop_back();
        is_open_var[curr] = false;

        if (handled_var[curr]){
            continue;
        }

        handled_var[curr] = true;
        ++number_handled_vars;

        for (int var : causal_graph::get_causal_graph().get_predecessors(curr)){
            if (vars[var] && !handled_var[var] && !is_open_var[var]){
                open_vars.push_back(var);
                is_open_var[var] = true;
                var_comp_map[var] = var_comp_map[curr];
                components[var_comp_map[var]].insert(var);
            }
        }
        for (int var : causal_graph::get_causal_graph().get_successors(curr)){
            if (vars[var] && !handled_var[var] && !is_open_var[var]){
                open_vars.push_back(var);
                is_open_var[var] = true;
                var_comp_map[var] = var_comp_map[curr];
                components[var_comp_map[var]].insert(var);
            }
        }
    }

    return components;
}

vector<bool> Factoring::get_frozen_leaves(const FactoredVars &components) const {
    vector<bool> is_frozen_factor(components.size(), true);
    vector<int> belongs_to_factor(g_variable_domain.size(), -1);
    size_t num_frozen = components.size();
    vector<bool> operator_seen(g_operators.size(), false);

    for (size_t i = 0; i < components.size(); ++i){
        for (int var : components[i]){
            belongs_to_factor[var] = i;
        }
    }

    for (size_t f = 0; f < components.size(); ++f) {
        for (int v : components[f]){
            for (int op : var_to_affecting_op[v]) {
                if (!operator_seen[op]) {
                    // if an operator has been handled by another leaf factor, it has to be a center action
                    operator_seen[op] = true;

                    bool center = false;
                    int eff_factor = -1;
                    for (const Effect &eff : g_operators[op].get_effects()) {
                        if (belongs_to_factor[eff.var] == -1){
                            center = true;
                            break;
                        } else if (eff_factor == -1){
                            eff_factor = belongs_to_factor[eff.var];
                        }  else if (eff_factor != belongs_to_factor[eff.var]){
                            center = true;
                            break;
                        }
                    }
                    if (center) {
                        continue;
                    }
                    int pre_factor = -1;
                    bool single_pre_factor = true;
                    for (const Condition &pre : g_operators[op].get_preconditions()) {
                        if (belongs_to_factor[pre.var] != -1){
                            if (pre_factor == -1){
                                pre_factor = belongs_to_factor[pre.var];
                            } else if (pre_factor != belongs_to_factor[pre.var]) {
                                single_pre_factor = false;
                                break;
                            }
                        }
                    }

                    if (single_pre_factor && (pre_factor == -1 || pre_factor == eff_factor)) {
                        // op has preconditions and effects on (at most) a single leaf factor
                        if (is_frozen_factor[f]) {
                            --num_frozen;
                            is_frozen_factor[f] = false;
                            if (num_frozen == 0) {
                                return is_frozen_factor;
                            }
                        }
                        break;
                    }
                }
            }
            if (!is_frozen_factor[f]) {
                break;
            }
        }
    }

    return is_frozen_factor;
}



/////////////////////////////////////////////////////////////////////////////////////////////// domain specific factorings


Factoring::FactoredVars SokobanFactoring::get_factoring() {

    FactoredVars best_factoring(1);

    cout << "factoring sokoban" << endl;

    for (size_t var = 0; var < g_variable_domain.size(); var++){
	if (g_fact_names[var][0].find("player") != string::npos){
	    best_factoring[0].insert(var);
	}
    }

    cout << endl;
    for (size_t var = 0; var < g_variable_domain.size(); var++){
        bool is_leaf = false;
        for (size_t l = 0; l < best_factoring.size(); l++){
            if (best_factoring[l].find(var) != best_factoring[l].end()){
                cout << "leaf " << l << ":    " << g_fact_names[var][0] << endl;
                is_leaf = true;
            }
        }
        if (!is_leaf){
            cout << "center:    " << g_fact_names[var][0] << endl;
        }
    }
    cout << endl;

    return best_factoring;
}

Factoring::FactoredVars OpenstacksFactoring::get_factoring() {

    vector<int> leaf_vars;

    for (size_t var = 0; var < g_variable_domain.size(); var++){
        if (g_fact_names[var][0].find("stacks-avail") == string::npos){
            leaf_vars.push_back(var);
        }
    }

    FactoredVars sccs = get_sccs(leaf_vars);

    FactoredVars best_factoring;

    for (size_t i = 0; i < sccs.size(); i++){
	int64_t current_size = 1;
	for (set<int>::iterator it = sccs[i].begin(); it != sccs[i].end(); ++it){
	    current_size *= g_variable_domain[*it];
	    if (max_leaf_size != 0 && current_size > max_leaf_size){
		break;
	    }
	}
	if (max_leaf_size == 0 || current_size <= max_leaf_size){
	    best_factoring.push_back(sccs[i]);
	}
    }


    cout << endl;
    for (size_t var = 0; var < g_variable_domain.size(); var++){
        bool is_leaf = false;
        for (size_t l = 0; l < best_factoring.size(); l++){
            if (best_factoring[l].find(var) != best_factoring[l].end()){
                cout << "leaf " << l << ":    " << g_fact_names[var][0] << endl;
                is_leaf = true;
            }
        }
        if (!is_leaf){
            cout << "center:    " << g_fact_names[var][0] << endl;
        }
    }
    cout << endl;


    return best_factoring;
}


Factoring::FactoredVars TPPConstrainedFactoring::get_factoring() {

    vector<int> leaf_vars;

    for (size_t var = 0; var < g_variable_domain.size(); var++){
        if (g_fact_names[var][0].find("money(level") == string::npos
            && g_fact_names[var][0].find("at(truck") == string::npos){
            if (!inverted){
                leaf_vars.push_back(var);
            }
        } else if (inverted){
            leaf_vars.push_back(var);
        }
    }

    FactoredVars sccs = get_sccs(leaf_vars);

    FactoredVars best_factoring;

    for (size_t i = 0; i < sccs.size(); i++){
        int64_t current_size = 1;
        for (set<int>::iterator it = sccs[i].begin(); it != sccs[i].end(); ++it){
            current_size *= g_variable_domain[*it];
            if (max_leaf_size != 0 && current_size > max_leaf_size){
                break;
            }
        }
        if (max_leaf_size == 0 || current_size <= max_leaf_size){
            best_factoring.push_back(sccs[i]);
        }
    }


    cout << endl;
    for (size_t var = 0; var < g_variable_domain.size(); var++){
        bool is_leaf = false;
        for (size_t l = 0; l < best_factoring.size(); l++){
            if (best_factoring[l].find(var) != best_factoring[l].end()){
                cout << "leaf " << l << ":    " << g_fact_names[var][0] << endl;
                is_leaf = true;
            }
        }
        if (!is_leaf){
            cout << "center:    " << g_fact_names[var][0] << endl;
        }
    }
    cout << endl;


    return best_factoring;
}

Factoring::FactoredVars DocTransferFactoring::get_factoring() {
    FactoredVars factoring;
    for (size_t var = 0; var < g_variable_domain.size(); ++var){
        if (strncmp(g_fact_names[var][0].c_str(), "Atom at(document", 16) == 0 || strncmp(g_fact_names[var][0].c_str(), "Atom at(fuel", 12) == 0){
            set<int> tmp;
            tmp.insert(var);
            factoring.push_back(tmp);
        }
    }
    return factoring;
}

Factoring::FactoredVars PegsolFactoring::get_factoring() {
    FactoredVars factoring(4);
    vector<vector<string> > factors(4, vector<string>(7));
    factors[0][0] = "Atom free(pos-0-2)";factors[0][1] = "Atom free(pos-0-3)";factors[0][2] = "Atom free(pos-0-4)";factors[0][3] = "Atom free(pos-1-2)";factors[0][4] = "Atom free(pos-1-3)";factors[0][5] = "Atom free(pos-1-4)";//factors[0][6] = "Atom free(pos-2-3)";
    factors[1][0] = "Atom free(pos-2-0)";factors[1][1] = "Atom free(pos-3-0)";factors[1][2] = "Atom free(pos-4-0)";factors[1][3] = "Atom free(pos-2-1)";factors[1][4] = "Atom free(pos-3-1)";factors[1][5] = "Atom free(pos-4-1)";//factors[1][6] = "Atom free(pos-3-2)";
    factors[2][0] = "Atom free(pos-5-2)";factors[2][1] = "Atom free(pos-5-3)";factors[2][2] = "Atom free(pos-5-4)";factors[2][3] = "Atom free(pos-6-2)";factors[2][4] = "Atom free(pos-6-3)";factors[2][5] = "Atom free(pos-6-4)";//factors[2][6] = "Atom free(pos-4-3)";
    factors[3][0] = "Atom free(pos-2-5)";factors[3][1] = "Atom free(pos-3-5)";factors[3][2] = "Atom free(pos-4-5)";factors[3][3] = "Atom free(pos-2-6)";factors[3][4] = "Atom free(pos-3-6)";factors[3][5] = "Atom free(pos-4-6)";//factors[3][6] = "Atom free(pos-3-4)";

    for (size_t var = 0; var < g_variable_domain.size(); ++var){
        for (size_t factor = 0; factor < factors.size(); ++factor){
            vector<string>::const_iterator it = find(factors[factor].begin(), factors[factor].end(), g_fact_names[var][0].c_str());
            if (it != factors[factor].end()){
                factoring[factor].insert(var);
                break;
            }
        }
    }
    return factoring;
}


void Factoring::add_options_to_parser(OptionParser &parser) {
    // TODO add docu
    parser.add_option<shared_ptr<PruningOptions>>(
        "pruning",
        "TODO",
        "dominance");

    vector<string> search_types;
    search_types.push_back("ASDA");
    search_types.push_back("SDA");
    search_types.push_back("SAT");
    search_types.push_back("UNSAT");
    parser.add_enum_option<DECOUPLED_SEARCH_TYPE>(
        "search_type",
        search_types,
        "TODO",
        "SDA",
        vector<string>());

    vector<string> leaf_types;
    leaf_types.push_back("EXPLICIT");
    leaf_types.push_back("SYMBOLIC");
    parser.add_enum_option<LEAF_REPRESENTATION_TYPE>(
            "leaf_representation",
            leaf_types,
            "TODO",
            "EXPLICIT",
            vector<string>());

    parser.add_option<shared_ptr<symbolic::SymDecoupledManagerOptions>>(
        "cudd_options",
        "TODO",
        OptionParser::NONE);

    vector<string> abstain_types;
    abstain_types.push_back("ABSTAIN_ON_FAILURE");
    abstain_types.push_back("STANDARD_ON_FAILURE");
    abstain_types.push_back("NO_SEARCH");
    abstain_types.push_back("COMPUTE_FACTORING_RUN_STANDARD");
    parser.add_enum_option<ABSTAIN_TYPE>(
        "abstain_type",
        abstain_types,
        "TODO",
        "ABSTAIN_ON_FAILURE",
        vector<string>());

    parser.add_option<int>(
        "max_leaf_size",
        "TODO",
        to_string(numeric_limits<int>::max() - 1));
    parser.add_option<int>(
        "build_state_space_size",
        "TODO",
        "10000");
    parser.add_option<int>(
        "min_num_leaves",
        "TODO",
        "2"
    );
    parser.add_option<int>(
        "factoring_time_limit",
        "TODO",
        "0"
    );
}

void ForkFactoring::add_options_to_parser(OptionParser &parser) {
    // TODO add docu
    parser.add_option<bool>(
        "maximize_mobility",
        "TODO",
        "false");
    parser.add_option<bool>(
        "average_mobility",
        "TODO",
        "false");
    parser.add_option<bool>(
        "extend_leaves",
        "TODO",
        "false"
    );
}

void IncidentArcsFactoring::add_options_to_parser(OptionParser &parser) {
    parser.add_list_option<shared_ptr<FactoringRanking>>(
            "rankings",
            "TODO",
            OptionParser::NONE);

    parser.add_option<bool>(
            "all_rankings",
            "TODO",
            "false"
    );

    parser.add_option<bool>(
            "maximize_leaves",
            "TODO",
            "false"
    );
}

static PluginTypePlugin<Factoring> _type_plugin(
    "Factoring",
    "Specification of the decoupling.");

static shared_ptr<Factoring> _parse_fork(OptionParser &parser) {
    // TODO docu
    Factoring::add_options_to_parser(parser);
    ForkFactoring::add_options_to_parser(parser);

    Options opts = parser.parse();

    if (!parser.dry_run()) {
        return make_shared<ForkFactoring>(opts);
    }

    return 0;
}

static shared_ptr<Factoring> _parse_ifork(OptionParser &parser) {
    // TODO docu
    Factoring::add_options_to_parser(parser);
    ForkFactoring::add_options_to_parser(parser);

    Options opts = parser.parse();

    if (!parser.dry_run()) {
        return make_shared<ForkFactoring>(opts, IFORK);
    }

    return 0;
}

static shared_ptr<Factoring> _parse_xshape(OptionParser &parser) {
    // TODO docu
    Factoring::add_options_to_parser(parser);
    ForkFactoring::add_options_to_parser(parser);

    Options opts = parser.parse();

    if (!parser.dry_run()) {
        return make_shared<XShapeFactoring>(opts);
    }

    return 0;
}

static shared_ptr<Factoring> _parse_incarcs(OptionParser &parser) {
    // TODO docu
    Factoring::add_options_to_parser(parser);
    IncidentArcsFactoring::add_options_to_parser(parser);

    Options opts = parser.parse();

    if (!parser.dry_run()) {
        return make_shared<IncidentArcsFactoring>(opts);
    }

    return 0;
}

static shared_ptr<Factoring> _parse_random(OptionParser &parser) {
    // TODO docu
    Factoring::add_options_to_parser(parser);

    Options opts = parser.parse();

    if (!parser.dry_run()) {
        return make_shared<RandomFactoring>(opts);
    }

    return 0;
}

//static Factoring *_parse_doctransfer(OptionParser &parser) {
//    // TODO docu
//    Factoring::add_options_to_parser(parser);
//
//    Options opts = parser.parse();
//
//    DocTransferFactoring *factoring = 0;
//    if (!parser.dry_run()) {
//        factoring = new DocTransferFactoring(opts);
//    }
//
//    return factoring;
//}
//
//static Factoring *_parse_pegsol(OptionParser &parser) {
//    // TODO docu
//    Factoring::add_options_to_parser(parser);
//
//    Options opts = parser.parse();
//
//    PegsolFactoring *factoring = 0;
//    if (!parser.dry_run()) {
//        factoring = new PegsolFactoring(opts);
//    }
//
//    return factoring;
//}

static Plugin<Factoring> _plugin_fork("fork", _parse_fork);
static Plugin<Factoring> _plugin_ifork("ifork", _parse_ifork);
static Plugin<Factoring> _plugin_xshape("xshape", _parse_xshape);
static Plugin<Factoring> _plugin_incarcs("incarcs", _parse_incarcs);
static Plugin<Factoring> _plugin_random("random", _parse_random);

//static Plugin<Factoring> _plugin_sokoban("sokoban", _parse_sokoban);
//static Plugin<Factoring> _plugin_tpp_const("tpp_const", _parse_tpp_const);
//static Plugin<Factoring> _plugin_itpp_const("itpp_const", _parse_itpp_const);
//static Plugin<Factoring> _plugin_doctransfer("doctransfer", _parse_doctransfer);
//static Plugin<Factoring> _plugin_pegsol("pegsol", _parse_pegsol);
