#ifndef SYMBOLIC_OPT_ORDER_H
#define SYMBOLIC_OPT_ORDER_H

#include <vector>

namespace symbolic {
class InfluenceGraph {
    std::vector<std::vector<long>> influence_graph;

    long influence(int v1, int v2) const {
        return influence_graph[v1] [v2];
    }


    long optimize_variable_ordering_gamer(std::vector <int> &order,
                                          int iterations) const;
    long compute_function(const std::vector <int> &order) const;
    void optimize_ordering_gamer(std::vector <int> &ordering) const;
    static void randomize(std::vector <int> &ordering, std::vector<int> &new_order);


public:
    InfluenceGraph(int n);
    void get_ordering(std::vector <int> &ordering) const;
    void optimize_variable_ordering_gamer(std::vector <int> &order,
                                          std::vector <int> &partition_begin,
                                          std::vector <int> &partition_sizes,
                                          int iterations = 50000) const;

    void set_influence(int v1, int v2, long val = 1) {
        influence_graph[v1][v2] = val;
        influence_graph[v2][v1] = val;
    }

    static void compute_gamer_ordering(std::vector <int> &ordering);

    static std::vector<std::vector <int>> compute_factored_gamer_ordering();
    
};
}


#endif
