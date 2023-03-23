#ifndef EAGER_SEARCH_H
#define EAGER_SEARCH_H

#include "evaluator.h"
#include "state.h"
#include "search_engine.h"
#include "search_progress.h"
#include "search_space.h"

#include "open_lists/open_list.h"

#include <memory>
#include <vector>


class Heuristic;
class Operator;
class PruningMethod;
class Evaluator;

namespace options {
class Options;
}


class EagerSearch : public SearchEngine {
    // Search Behavior parameters
    bool reopen_closed_nodes; // whether to reopen closed nodes upon finding lower g paths
    bool do_pathmax; // whether to use pathmax correction
    bool check_consistency;
    bool use_multi_path_dependence;

    std::shared_ptr<OpenList<StateID>> open_list;
    std::shared_ptr<Evaluator> f_evaluator;
    // used for upper bound pruning in anytime decoupled search
    std::shared_ptr<Evaluator> pruning_heuristic;
    
    std::shared_ptr<PruningMethod> pruning_method;
    
    bool insert_state(const SearchNode &succ_node);

protected:
    SearchStatus step();
    std::pair<SearchNode, bool> fetch_next_node();
    void update_jump_statistic(const SearchNode &node);
    void print_heuristic_values(const std::vector<int> &values) const;
    void reward_progress();

    std::vector<Heuristic*> heuristics;
    std::vector<std::shared_ptr<Evaluator>> preferred_operator_heuristics;
    std::vector<Heuristic*> estimate_heuristics;
    // TODO: in the long term this
    // should disappear into the open list

    virtual void initialize();

public:
    EagerSearch(const options::Options &opts);
    ~EagerSearch() = default;
    
    void statistics() const;

    void dump_search_space();
};

#endif
