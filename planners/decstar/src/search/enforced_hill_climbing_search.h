#ifndef ENFORCED_HILL_CLIMBING_SEARCH_H
#define ENFORCED_HILL_CLIMBING_SEARCH_H

#include "g_evaluator.h"
#include "globals.h"
#include "operator.h"
#include "search_engine.h"
#include "search_node_info.h"
#include "search_progress.h"
#include "search_space.h"
#include "state.h"

#include "open_lists/open_list.h"

#include <map>
#include <vector>

namespace options {
class Options;
}

typedef std::pair<StateID, std::pair<int, OperatorID> > OpenListEntryEHC;

enum PreferredUsage {
    PRUNE_BY_PREFERRED, RANK_PREFERRED_FIRST,
    MAX_PREFERRED_USAGE
};

class EnforcedHillClimbingSearch : public SearchEngine {
protected:
    std::shared_ptr<OpenList<OpenListEntryEHC>> open_list;
    std::shared_ptr<GEvaluator> g_evaluator;

    std::shared_ptr<Evaluator> heuristic;
    bool preferred_contains_eval;
    std::vector<std::shared_ptr<Evaluator>> preferred_heuristics;
    bool use_preferred;
    PreferredUsage preferred_usage;

    GlobalState current_state;
    int current_h;
    int current_g;

    // statistics
    std::map<int, std::pair<int, int> > d_counts;
    int num_ehc_phases;
    int last_expanded;

    virtual void initialize();
    virtual SearchStatus step();
    SearchStatus ehc();
    void get_successors(const GlobalState &state, std::vector<OperatorID> &ops);
    void evaluate(const GlobalState &parent, OperatorID op, const GlobalState &state);
public:
    EnforcedHillClimbingSearch(const options::Options &opts);

    virtual void statistics() const;
};

#endif
