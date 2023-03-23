#include "mis_factoring.h"

#include "../option_parser.h"
#include "../plugin.h"
#include "../task_utils/causal_graph.h"


using namespace std;

namespace mis_factoring {
MaxIndependentSetFactoring::MaxIndependentSetFactoring(const Options &opts)
      : Factoring(opts),
        arg_minimize_center(opts.get<bool>("minimize_center")),
        arg_minimize_frozen(opts.get<bool>("minimize_frozen")),
        arg_merge_leaves_level(opts.get<int>("merge_leaves_level")),
        arg_find_all_mis(opts.get<bool>("find_all_mis")),
        arg_number_mis(opts.get<int>("number_mis")) {
    profile = STAR;
    cout << "using maximum independet set factoring profile - find all MIS: " << arg_find_all_mis
            << " minimize_center " << arg_minimize_center
            << " minimize frozen " << arg_minimize_frozen
            << " merge leaves level: " << arg_merge_leaves_level
            << " number MIS to consider: " << arg_number_mis
            << " ranking_features: ";
    if (!opts.contains("rankings")) {
        cout << "None" << endl;
    } else {
        arg_rankings = opts.get_list<FactoringRanking *>("rankings");
        for (FactoringRanking *ranking : arg_rankings) {
            cout << ranking->print_feature() << " ";
        }
        cout << endl;
    }
}

Factoring::FactoredVars MaxIndependentSetFactoring::get_factoring() {
    init_var_to_ops_map();

    NGraph cg_g = generate_ngraph();

    MIS mis;
    vector<boost::dynamic_bitset<> > found_mis;

    utils::CountdownTimer mis_timer(factoring_timer.get_remaining_time() * 0.9);
    found_mis = mis.get_mis(cg_g, arg_find_all_mis, mis_timer, arg_number_mis);

    // generate factoring
    vector<FactoredVars> max_ind_sets;
    for (const boost::dynamic_bitset<> &m : found_mis) {
        FactoredVars f;
        for (size_t it = 0; it < m.size(); ++it) {
            if (m[it]) {
                set<int> s;
                s.insert((int) it);
                f.push_back(s);
            }
        }
        max_ind_sets.push_back(f);
    }


    if (max_ind_sets.empty()) {
        return FactoredVars();
    }

    for (size_t i = 0; i < max_ind_sets.size(); ++i) {
        bool valid = check_factoring(max_ind_sets[i]);
        if (!valid) {
            cerr << "ERROR: illegal factoring" << endl;
            exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
        }
    }
    //max_ind_sets = minimize_center(max_ind_sets, cg_g);
    vector<int> c_rm(max_ind_sets.size(),0);
    vector<int> f_rm(max_ind_sets.size(),0);
    vector<int> f_c(max_ind_sets.size(),0);
    for (size_t i = 0; i < max_ind_sets.size(); ++i) {
        optimize_feature(max_ind_sets[i], cg_g, f_rm[i], c_rm[i], f_c[i]);
        if (factoring_timer.is_expired()) {
            break;
        }
    }
    size_t max = 0;
    vector<VarInt> max_rank(arg_rankings.size(), VarInt(0));
    for (size_t i = 0; i < max_ind_sets.size(); ++i) {
        const FactoredVars &m = max_ind_sets[i];
        bool update = false;
        vector<VarInt> rankings;
        uint64_t n = 0;
        for (FactoringRanking *ranking : arg_rankings) {
            VarInt vi(ranking->get_rank(m));
            rankings.push_back(vi);
            if (rankings[n] > max_rank[n]) {
                update = true;
            }
            ++n;
        }
        if (update) {
            assert(rankings.size() == arg_rankings.size());
            max = i;
            max_rank = rankings;
        }
    }
    FactoredVars final_factoring = max_ind_sets[max];

#ifdef DEBUG_FACTORING
    cout << "optimized MIS: " << endl;
    for(size_t i = 0; i < final_factoring.size(); i++){
        cout << "(";
        for (set<int>::iterator it = final_factoring[i].begin(); it != final_factoring[i].end(); ++it) {
            cout << *it << " ";
        }
        cout << ")" << endl;
    }
#endif
    cout << "Minimized center, variables removed: " << c_rm[max] << endl;
    cout << "Frozen candidates: " << f_c[max] << endl;

    if (!arg_rankings.empty()) {
        cout << "Ranking of Factoring: ";
        for (size_t i = 0; i < arg_rankings.size(); ++i){
            cout << "   ";
            arg_rankings[i]->get_rank(final_factoring).dump_number();
        }
    }

    // push frozen leaves back in center
    int f_rm_max = f_rm[max];

    vector<bool> frozen_leaves = get_frozen_leaves(final_factoring);
    for (int i = frozen_leaves.size() - 1; i >= 0; --i) {
        if (frozen_leaves[i]) {
            final_factoring.erase(final_factoring.begin() + i);
            f_rm_max++;
        }
    }

    cout << "Removed frozen leaves: " << f_rm_max << endl;
    cout << "Number of factors: " << final_factoring.size() << endl;

    bool valid = check_factoring(final_factoring);
    if (!valid) {
        cerr << "ERROR: invalid factoring" << endl;
        exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
    }

    return final_factoring;
}

NGraph MaxIndependentSetFactoring::generate_ngraph() const {
    // build neighbour representation of causal graph (easier to modify)
    // graph of vars (var -> neighbours)
    NGraph cg_g(g_variable_domain.size(), boost::dynamic_bitset<>(g_variable_domain.size()));
    for (size_t var = 0; var < g_variable_domain.size(); ++var) {
        cg_g[var].set(var);
        for (auto pre : causal_graph::get_causal_graph().get_predecessors(var)) {
            cg_g[var].set(pre);
        }
        for (auto succ : causal_graph::get_causal_graph().get_successors(var)) {
            cg_g[var].set(succ);
        }
    }
    return cg_g;
}

bool MaxIndependentSetFactoring::check_factoring(const FactoredVars &
#ifdef DEBUG_FACTORING
f
#endif
) const {
    bool valid = true;
#ifdef DEBUG_FACTORING
    vector<int> vars;
    for (size_t var = 0; var < g_variable_domain.size(); var++) {
        vars.push_back(var);
    }
    vector<int> var_to_factor(vars.size(), -1);
    for (size_t i = 0; i < f.size(); i++) {
        for (set<int>::iterator it = f[i].begin(); it != f[i].end(); ++it) {
            var_to_factor[*it] = i;
        }
    }
    map<int, pair<set<int>,set<int>>> ig;
    for (size_t i = 0; i < f.size(); i++) {
        set<int> parents;
        set<int> children;
        for (set<int>::iterator it = f[i].begin(); it != f[i].end(); ++it) {
            for (size_t pre = 0; pre < causal_graph::get_causal_graph().get_predecessors(vars[*it]).size(); pre++) {
                int var = causal_graph::get_causal_graph().get_predecessors(vars[*it])[pre];
                parents.insert(var_to_factor[var]);
            }
            for (size_t succ = 0; succ < causal_graph::get_causal_graph().get_successors(vars[*it]).size(); succ++) {
                int var = causal_graph::get_causal_graph().get_successors(vars[*it])[succ];
                children.insert(var_to_factor[var]);
            }
        }
        ig.insert(make_pair(i, make_pair(parents, children)));
    }
    for (map<int, pair<set<int>,set<int>>>::iterator it = ig.begin(); it != ig.end(); ++it) {
        for (set<int>::iterator p = it->second.first.begin(); p != it->second.first.end(); ++p) {
            if (it->first != -1 && (*p != it->first && *p != -1)) {
                valid = false;
            }
        }
        for (set<int>::iterator c = it->second.second.begin(); c != it->second.second.end(); ++c) {
            if (it->first != -1 && (*c != it->first && *c != -1)) {
                valid = false;
            }
        }
    }

    cout << "Factoring: " << endl;
    for (map<int, pair<set<int>,set<int>>>::iterator it = ig.begin(); it != ig.end(); ++it) {
        cout << "   Factor: " << it->first << endl;
        cout << "       Parents: ";
        for (set<int>::iterator p = it->second.first.begin(); p != it->second.first.end(); ++p) {
            if (it->first != -1 && (*p != it->first && *p != -1)) {
                valid = false;
                cout << " invalid parent: " << *p;
            } else {
                cout << *p << " ";
            }
        }
        cout << endl;
        cout << "       Children: ";
        for (set<int>::iterator c = it->second.second.begin(); c != it->second.second.end(); ++c) {
            if (it->first != -1 && (*c != it->first && *c != -1)) {
                valid = false;
                cout << " invalid child: " << *c;
            } else {
                cout << *c << " ";
            }
        }
        cout << endl;
    }
#endif
    return valid;
}

void MaxIndependentSetFactoring::optimize_feature(FactoredVars &mis, const NGraph &g, int &f_rm, int &c_rm, int &frozen_candidates) const {
    if (!arg_minimize_center) {
        return;
    }

    set<int> center;
    vector<bool> in_center(g_variable_domain.size(), true);
    vector<int> var_to_factor(g_variable_domain.size(), -1);
    for (size_t i = 0; i < mis.size(); ++i) {
        for (int var : mis[i]){
            in_center[var] = false;
            var_to_factor[var] = i;
        }
    }
    for (size_t var = 0; var < in_center.size(); ++var) {
        if (in_center[var]) {
            assert(var_to_factor[var] == -1);
            center.insert(var);
        }
    }

    bool removed_frozen_leaves = false;
    FactoredVars best_factoring(mis);
    vector<VarInt> best_ranking;
    for (size_t i = 0; i < arg_rankings.size(); ++i) {
        VarInt vi(arg_rankings[i]->get_rank(mis));
        best_ranking.push_back(vi);
    }
    int best_c_rm = 0;
    int best_f_rm = 0;

    while (true) {
        if (factoring_timer.is_expired()){
            break;
        }
        vector<int> candidates; // pos -> var
        vector<int> candidates_to_leaf; // pos -> leaf

        // collect candidates (center vars with one leaf neighbour)
        for (int c : center) {
            set<int> neighbour_leaves;
            for (size_t n = 0; n < g[c].size(); ++n) {
                if (g[c][n]) {
                    if (!in_center[n]) {
                        neighbour_leaves.insert(var_to_factor[n]);
                    }
                }
            }
            if (neighbour_leaves.size() == 1) {
                // check leaf factor size
                int64_t f_size = g_variable_domain[c];
                for (int v : mis[*neighbour_leaves.begin()]) {
                    f_size *= g_variable_domain[v];
                }
                if (max_leaf_size == 0 || f_size <= max_leaf_size) {
                    candidates.push_back(c);
                    candidates_to_leaf.push_back(*neighbour_leaves.begin());
                }
            }
        }
        if (!candidates.empty()) {
            size_t max = 0;
            vector<VarInt> local_best_ranking;
            for (size_t i = 0; i < arg_rankings.size(); ++i) {
                VarInt vi(arg_rankings[i]->get_rank(mis));
                local_best_ranking.push_back(vi);
            }
            for (size_t i = 0; i < candidates.size(); ++i) {
                int candidate = candidates[i];
                int leaf = candidates_to_leaf[i];

                mis[leaf].insert(candidate);

                // call ranking (multiple rankings?)
                bool update = false;
                vector<VarInt> rankings;
                for (size_t n = 0; n < arg_rankings.size(); ++n) {
                    rankings.push_back(VarInt(arg_rankings[n]->get_rank(mis)));
                    if (rankings[n] >= local_best_ranking[n]) {
                        if (rankings[n] > local_best_ranking[n]) {
                            update = true;
                        } else {
                            continue;
                        }
                    }
                    break;
                }
                if (update) {
                    if (rankings.size() < arg_rankings.size()) {
                        for (size_t j = rankings.size(); j < arg_rankings.size(); ++j) {
                            VarInt vi(arg_rankings[j]->get_rank(mis));
                            rankings.push_back(vi);
                        }
                    }
                    max = i;
                    local_best_ranking = rankings;
                }
                mis[leaf].erase(candidate);
            }

            // if no local max is found, pick first candidate
            // TODO pick candidate with least center neighbours, which are connected to different leaves
            int candidate = candidates[max];
            int leaf = candidates_to_leaf[max];
            // and push it into the respective leaf
            mis[leaf].insert(candidate);
            var_to_factor[candidate] = leaf;
            in_center[candidate] = false;
            center.erase(candidate);
            c_rm++;

            // check if global best factoring has to be updated
            bool update_global = false;
            for (size_t n = 0; n < arg_rankings.size(); ++n) {
                if (local_best_ranking[n] >= best_ranking[n]) {
                    if (local_best_ranking[n] > best_ranking[n]) {
                        update_global = true;
                    } else {
                        continue;
                    }
                }
                break;
            }
            if (update_global) {
                assert(best_ranking.size() == arg_rankings.size());
                assert(local_best_ranking.size() == arg_rankings.size());
                best_ranking = local_best_ranking;
                best_factoring = mis;
                best_c_rm = c_rm;
                best_f_rm = f_rm;
            }
        } else {
            if (arg_merge_leaves_level > 0 && !removed_frozen_leaves) {

                vector<int> merged_leaves_counter(mis.size(), 0);

                while (true) {
                    vector<int> merge_candidates;
                    vector<set<int>> merge_candidates_to_leaves;

                    // try to merge frozen leaves
                    // collect candidates (connected to frozen vars + max 1 unfrozen var)
                    for (int var : center) {
                        set<int> neighbour_leaves;
                        int max_merge_count = 0;
                        for (size_t n = 0; n < g[var].size(); ++n) {
                            if (g[var][n]) {
                                if (!in_center[n]) {
                                    neighbour_leaves.insert(var_to_factor[n]);
                                    if (merged_leaves_counter[var_to_factor[n]] > max_merge_count) {
                                        max_merge_count = merged_leaves_counter[var_to_factor[n]];
                                    }
                                }
                            }
                        }
                        if (neighbour_leaves.size() > 1 && max_merge_count < arg_merge_leaves_level) {
                            // check leaf factor size
                            int64_t f_size = g_variable_domain[var];
                            for (int f : neighbour_leaves) {
                                for (int v : mis[f]) {
                                    f_size *= g_variable_domain[v];
                                }
                            }
                            if ((max_leaf_size == 0 || f_size <= max_leaf_size) &&
                                    min_number_leaves <= static_cast<int>(mis.size() - neighbour_leaves.size() + 1)) {
                                merge_candidates.push_back(var);
                                merge_candidates_to_leaves.push_back(neighbour_leaves);
                            }
                        }
                    }

                    // select best candidate
                    if (!merge_candidates.empty()) {
                        size_t max_elem = 0;
                        vector<VarInt> local_best_ranking;
                        for (size_t i = 0; i < arg_rankings.size(); ++i) {
                            VarInt vi(arg_rankings[i]->get_rank(mis));
                            local_best_ranking.push_back(vi);
                        }
                        for (size_t i = 0; i < merge_candidates.size(); ++i) {
                            FactoredVars new_mis(mis);
                            set<int> new_leaf;
                            new_leaf.insert(merge_candidates[i]);
                            for (int l : merge_candidates_to_leaves[i]) {
                                for (int v : mis[l]) {
                                    new_leaf.insert(v);
                                }
                                new_mis[l].clear();
                            }
                            new_mis.push_back(new_leaf);

                            for (int m = new_mis.size() - 1; m >= 0; --m) {
                                if (new_mis[m].empty()){
                                    new_mis.erase(new_mis.begin() + m);
                                }
                            }

                            bool update = false;
                            vector<VarInt> rankings;
                            for (size_t n = 0; n < arg_rankings.size(); ++n) {
                                rankings.push_back(VarInt(arg_rankings[n]->get_rank(new_mis)));
                                if (rankings[n] >= local_best_ranking[n]) {
                                    if (rankings[n] > local_best_ranking[n]) {
                                        update = true;
                                    } else {
                                        continue;
                                    }
                                }
                                break;
                            }
                            if (update) {
                                if (rankings.size() < arg_rankings.size()) {
                                    for (size_t i = rankings.size(); i < arg_rankings.size(); ++i) {
                                        VarInt vi(arg_rankings[i]->get_rank(mis));
                                        rankings.push_back(vi);
                                    }
                                }
                                max_elem = i;
                                local_best_ranking = rankings;
                            }
                        }

                        set<int> new_leaf;
                        int c = merge_candidates[max_elem];
                        new_leaf.insert(c);
                        in_center[c] = false;
                        center.erase(c);
                        c_rm++;
                        int max_merge_counter = 0;
                        for (int l : merge_candidates_to_leaves[max_elem]) {
                            for (int v : mis[l]) {
                                new_leaf.insert(v);
                            }
                            mis[l].clear();
                            if (merged_leaves_counter[l] > max_merge_counter) {
                                max_merge_counter = merged_leaves_counter[l];
                            }
                        }
                        mis.push_back(new_leaf);
                        merged_leaves_counter.push_back(max_merge_counter + 1);

                        for (int i = mis.size() - 1; i >= 0; --i) {
                            if (mis[i].empty()) {
                                mis.erase(mis.begin() + i);
                                merged_leaves_counter.erase(merged_leaves_counter.begin() + i);
                            }
                        }
                        assert(mis.size() == merged_leaves_counter.size());

                        // check if global best factoring has to be updated
                        bool update_global = false;
                        for (size_t n = 0; n < arg_rankings.size(); ++n) {
                            if (local_best_ranking[n] >= best_ranking[n]) {
                                if (local_best_ranking[n] > best_ranking[n]) {
                                    update_global = true;
                                } else {
                                    continue;
                                }
                            }
                            break;
                        }
                        if (update_global) {
                            assert(best_ranking.size() == arg_rankings.size());
                            assert(local_best_ranking.size() == arg_rankings.size());
                            best_ranking = local_best_ranking;
                            best_factoring = mis;
                            best_c_rm = c_rm;
                            best_f_rm = f_rm;
                        }

                        for (size_t f = 0; f < mis.size(); ++f){
                            for (int var : mis[f]){
                                var_to_factor[var] = f;
                            }
                        }

                    } else {
                        break;
                    }
                }
            }
            if (!removed_frozen_leaves) {
                // push frozen leaves back in center
                removed_frozen_leaves = true;

                f_rm = 0;
                vector<bool> frozen_leaves = get_frozen_leaves(mis);
                for (int i = frozen_leaves.size() - 1; i >= 0; --i) {
                    if (frozen_leaves[i]) {
                        for (int v : mis[i]) {
                            in_center[v] = true;
                            center.insert(v);
                            var_to_factor[v] = -1;
                        }
                        mis.erase(mis.begin() + i);
                        f_rm++;
                    }
                }

                if (f_rm == 0 || mis.empty()) {
                    // removed no frozen leaves or no leaves left
                    break;
                } else if (!arg_minimize_frozen) {
                    break;
                } else {
                    frozen_candidates = 0;
                    // only continue to minimize center, including frozen leaves, if minimize_frozen = true
                    for (int var : center) {
                        set<int> neighbour_leaves;
                        for (size_t n = 0; n < g[var].size(); ++n) {
                            if (g[var][n]) {
                                if (!in_center[n]) {
                                    neighbour_leaves.insert(var_to_factor[n]);
                                }
                            }
                        }
                        if (neighbour_leaves.size() == 1) {
                            ++frozen_candidates;
                        }
                    }
                    if (frozen_candidates == 0) {
                        break;
                    } else {
                        var_to_factor.clear();
                        for (size_t i = 0; i < mis.size(); i++) {
                            for (set<int>::iterator it = mis[i].begin(); it != mis[i].end(); ++it) {
                                var_to_factor[*it] = i;
                            }
                        }
                        continue;
                    }
                }
            } else {
                break;
            }
        }
    }
    mis = best_factoring;
    c_rm = best_c_rm;
    f_rm = best_f_rm;
}

void MaxIndependentSetFactoring::add_options_to_parser(OptionParser &parser) {
    // TODO add docu
    parser.add_option<bool>(
            "minimize_center",
            "TODO",
            "true");

    parser.add_option<bool>(
            "minimize_frozen",
            "TODO",
            "true");

    parser.add_option<int>(
            "merge_leaves_level",
            "TODO",
            "0");

    parser.add_option<bool>(
            "find_all_mis",
            "TODO",
            "false");

    parser.add_option<int>(
            "number_mis",
            "TODO",
            "1");

    parser.add_list_option<shared_ptr<FactoringRanking>>(
            "rankings",
            "TODO",
            "");
}

static shared_ptr<Factoring> _parse_mis(OptionParser &parser) {
    // TODO docu
    Factoring::add_options_to_parser(parser);
    MaxIndependentSetFactoring::add_options_to_parser(parser);

    Options opts = parser.parse();

    if (!parser.dry_run()) {
        return make_shared<MaxIndependentSetFactoring>(opts);
    }

    return 0;
}

static Plugin<Factoring> _plugin_mis("mis", _parse_mis);
}
