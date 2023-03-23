#ifndef MIS_H
#define MIS_H

#include "../ext/boost/dynamic_bitset.hpp"

#include <set>
#include <vector>
#include <iostream>


/* retrieve maximum independent sets
 *      implements the algorithm from F. V. Fomin, F Grandoni, and D. Kratsch as presented in
 *      A Measure & Conquer Approach for the Analysis of Exact Algorithms
 *      published in the Journal of the ACM, Vol. 56, No. 5, Article 25
 */

// NGraph, key = var, entry = set of neighbours
using NGraph = std::vector<boost::dynamic_bitset<>>;
boost::dynamic_bitset<> ngraph_to_bitset(const NGraph &);

namespace utils {
class CountdownTimer;
}

class MIS {
    // ConCom(Connected Components),
    // index = connected component, entry = set of vars
    using ConComp = std::vector<std::set<int>>;
    // maps var the respective connected
    // component it is included in
    using CtoCCMap = std::vector<int>;

private:
    void find_connected_components(const NGraph&, CtoCCMap *, ConComp *) const;
    NGraph remove_components(NGraph, int) const;
    NGraph remove_components(const NGraph&, const boost::dynamic_bitset<>&) const;
    NGraph remove_components(const NGraph&, const std::set<int>&) const;
public:
    MIS() {}
    std::vector<boost::dynamic_bitset<>> get_mis(const NGraph&, bool, const utils::CountdownTimer&, size_t) const;
    void print_graph(const NGraph&) const;
    bool check_mis(const NGraph&, const boost::dynamic_bitset<> &mis) const;
};

class Subgraph;

class Subgraph {
    std::vector<boost::dynamic_bitset<>> mis;
    size_t mis_elem;
    bool has_elem;
    std::vector<std::vector<boost::dynamic_bitset<>>> child_mis;
    std::vector<std::vector<int>> dup_child_mis;
    size_t pending_mis = 0;
    std::vector<size_t> children;
    bool finalized = false;
    bool branch = false;
    size_t hash;
    std::vector<Subgraph> * subgraphs;
    std::vector<size_t> parents;
    bool root;
    std::vector<size_t> child_no;
    size_t graph_size;
public:

    Subgraph (size_t h, std::vector<Subgraph> *sg, size_t p, bool r, size_t no, size_t g_size) : hash(h), subgraphs(sg), root(r), graph_size(g_size){
        child_no.push_back(no);
        parents.push_back(p);
        has_elem = false;
        mis_elem = 0;
        dup_child_mis = std::vector<std::vector<int>>();
    }
    void add_child(size_t);
    void add_children(const std::vector<size_t>&, bool);
    void add_parent(size_t, size_t);
    void mis_finalized(const std::vector<boost::dynamic_bitset<>>&, bool, size_t, size_t);
    void clear();

    std::vector<boost::dynamic_bitset<>> get_mis() {
        return mis;
    };

    bool is_finalized() {
        return finalized;
    }

    bool is_root() {
        return root;
    }

    size_t get_hash() {
        return hash;
    }

    std::vector<size_t> get_parents() {
        return parents;
    }

    std::vector<size_t> get_child_nos() {
        return child_no;
    }

    void print() const {
        print("");
    }
    void print(std::string offset) const;

    void add_mis_elems(size_t m) {
        mis_elem = m;
        has_elem = true;
    }

    void add_dup_mis(const std::vector<int> &m) {
        dup_child_mis.push_back(m);
    }
};


void print_bitset(boost::dynamic_bitset<> &);

#endif
