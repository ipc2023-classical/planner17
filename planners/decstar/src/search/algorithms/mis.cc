#include "mis.h"

#include "../globals.h" // TODO get rid of this
#include "../utils/countdown_timer.h"
#include "../utils/hash.h"

#include <algorithm>
#include <cassert>
#include <iostream>
#include <list>
#include <stack>
#include <unordered_map>


using namespace std;


vector<boost::dynamic_bitset<>> MIS::get_mis(const NGraph& g, bool arg_find_all, const utils::CountdownTimer &timer, size_t arg_number_mis) const {

#ifdef DEBUG_FACTORING
    cout << "find mis for graph of size: " << g.size() << endl;
    print_graph(g);
#endif
    vector<const Subgraph *> mis_to_subgraph;
    vector<Subgraph> subgraphs;
    unordered_map<size_t,size_t> hash_to_subgraph;

    vector<int> first_mis;
    boost::dynamic_bitset<> elem = boost::dynamic_bitset<>(g.size());
    elem.flip();
    Subgraph sg = Subgraph(utils::get_hash(elem), &subgraphs, 0, true, 0, g.size());
    hash_to_subgraph[utils::get_hash(elem)] = subgraphs.size();
    subgraphs.push_back(sg);
    vector<size_t> leaves;

    list<NGraph> stack;
    stack.push_front(g);

    size_t mis_steps = 0;

    while (!stack.empty() && !timer.is_expired()) {
        ++mis_steps;

        NGraph g = stack.front();
        stack.pop_front();
        boost::dynamic_bitset<> subelems = ngraph_to_bitset(g);
        size_t current_hash = utils::get_hash(subelems);
        size_t parent_pos = hash_to_subgraph[current_hash];
        Subgraph *current_subgraph = &subgraphs[parent_pos];

        size_t only_elem = 0;
        size_t g_size = 0;
        for (size_t i = 0; i < g.size(); ++i){
            if (!g[i].none()){
                if (g_size == 0){
                    only_elem = i;
                }
                g_size++;
            }
        }
        if (g_size <= 1) {
            if (g_size == 1) {
                current_subgraph->add_mis_elems(only_elem);
            }
            leaves.push_back(parent_pos);
        } else {
            ConComp connected_components;
            CtoCCMap c_to_cc_map(g_variable_domain.size(),-1);
            find_connected_components(g, &c_to_cc_map, &connected_components);
            if (connected_components.size() > 1) {
                boost::dynamic_bitset<> cc_b(g.size(), 0);
                for (set<int> c:connected_components) {
                    set<int> cc = c;
                    int x = 0;
                    for (int c: cc) {
                        cc_b[c] = true;
                        ++x;
                    }
                }
                NGraph g_without_c = remove_components(g, cc_b);
                vector<size_t> ch;
                vector<size_t> c_hashs;
                vector<NGraph> c_graphs;

                boost::dynamic_bitset<> bs = ngraph_to_bitset(g_without_c);
                for (set<int> c:connected_components) {
                    size_t pos1 = subgraphs.size() + ch.size();
                    ch.push_back(pos1);
                    NGraph g_c(g_variable_domain.size(), boost::dynamic_bitset<>(g_variable_domain.size()));
                    for (int v:c) {
                        for (int v2:c) {
                            if (g[v][v2]) {
                                g_c[v].set(v2);
                            }
                        }
                    }
                    size_t h1 = utils::get_hash(ngraph_to_bitset(g_c));
                    c_hashs.push_back(h1);
                    c_graphs.push_back(g_c);
                }

                assert(c_hashs.size() == ch.size());
                int offset = 0;
                for (size_t i = 0; i < c_hashs.size(); ++i) {
                    size_t hash = c_hashs[i];

                    // test whether subgraph exists already
                    if (hash_to_subgraph.find(hash) != hash_to_subgraph.end()) {
                        size_t new_pos = hash_to_subgraph[hash];
                        Subgraph *twin = &subgraphs[hash_to_subgraph[hash]];
                        twin->add_parent(parent_pos, i);
                        // mapped to different child,
                        // however this child will never again contact its parent
                        ch[i] = new_pos;
                        c_hashs[i] = 0;
                        offset++;
                    } else if (offset > 0){
                        ch[i] -= offset;
                    }
                }
                current_subgraph->add_children(ch, false);
                for (size_t i = 0; i < c_hashs.size(); ++i) {
                    size_t hash = c_hashs[i];
                    if (hash != 0) {
                        Subgraph c = Subgraph(hash, &subgraphs, parent_pos, false, i, g.size());
                        hash_to_subgraph[hash] = ch[i];
                        subgraphs.push_back(c);
                        stack.push_front(c_graphs[i]);
                    }

                }
            } else {
                // find w and v such that N(w) sub_eq N(v), discard v
                int v1 = -1;
                int w = -1;
                bool found = false;
                bool equal = false;
                set<pair<int,int>> eq_pairs;
                for (size_t i = 0; i < g.size() && !found; ++i) {
                    if (!g[i].none()) {
                        for (size_t n = 0; n < g[i].size(); ++n) {
                            if (g[i][n]) {
                                if (n != i) {
                                    if (g[i].count() >= g[n].count()) {
                                        bool subset = g[n].is_subset_of(g[i]);

                                        if (subset) {
                                            if (g[i].count() == g[n].count()) {
                                                equal = true;
                                                eq_pairs.insert(make_pair(i, n));
                                            }
                                            found = true;
                                            w = n;
                                            v1 = i;
                                            break;
                                        }

                                    } else if (g[i].size() < g[n].size()) {
                                        bool subset = g[i].is_subset_of(g[n]);

                                        if (subset) {
                                            found = true;
                                            w = i;
                                            v1 = n;
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                if (found) {
                    if (false && eq_pairs.size() > 1){
                        cout << "multiple dominance equality pairs found!" << endl;
                        print_graph(g);
                        cout << "pairs: ";
                        for (pair<int,int> p: eq_pairs){
                            cout << " (" << p.first << ", " << p.second << ")";
                        }
                        cout << endl;
                    }

                    if (equal && arg_find_all){
                        assert(w != -1);
                        assert(v1 != -1);
                        NGraph g_without_v = remove_components(g, v1);
                        NGraph g_without_w = remove_components(g, w);
                        size_t h1 = utils::get_hash(ngraph_to_bitset(g_without_v));
                        size_t h2 = utils::get_hash(ngraph_to_bitset(g_without_w));

                        size_t pos1 = subgraphs.size();
                        size_t pos2 = subgraphs.size() + 1;
                        vector<size_t> ch = {pos1,pos2};
                        vector<size_t> c_hashs = {h1,h2};
                        vector<NGraph> c_graphs = {g_without_v, g_without_w};

                        assert(c_hashs.size() == ch.size());
                        int offset = 0;
                        for (size_t i = 0; i < c_hashs.size(); ++i) {
                            size_t hash = c_hashs[i];

                            // test whether subgraph exists already
                            if (hash_to_subgraph.find(hash) != hash_to_subgraph.end()) {
                                size_t new_pos = hash_to_subgraph[hash];
                                Subgraph *twin = &subgraphs[new_pos];
                                twin->add_parent(parent_pos, i);
                                // mapped to different child,
                                // however this child will never again contact its parent
                                ch[i] = new_pos;
                                c_hashs[i] = 0;
                                offset++;
                            } else if (offset > 0){
                                ch[i] -= offset;
                            }
                        }
                        current_subgraph->add_children(ch, true);
                        // finalize duplicate subgraphs
                        for (size_t i = 0; i < c_hashs.size(); ++i) {
                            size_t hash = c_hashs[i];
                            if (hash != 0) {
                                Subgraph c = Subgraph(hash, &subgraphs, parent_pos, false, i, g.size());
                                hash_to_subgraph[hash] = ch[i];
                                subgraphs.push_back(c);
                                stack.push_front(c_graphs[i]);
                            }
                        }
                    } else {
                        assert(v1 != -1);
                        // test whether subgraph exists already
                        NGraph g_without_v = remove_components(g, v1);
                        size_t hash = utils::get_hash(ngraph_to_bitset(g_without_v));
                        if (hash_to_subgraph.find(hash) != hash_to_subgraph.end()) {
                            size_t new_pos = hash_to_subgraph[hash];
                            Subgraph *twin = &subgraphs[new_pos];
                            // mapped to different child,
                            // however this child will never again contact its parent
                            twin->add_parent(parent_pos, 0);
                            current_subgraph->add_child(new_pos);
                        } else {
                            size_t pos1 = subgraphs.size();
                            size_t h1 = utils::get_hash(ngraph_to_bitset(g_without_v));
                            Subgraph c1 = Subgraph(h1, &subgraphs, parent_pos, false, 0, g.size());
                            current_subgraph->add_child(pos1);
                            stack.push_front(g_without_v);
                            hash_to_subgraph[h1] = pos1;
                            subgraphs.push_back(c1);
                        }
                    }
                } else {
                    // find foldable vertex v (d(v) = 2) [ = 3 as every node is its own neighbour]
                    found = false;

                    int v2;
                    for (size_t i = 0; i < g.size(); ++i) {
                        if (g[i].count() == 3) {
                            v2 = i;
                            found = true;
                            break;

                        }
                    }
                    if (found) {
                        pair<int,int> u(-1,-1);
                        for (size_t i = 0; i < g[v2].size(); ++i) {
                            if (g[v2][i]) {
                                if (i != (size_t)v2) {
                                    if (u.first == -1) {
                                        u.first = i;
                                    } else {
                                        u.second = i;
                                    }
                                }
                            }
                        }
                        int u1 = u.first;
                        int u2 = u.second;
                        if (!g[u1][u2]) {
                            // case 1: select v; remove v, u1, u2
                            assert(v2 != -1);
                            NGraph gf = remove_components(remove_components(g, g[v2]), v2);

                            size_t pos1 = subgraphs.size();
                            size_t h1 = utils::get_hash(ngraph_to_bitset(gf));
                            vector<int> mis1 {v2};

                            // case 2: select u1, u2; remove v, u1, u2, N(u1), N(u2)
                            set<int> tmp;
                            boost::dynamic_bitset<> remove(g.size(),0);
                            for (size_t c = 0; c < g[u1].size(); ++c){
                                if (g[u1][c]) {
                                    remove[c] = true;
                                }
                            }
                            for (size_t c = 0; c < g[u2].size(); ++c){
                                if (g[u2][c]) {
                                    remove[c] = true;
                                }
                            }
                            remove[u1] = true;
                            remove[u2] = true;
                            NGraph gf2 = remove_components(g, remove);
                            size_t pos2 = subgraphs.size() + 1;
                            size_t h2 = utils::get_hash(ngraph_to_bitset(gf2));
                            vector<int> mis2 {u1,u2};

                            vector<size_t> ch = {pos1,pos2};
                            vector<size_t> c_hashs = {h1,h2};
                            vector<NGraph> c_graphs = {gf, gf2};
                            vector<vector<int>> c_mis = {mis1,mis2};
                            int offset = 0;
                            for (size_t i = 0; i < c_hashs.size(); ++i) {
                                size_t hash = c_hashs[i];

                                // test whether subgraph exists already
                                if (hash_to_subgraph.find(hash) != hash_to_subgraph.end()) {
                                    size_t new_pos = hash_to_subgraph[hash];
                                    Subgraph *twin = &subgraphs[new_pos];
                                    // mapped to different child,
                                    // however this child will never again contact its parent
                                    // add additional mis elements obtained by folding
                                    twin->add_parent(parent_pos, i);
                                    ch[i] = new_pos;
                                    c_hashs[i] = 0;
                                    offset++;
                                } else if (offset > 0){
                                    ch[i] -= offset;
                                }
                                current_subgraph->add_dup_mis(c_mis[i]);
                            }
                            current_subgraph->add_children(ch, true);
                            for (size_t i = 0; i < c_hashs.size(); ++i) {
                                size_t hash = c_hashs[i];
                                if (hash != 0) {
                                    Subgraph c = Subgraph(hash, &subgraphs, parent_pos, false, i, g.size());
                                    hash_to_subgraph[hash] = ch[i];
                                    subgraphs.push_back(c);
                                    stack.push_front(c_graphs[i]);
                                }
                            }
                        } else {
                            // should never happen, as this case should have been resolved by dominance first
                            print_graph(g);
                            cout <<  "###############   INVALID FOLDING   ###############" << endl;
                            exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
                        }
                    } else {
                        // select v of maximum degree, which minimizes |E(N(v))|
                        set<size_t> max_deg;
                        size_t max = 0;

                        for (size_t i = 0; i < g.size(); ++i) {
                            if (!g[i].none()) {
                                if (g[i].count() > max) {
                                    max_deg.clear();
                                    max = g[i].count();
                                }
                                if (g[i].count() == max) {
                                    max_deg.insert(i);
                                }
                            }
                        }

                        int v3;
                        if (max_deg.size() == 1) {
                            v3 = *max_deg.begin();
                        } else { // find edges of graph induces by N(v)
                            // N(v) = g[i]
                            // N(N(v)) in g[i]
                            int e = 0;
                            v3 = *max_deg.begin();
                            set<int> visited;
                            for (set<size_t>::iterator i = max_deg.begin(); i != max_deg.end(); i++) {
                                visited.clear();
                                int cur_e = 0;
                                for (size_t n = 0; n < g[*i].size(); ++n) {
                                    if (g[*i][n] && n != *i) {
                                        visited.insert(n);
                                        for (size_t nn = 0; nn < g[n].size(); nn++) {
                                            if (nn != n) {
                                                // don't count edges twice
                                                if (visited.find(nn) == visited.end() && nn != *i) {
                                                    // is N(N(v)) in N(v)
                                                    if (g[*i][nn]) {
                                                        cur_e++;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                if (cur_e > e) {
                                    v3 = *i;
                                    e = cur_e;
                                }
                            }
                        }

                        // return max{mis(G - {v} - M{v}, 1 + mis(G - N[v]}
                        // M(v), set of mirrors of v
                        // mirror of v: vertex u in N^2(v) such that N(v)\N(u) is a possibly empty clique
                        // clique: every two distinct vertices are adjacent
                        // N^2(v): neighbours at distance 2 of v

                        // find mirrors of v
                        set<int> mv;
                        set<int> visited;
                        for (size_t n = 0; n != g[v3].size(); n++) {
                            if (g[v3][n] && n != (size_t)v3) {
                                for (size_t u = 0; u < g[n].size(); u++) {
                                    if (g[n][u] && u != n) {
                                        if (visited.find(u) == visited.end() && u != (size_t)v3 &&
                                            !g[v3][u]) {
                                            visited.insert(u);
                                            // c = N(v)\N(u)
                                            set<int> c;
                                            for (size_t u = 0; u < g[v3].size(); u++) {
                                                if (g[v3][u]) {
                                                    c.insert(u);
                                                }
                                            }
                                            for (size_t it = 0; it < g[u].size(); it++) {
                                                c.erase(g[u][it]);
                                            }
                                            c.erase(v3);
                                            // test whether c is a clique (every two distinct vertices are adjacent)
                                            // (every element in c must be a neighbour of every other element in c)
                                            bool clique = true;
                                            if (c.size() > 1) {
                                                for (set<int>::iterator cc = c.begin(); cc != c.end() && clique; ++cc) {
                                                    if (g[*cc].count() < c.size() - 1) {
                                                        clique = false;
                                                        break;
                                                    } else {
                                                        for (int ccn: c) {
                                                            if (ccn != *cc && g[*cc][ccn]) {
                                                                clique = false;
                                                                break;
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            if (clique) {
                                                mv.insert(u);
                                            }
                                        }
                                    }
                                }
                            }
                        }


                        size_t pos1 = subgraphs.size();
                        size_t pos2 = subgraphs.size() + 1;
                        NGraph g_without_v = remove_components(remove_components(g, v3), mv);
                        size_t h1 = utils::get_hash(ngraph_to_bitset(g_without_v));
                        NGraph g_v = remove_components(remove_components(g, g[v3]), v3);
                        size_t h2 = utils::get_hash(ngraph_to_bitset(g_v));
                        vector<int> mis1;
                        vector<int> mis2 = {v3};

                        vector<size_t> ch = {pos1,pos2};
                        vector<size_t> c_hashs = {h1,h2};
                        vector<NGraph> c_graphs = {g_without_v, g_v};
                        vector<vector<int>> c_mis = {mis1,mis2};

                        assert(c_hashs.size() == ch.size());
                        vector<vector<vector<int>>> dup_mis;
                        int offset = 0;
                        for (size_t i = 0; i < c_hashs.size(); ++i) {
                            size_t hash = c_hashs[i];

                            // test whether subgraph exists already
                            if (hash_to_subgraph.find(hash) != hash_to_subgraph.end()) {
                                size_t new_pos = hash_to_subgraph[hash];
                                Subgraph *twin = &subgraphs[new_pos];
                                // mapped to different child,
                                // however this child will never again contact its parent
                                // add additional mis elements obtained in the base case
                                twin->add_parent(parent_pos, i);
                                ch[i] = new_pos;
                                c_hashs[i] = 0;
                                offset++;
                            } else if (offset > 0) {
                                ch[i] -= offset;
                            }
                            current_subgraph->add_dup_mis(c_mis[i]);
                        }
                        current_subgraph->add_children(ch, true);
                        for (size_t i = 0; i < c_hashs.size(); ++i) {
                            size_t hash = c_hashs[i];
                            if (hash != 0) {
                                Subgraph c = Subgraph(hash, &subgraphs, parent_pos, false, i, g.size());
                                hash_to_subgraph[hash] = ch[i];
                                subgraphs.push_back(c);
                                stack.push_front(c_graphs[i]);
                            }
                        }
                    }
                }
            }
        }
    }
    utils::Timer timer_final;

    cout << "MIS algo steps: " << mis_steps << endl;
    cout << "MIS algo leaves: " << leaves.size() + stack.size() << endl;

    list<size_t> finalization_stack;
    // finalize all leaves
    for (size_t l:leaves) {
        subgraphs[l].mis_finalized(vector<boost::dynamic_bitset<>>(),true, 0, arg_number_mis);
        finalization_stack.push_back(l);
    }

    // if timer timed out, finalize all subgraphs in stack
    if (!stack.empty()) {
        cout << "MIS algorithms finished, finalizing stack with " << stack.size() << " elements!" << endl;
    }
    while (!stack.empty()) {
        NGraph g = stack.front();
        boost::dynamic_bitset<> subelems = ngraph_to_bitset(g);
        stack.pop_front();
        size_t current_hash = utils::get_hash(subelems);
        size_t parent_pos = hash_to_subgraph[current_hash];
        Subgraph *current_subgraph = &subgraphs[parent_pos];
        vector<boost::dynamic_bitset<>> m(g.size());
        current_subgraph->mis_finalized(m, true, 0, arg_number_mis);
        finalization_stack.push_back(parent_pos);
    }

    while (!finalization_stack.empty()) {
        size_t pos = finalization_stack.front();
        finalization_stack.pop_front();
        Subgraph &current_subgraph = subgraphs[pos];
        const vector<boost::dynamic_bitset<>> &m = current_subgraph.get_mis();
        const vector<size_t> &parents = current_subgraph.get_parents();
        const vector<size_t> &child_no = current_subgraph.get_child_nos();
        bool root = current_subgraph.is_root();
        if (!root) {
            for (size_t i = 0; i < parents.size(); ++i) {
                size_t parent_pos = parents[i];
                Subgraph &p_g = subgraphs[parent_pos];
                p_g.mis_finalized(m, false, child_no[i], arg_number_mis);
                if (p_g.is_finalized()) {
                    finalization_stack.push_back(parent_pos);
                }
            }
        }
        current_subgraph.clear();
    }


    cout << "finalizing stack took: " << timer_final << endl;
    Subgraph root = subgraphs[0];

    vector<boost::dynamic_bitset<>> temp = root.get_mis();

    assert(subgraphs[0].is_finalized());
    size_t max_size = 0;
    if (!temp.empty()) {
        max_size = max(0, (int)temp[0].size());
    }

    if (max_size > 0) {
        cout << "MIS found: " << temp.size() << endl;
    } else {
        cout << "MIS found: 0" << endl;
    }
#ifdef DEBUG_FACTORING
    for (size_t i = 0; i < temp.size(); i++) {
        cout << "MIS " << i << ": ";
        for (size_t v = 0; v < temp[i].size(); ++v) {
            if (temp[i][v]) {
                cout << v << " ";
            }
        }
        cout << endl;
    }
#endif
    vector<boost::dynamic_bitset<>> res_mis;
    if (!temp.empty()) {
        res_mis.push_back(temp[0]);
    }
#ifdef DEBUG_FACTORING
    for (boost::dynamic_bitset<> &m:res_mis) {
        if (!check_mis(g, m)) {
            cout << "did not create valid mis" << endl;
        }
    }
#endif
    if (!res_mis.empty()) {
        cout << "MIS size: " << res_mis[0].count() << endl;
    } else {
        cout << "MIS size: " << 0 << endl;
    }
#ifdef DEBUG_FACTORING
    int i = 0;
    for (boost::dynamic_bitset<> &m:res_mis) {
        cout << "MIS " << i << " : ";
        for (size_t it = 0; it < m.size(); ++it) {
            if (m[it]) {
                cout << it << " ";
            }
        }
        cout << endl;
    }
#endif
    cout << "Graph size: " << g.size() << endl;

    return res_mis;
}

bool MIS::check_mis(const NGraph &g, const boost::dynamic_bitset<> &mis) const{
    for (size_t i = 0; i < mis.size(); ++i) {
        if (mis[i]) {
            for (size_t n = 0; n < g[i].size(); ++n) {
                if (g[i][n]) {
                    if ((size_t) i != n) {
                        if (mis[n]) {
                            return false;
                        }
                    }
                }
            }
        }
    }
    return true;
}

NGraph MIS::remove_components(NGraph g, int c) const {
    // remove var from neighbours' neighbours
    if (!g[c].none()) {
        for (size_t n = 0; n < g[c].size(); ++n) {
            if (g[c][n]) {
                if (n != (size_t)c) {
                    g[n][c] = false;
                }
            }
        }
        g[c].reset();
    }
    return g;
}

NGraph MIS::remove_components(const NGraph &g, const boost::dynamic_bitset<> &cs) const {
    NGraph n_g(g.size(), boost::dynamic_bitset<>(g.size()));
    for (size_t i = 0; i < g.size(); ++i) {
        if (!g[i].none()) {
            if (!cs[i]) {
                n_g[i] = g[i];
                for (size_t v = 0; v < cs.size(); ++v) {
                    if (cs[v] && n_g[i][v]) {
                        n_g[i][v] = false;
                    }
                }
            }
        }
    }
    return n_g;
}

NGraph MIS::remove_components(const NGraph &g, const set<int> &cs) const {
    NGraph n_g(g.size(), boost::dynamic_bitset<>(g.size()));
    for (size_t i = 0; i < g.size(); ++i) {
        if (!g[i].none()) {
            if (cs.find(i) == cs.end()) {
                n_g[i] = g[i];
                for (int v:cs) {
                    if (n_g[i][v]) {
                        n_g[i][v] = false;
                    }
                }
            }
        }
    }
    return n_g;
}

void MIS::find_connected_components(const NGraph &g, CtoCCMap *c_to_cc, ConComp *cc) const {
    stack<int> open_c;
    size_t seen = 0;
    int m = 0;
    while (seen < g.size()) {
        if (open_c.empty()) {
            for (size_t i = m; i < g.size(); ++i) {
                if (g[i].any()) {
                    if ((*c_to_cc)[i] == -1) {
                        m = i;
                        open_c.push(m);
                        set<int> i;
                        (*c_to_cc)[m] = cc->size();
                        i.insert(m);
                        cc->push_back(i);
                        break;
                    }
                }
                else {
                    ++seen;
                }
            }

        } else {
            int c = open_c.top();
            open_c.pop();
            seen++;
            for (size_t n = 0; n < g[c].size(); ++n) {
                if (g[c][n]) {
                    if ((size_t)c != n) {
                        if ((*c_to_cc)[n] == -1) {
                            int comp = (*c_to_cc)[c];
                            (*c_to_cc)[n] = comp;
                            (*cc)[comp].insert(n);
                            open_c.push(n);
                        }
                    }
                }
            }
        }
    }
    return;
}

void MIS::print_graph(const NGraph &g) const {
    for (size_t i = 0; i < g.size(); ++i) {
        if (!g[i].none()) {
            cout << "Node: " << i << " - connected to: ";
            for (size_t s = 0; s < g[i].size(); ++s) {
                if (g[i][s]) {
                    cout << s << " ";
                }
            }
            cout << endl;
        }
    }
    cout << endl;
}

boost::dynamic_bitset<> ngraph_to_bitset (const NGraph &g) {
    boost::dynamic_bitset<> subelems = boost::dynamic_bitset<>(g.size());
    for (size_t i = 0; i < g.size(); ++i) {
        if (!g[i].none()) {
            subelems[i] = true;
        }
    }
    return subelems;
}

void Subgraph::mis_finalized(const vector<boost::dynamic_bitset<>> &is, bool leaf, size_t no, size_t arg_number_mis) {
    if (!children.empty()) {
        --pending_mis;
        if (!is.empty()) {
            if (!branch) {
                // if children are no branches (connected components)
                // all permutations of child_mis have to be generated
                if (child_mis.empty()) {
                    child_mis.push_back(is);
                } else if (!is.empty()) {
                    vector<boost::dynamic_bitset<>> tmp_children;
                    for (const boost::dynamic_bitset<> &new_mis: is) {
                        for (const vector<boost::dynamic_bitset<>> &o_m: child_mis) {
                            for (const boost::dynamic_bitset<> &old_mis: o_m) {
                                boost::dynamic_bitset<> tmp_mis(graph_size);
                                const boost::dynamic_bitset<> *second_mis;
                                if (old_mis.count() >= new_mis.count()) {
                                    tmp_mis = old_mis;
                                    second_mis = &new_mis;
                                } else {
                                    tmp_mis = new_mis;
                                    second_mis = &old_mis;
                                }
                                assert(second_mis->size() == tmp_mis.size());
                                for (size_t v = 0; v < second_mis->size(); ++v) {
                                    if ((*second_mis)[v]) {
                                        tmp_mis.set(v);
                                    }
                                }
                                tmp_children.push_back(tmp_mis);
                            }
                        }
                    }
                    child_mis = vector<vector<boost::dynamic_bitset<>>>();
                    child_mis.push_back(tmp_children);
                }
            } else {
                // if children are branches (folding, domination, base case)
                // children need to be inserted at the correct position
                // such that dup_child_mis (folding, base case)
                // can be added to the correct child_mis
                child_mis[no] = is;
            }
        } else if (branch) {
            child_mis[no] = is;
        }

        if (pending_mis == 0 || leaf) {
            finalized = true;
            if (branch) {
                if (!dup_child_mis.empty()) {
                    // add dup_child_mis to child_mis (folding, base_case)
                    assert(child_mis.size() == dup_child_mis.size());
                    for (size_t i = 0; i < child_mis.size(); ++i) {
                        for (size_t d_c:dup_child_mis[i]) {
                            for (boost::dynamic_bitset<> &cm: child_mis[i]) {
                                cm.set(d_c);
                            }
                        }
                    }
                }
                vector<pair<size_t,size_t>> child_mis_max;
                size_t max = 0;
                for (size_t ch_mi = 0; ch_mi < child_mis.size(); ++ch_mi) {
                    for (size_t cm = 0; cm < child_mis[ch_mi].size(); ++cm) {
                        if (child_mis[ch_mi][cm].count() > max) {
                            max = child_mis[ch_mi][cm].count();
                            child_mis_max.clear();
                            child_mis_max.push_back(make_pair(ch_mi,cm));
                        } else if (child_mis[ch_mi][cm].count() == max) {
                            if (child_mis_max.size() < arg_number_mis) {
                                child_mis_max.push_back(make_pair(ch_mi, cm));
                            }
                        }
                    }
                }
                vector<boost::dynamic_bitset<>> tmp;
                for (pair<size_t,size_t> i: child_mis_max) {
                    tmp.push_back(child_mis[i.first][i.second]);
                }
                child_mis = vector<vector<boost::dynamic_bitset<>>> {tmp};
            }
            // merge child_mis with current_subgraph's mis
            size_t i = 0;
            bool done = false;
            while (mis.size() < arg_number_mis and !done) {
                done = true;
                for (vector<boost::dynamic_bitset<>> &ch_mi : child_mis) {
                    if (mis.size() == arg_number_mis) {
                        break;
                    }
                    if (i < ch_mi.size()) {
                        if (has_elem) {
                            ch_mi[i].set(mis_elem);
                        }
                        mis.push_back(ch_mi[i]);
                        done = false;
                    }
                }
                ++i;
            }
            assert(mis.size() <= arg_number_mis);
        }
    } else {
        assert(mis.size() <= 1);
        if (mis.empty()) {
            mis.push_back(boost::dynamic_bitset<>(graph_size));
        }
        if (has_elem) {
            mis[0].set(mis_elem);
        }
    }
}

void Subgraph::add_parent (size_t p, size_t no) {
    parents.push_back(p);
    child_no.push_back(no);
}

void Subgraph::add_child (size_t h) {
    assert(children.empty());
    branch = true;
    if (branch) {
        child_mis = vector<vector<boost::dynamic_bitset<>>>(1);
    }
    children.push_back(h);
    pending_mis = 1;
}

void Subgraph::add_children (const vector<size_t> &h, bool b) {
    assert(children.empty());
    if (b) {
        child_mis = vector<vector<boost::dynamic_bitset<>>>(h.size());
    }
    for (size_t ch : h) {
        children.push_back(ch);
    }
    pending_mis = h.size();
    branch = b;
}

void Subgraph::clear() {
    if (!root) {
        mis.clear();
    }
    child_mis.clear();
    parents.clear();
    children.clear();
    child_no.clear();
    dup_child_mis.clear();
}

void Subgraph::print(std::string offset) const {
    cout << offset << "root " << root << " - " << this->hash << " pending: " << pending_mis << ", children: " << children.size() << ", parents: " << parents.size() << endl;
    cout << offset << "branch: " << branch << endl;
    cout << offset << "MIS:" << endl;
    for (const boost::dynamic_bitset<> &m:mis) {
        cout << offset << "     ";
        for (size_t v = 0; v < m.size(); ++v) {
            if (m[v]) {
                cout << " " << v;
            }
        }
        cout << endl;
    }
    if (has_elem) {
        cout << offset << "mis_elem: " << mis_elem << endl;
    }
    cout << offset << "dup child MIS elems:" << endl;
    for (const vector<int> &m:dup_child_mis) {
        cout << offset << "     ";
        for (size_t v:m) {
            cout << " " << v;
        }
        cout << endl;
    }
    cout << offset << "child MIS elems:" << endl;
    for (const vector<boost::dynamic_bitset<>> &mis:child_mis) {
        for (const boost::dynamic_bitset<> &m:mis) {
            cout << offset << "     ";
            for (size_t v = 0; v < m.size(); ++v) {
                if(m[v]) {
                    cout << " " << v;
                }
            }
            cout << endl;
        }
        cout << endl;
    }
    for (size_t c: children) {
        subgraphs->at(c).print(offset + " ");
    }
}

void print_bitset(boost::dynamic_bitset<> &b) {
    for (size_t i = 0; i  < b.size(); ++i) {
        if (b[i]) {
            cout << " " << i;
        }
    }
    cout << endl;
}
