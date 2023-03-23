#ifndef SEARCH_ENGINE_H
#define SEARCH_ENGINE_H

#include "operator_cost.h"
#include "search_space.h"
#include "search_progress.h"

#include <vector>

class CompliantPathGraph;
class Heuristic;
class Operator;

namespace options {
class OptionParser;
class Options;
}

enum SearchStatus {IN_PROGRESS, TIMEOUT, FAILED, SOLVED};

class SearchEngine {
public:
    typedef std::vector<OperatorID> Plan;
private:
    SearchStatus status;
    bool solution_found;
    mutable Plan plan;
    StateID cheapest_goal_state;
    bool is_optimal_leaf_plan(const GlobalState &state, const CompliantPathGraph &cpg);
protected:
    SearchSpace search_space;
    SearchProgress search_progress;

    int bound;
    OperatorCost cost_type;
    double max_time;

    virtual void initialize() {}
    virtual SearchStatus step() = 0;

    void set_plan(const Plan &plan);
    bool check_goal_and_set_plan(const GlobalState &state);
    int get_adjusted_cost(OperatorID op) const;
    int get_adjusted_cost(const Operator &op) const;
public:
    SearchEngine(const options::Options &opts);
    virtual ~SearchEngine() = default;
    virtual void statistics() const;
    virtual void heuristic_statistics() const {}
    virtual void save_plan_if_necessary() const;
    bool found_solution() const;
    SearchStatus get_status() const;
    const Plan &get_plan() const;
    void search();
    SearchProgress get_search_progress() const {return search_progress; }
    void set_bound(int b) {bound = b; }
    int get_bound() {return bound; }
    static void add_options_to_parser(options::OptionParser &parser);
};

#endif
