#include "eager_search.h"

#include "compliant_paths/compliant_path_graph.h"
#include "factoring.h"
#include "g_evaluator.h"
#include "globals.h"
#include "heuristic.h"
#include "open_lists/alternation_open_list.h"
#include "open_lists/open_list_plugins.h"
#include "open_lists/standard_scalar_open_list.h"
#include "open_lists/tiebreaking_open_list.h"
#include "option_parser.h"
#include "plugin.h"
#include "pruning_method.h"
#include "task_utils/successor_generator.h"
#include "sum_evaluator.h"
#include "utils/timer.h"

#include <cassert>
#include <cstdlib>
#include <set>

using namespace std;

EagerSearch::EagerSearch(
    const Options &opts)
    : SearchEngine(opts),
      reopen_closed_nodes(opts.get<bool>("reopen_closed")),
      do_pathmax(opts.get<bool>("pathmax")),
      check_consistency(opts.get<bool>("check_consistency")),
      use_multi_path_dependence(opts.get<bool>("mpd")),
      open_list(opts.get<shared_ptr<OpenList<StateID>>>("open")) {
    if (opts.contains("f_eval")) {
        f_evaluator = opts.get<shared_ptr<Evaluator>>("f_eval");
    } else {
        f_evaluator = 0;
    }
    if (opts.contains("pruning")){
        pruning_method = opts.get<shared_ptr<PruningMethod>>("pruning");
    }
    if (g_factoring && g_factoring->get_search_type() == ASDA && opts.contains("pruning_heuristic")){
        pruning_heuristic = opts.get<shared_ptr<Evaluator>>("pruning_heuristic");
    }
    if (opts.contains("preferred")) {
        preferred_operator_heuristics =
            opts.get_list<shared_ptr<Evaluator>>("preferred");
    }
}

void EagerSearch::initialize() {
    //TODO children classes should output which kind of search
    cout << "Conducting best first search"
         << (reopen_closed_nodes ? " with" : " without")
         << " reopening closed nodes, (real) bound = " << bound
         << endl;
    if (do_pathmax)
        cout << "Using pathmax correction" << endl;
    if (use_multi_path_dependence)
        cout << "Using multi-path dependence (LM-A*)" << endl;
    assert(open_list != NULL);

    set<Heuristic*> hset;
    open_list->get_involved_heuristics(hset);

    for (Heuristic *h : hset) {
        estimate_heuristics.push_back(h);
        search_progress.add_heuristic(h);
    }

    // add heuristics that are used for preferred operators (in case they are
    // not also used in the open list)
    for (auto h : preferred_operator_heuristics){
        h->get_involved_heuristics(hset);
    }

    // add heuristics that are used in the f_evaluator. They are usually also
    // used in the open list and hence already be included, but we want to be
    // sure.
    if (f_evaluator) {
        f_evaluator->get_involved_heuristics(hset);
    }

    for (Heuristic *h : hset) {
        heuristics.push_back(h);
    }

    assert(!heuristics.empty());

    const GlobalState &initial_state = g_initial_state();
    for (size_t i = 0; i < heuristics.size(); ++i)
        heuristics[i]->evaluate(initial_state);
    open_list->evaluate(0, false);
    search_progress.inc_evaluated_states();
    search_progress.inc_evaluations(heuristics.size());

    if (open_list->is_dead_end()) {
        cout << "Initial state is a dead end." << endl;
    } else {
        search_progress.get_initial_h_values();
        if (f_evaluator) {
            f_evaluator->evaluate(0, false);
            search_progress.report_f_value(f_evaluator->get_value());
        }
        search_progress.check_h_progress(0);
        SearchNode node = search_space.get_node(initial_state);
        node.open_initial(heuristics[0]->get_value());

        open_list->insert(initial_state.get_id());
    }

    if (pruning_method){
        pruning_method->initialize();
    }
}

void EagerSearch::statistics() const {
    search_progress.print_statistics();
    search_space.statistics();
    if (pruning_method){
        pruning_method->print_statistics();
    }
}

SearchStatus EagerSearch::step() {
    pair<SearchNode, bool> n = fetch_next_node();
    if (!n.second) {
        return FAILED;
    }
    SearchNode node = n.first;

    if (g_factoring &&
        g_factoring->get_search_type() == SDA &&
        node.get_g() + node.get_h() >= bound){
        // TODO can this ever happen given the behaviour of fetch_next_node()?
        cout << "f-value of to be expanded node (" << node.get_g() + node.get_h()
             << ") is greater/equal to cost of best found plan => goal reached [t=" << utils::g_timer << "]" << endl;
        return SOLVED;
    }

    GlobalState s = node.get_state();
    if (check_goal_and_set_plan(s)){
        return SOLVED;
    }

    vector<OperatorID> applicable_ops;
    set<OperatorID> preferred_ops;

    g_successor_generator->generate_applicable_ops(s, applicable_ops);

    // Note that when preferred operators are in use, a preferred
    // operator will be considered by the preferred operator queues
    // even when pruned by the pruning method.
    if (pruning_method){
        pruning_method->prune_operators(s, applicable_ops);
    }

    // This evaluates the expanded state (again) to get preferred ops
    for (shared_ptr<Evaluator> h : preferred_operator_heuristics) {
        h->evaluate(s);
        if (!h->is_dead_end()) {
            // In an alternation search with unreliable heuristics, it is
            // possible that this heuristic considers the state a dead end.
            vector<OperatorID> preferred;
            h->get_preferred_operators(preferred);
            preferred_ops.insert(preferred.begin(), preferred.end());
        }
    }
    search_progress.inc_evaluations(preferred_operator_heuristics.size());

    for (OperatorID op_id : applicable_ops) {
        const Operator &op = g_operators[op_id];

        // g-value upper bound pruning for decoupled search => g_sum_min_goal_cost
        // get_leaf_g might include part of leaf goal cost for non-fork leaves
        int goal_cost = max(0, CompliantPathGraph::get_min_leaf_goal_cost() - node.get_leaf_part_g());
        if (node.get_g() + get_adjusted_cost(op) + goal_cost >= bound) {
            continue;
        }

        GlobalState succ_state = g_state_registry->get_successor_state(s, op);
        search_progress.inc_generated();
        bool is_preferred = (preferred_ops.find(op_id) != preferred_ops.end());

        SearchNode succ_node = search_space.get_node(succ_state);

        // Previously encountered dead end. Don't re-evaluate.
        if (succ_node.is_dead_end())
            continue;

        // update new path
        if (use_multi_path_dependence || succ_node.is_new()) {
            bool h_is_dirty = false;
            for (size_t j = 0; j < heuristics.size(); ++j) {
                /*
                  Note that we can't break out of the loop when
                  h_is_dirty is set to true or use short-circuit
                  evaluation here. We must call reach_state for each
                  heuristic for its side effects.
                */
                if (heuristics[j]->reach_state(s, op_id, succ_state))
                    h_is_dirty = true;
            }
            if (h_is_dirty && use_multi_path_dependence)
                succ_node.set_h_dirty();
        }

        if (succ_node.is_new()) {
            // We have not seen this state before.
            // Evaluate and create a new node.
            for (size_t j = 0; j < heuristics.size(); ++j)
                heuristics[j]->evaluate(succ_state);
            succ_node.clear_h_dirty();
            search_progress.inc_evaluated_states();
            search_progress.inc_evaluations(heuristics.size());

            // Note that we cannot use succ_node.get_g() here as the
            // node is not yet open. Furthermore, we cannot open it
            // before having checked that we're not in a dead end. The
            // division of responsibilities is a bit tricky here -- we
            // may want to refactor this later.
            open_list->evaluate(node.get_g() + get_adjusted_cost(op) + g_inc_g_by, is_preferred);

            bool dead_end = open_list->is_dead_end();
            if (dead_end) {
                succ_node.mark_as_dead_end();
                search_progress.inc_dead_ends();
                continue;
            }

            //TODO:CR - add an ID to each state, and then we can use a vector to save per-state information
            int succ_h = heuristics[0]->get_heuristic();
            if (check_consistency && (node.get_h() - get_adjusted_cost(op) - g_inc_g_by) > succ_h) {
                // transition violates bellman equation
                cout << "WARNING: heuristic is inconsistent" << endl;
                check_consistency = false;
            }
            if (do_pathmax) {
                if ((node.get_h() - get_adjusted_cost(op)) > succ_h) {
                    //cout << "Pathmax correction: " << succ_h << " -> " << node.get_h() - get_adjusted_cost(*op) << endl;
                    succ_h = node.get_h() - get_adjusted_cost(op);
                    heuristics[0]->set_evaluator_value(succ_h);
                    open_list->evaluate(node.get_g() + get_adjusted_cost(op), is_preferred);
                    search_progress.inc_pathmax_corrections();
                }
            }
            succ_node.open(succ_h, node, op_id);

            if (!insert_state(succ_node)){
                // pruning for SDA* / ASDA*
                continue;
            }

            open_list->insert(succ_state.get_id());
            if (search_progress.check_h_progress(succ_node.get_g())) {
                reward_progress();
            }

        } else if (succ_node.get_g() > node.get_g() + get_adjusted_cost(op) + g_inc_g_by) {

            if (!g_factoring || !PruningOptions::ignore_current_state()){
                // We found a new cheapest path to an open or closed state.
                if (reopen_closed_nodes) {
                    //TODO:CR - test if we should add a reevaluate flag and if it helps
                    // if we reopen closed nodes, do that
                    if (succ_node.is_closed()) {
                        /* TODO: Verify that the heuristic is inconsistent.
                        * Otherwise, this is a bug. This is a serious
                        * assertion because it can show that a heuristic that
                        * was thought to be consistent isn't. Therefore, it
                        * should be present also in release builds, so don't
                        * use a plain assert. */
                        //TODO:CR - add a consistent flag to heuristics, and add an assert here based on it
                        search_progress.inc_reopened();
                    }

                    int tmp_inc_g = g_inc_g_by; // this is set to 0 by succ_node.reopen()
                    succ_node.reopen(node, op_id);

                    if (succ_node.is_h_dirty()){
                        // h_dirty is set by check_dominance() in CompliantPathGraph
                        // when a new state dominates and replaces an existing one
                        for (size_t j = 0; j < heuristics.size(); ++j)
                            heuristics[j]->evaluate(succ_state);
                        succ_node.clear_h_dirty();
                        search_progress.inc_evaluated_states();
                        search_progress.inc_evaluations(heuristics.size());

                        int new_h = heuristics[0]->get_heuristic();
                        if (new_h < succ_node.get_h()){
                            succ_node.decrease_h(new_h);
                        }
                        if (check_consistency && (node.get_h() - get_adjusted_cost(op) - tmp_inc_g) > new_h) {
                            // transition violates bellman equation
                            cout << "WARNING: heuristic is inconsistent" << endl;
                            check_consistency = false;
                        }
                    } else {
                        // TODO: this appears fishy to me. Why is here only heuristic[0]
                        // involved? Is this still feasible in the current version?
                        heuristics[0]->set_evaluator_value(succ_node.get_h());
                    }

                    open_list->evaluate(succ_node.get_g(), is_preferred);

                    if (!insert_state(succ_node)){
                        // pruning for SDA* / ASDA*
                        continue;
                    }

                    open_list->insert(succ_state.get_id());
                } else {
                    // in decoupled eager_greedy search, without this check
                    // a cheaper path to a dominating state would be updated
                    // rendering plan construction impossible for leaf states not
                    // reachable on the new path

                    // if we do not reopen closed nodes, we just update the parent pointers
                    // Note that this could cause an incompatibility between
                    // the g-value and the actual path that is traced back
                    succ_node.update_parent(node, op_id);
                }
            }
        }
    }

    return IN_PROGRESS;
}

bool EagerSearch::insert_state(const SearchNode &succ_node) {
    if (!g_factoring || !found_solution()){
        return true;
    }
    if (succ_node.get_g() + succ_node.get_h() >= bound){
        return false;
    }
    // TODO if upper bound pruning is actually pruning a lot of states, runtime decreases
    // dramatically; in instances where not much states are pruned, (similar number of evaluations)
    // search time is significantly higher with fork-heuristic upper bound pruning
    // NOTE overall, it seems to make sense to include the pruning, it reduces evaluations in many
    // instances and is only detrimental in very few cases
    // TODO check if there are any states pruned using hmax
    return true;
}

pair<SearchNode, bool> EagerSearch::fetch_next_node() {
    /* TODO: The bulk of this code deals with multi-path dependence,
       which is a bit unfortunate since that is a special case that
       makes the common case look more complicated than it would need
       to be. We could refactor this by implementing multi-path
       dependence as a separate search algorithm that wraps the "usual"
       search algorithm and adds the extra processing in the desired
       places. I think this would lead to much cleaner code. */

    bool ds_optimality_guaranteed = false;
    while (true) {
        if (open_list->empty() || ds_optimality_guaranteed) {
            if (!found_solution()){
                assert(!ds_optimality_guaranteed);
                cout << "Completely explored state space -- no solution! [t=" << utils::g_timer << "]" << endl;
            } else {
                // in optimal decoupled search, we cannot stop on the first solution found,
                // need to continue until provably no better solution exists
                cout << "no more states in openlist [t=" << utils::g_timer << "]" << endl;
            }
            // HACK! HACK! we do this because SearchNode has no default/copy constructor
            SearchNode dummy_node = search_space.get_node(g_initial_state());

            return make_pair(dummy_node, false);
        }
        vector<int> last_key_removed;
        StateID id = open_list->remove_min(
            use_multi_path_dependence ? &last_key_removed : 0);
        // TODO is there a way we can avoid creating the state here and then
        //      recreate it outside of this function with node.get_state()?
        //      One way would be to store GlobalState objects inside SearchNodes
        //      instead of StateIDs
        GlobalState s = g_state_registry->lookup_state(id);
        SearchNode node = search_space.get_node(s);

        if (node.is_closed()) {
            continue;
        }

        // upper bound pruning for decoupled search
        if (g_factoring && found_solution()){
            // prune states that cannot possibly result in a cheaper solution
            // g-value might include some goal cost
            int goal_cost = max(0, CompliantPathGraph::get_min_leaf_goal_cost() - node.get_leaf_part_g());
            if (node.get_g() + max(goal_cost, node.get_h()) >= bound) {
                if (node.get_h() >= goal_cost){
                    // A* f-value >= current best solution cost => found solution is optimal
                    ds_optimality_guaranteed = true;
                }
                continue;
            }
            if (g_factoring->get_search_type() == ASDA && pruning_heuristic != 0){
                pruning_heuristic->evaluate(s);
                if (node.get_g() + pruning_heuristic->get_heuristic() >= bound){
                    continue;
                }
            }
        }

        if (use_multi_path_dependence) {
            assert(last_key_removed.size() == 2);
            if (node.is_dead_end())
                continue;
            int pushed_h = last_key_removed[1];
            assert(node.get_h() >= pushed_h);
            if (node.get_h() > pushed_h) {
                // cout << "LM-A* skip h" << endl;
                continue;
            }
            assert(node.get_h() == pushed_h);
            if (!node.is_closed() && node.is_h_dirty()) {
                for (size_t i = 0; i < heuristics.size(); ++i)
                    heuristics[i]->evaluate(node.get_state());
                node.clear_h_dirty();
                search_progress.inc_evaluations(heuristics.size());

                open_list->evaluate(node.get_g(), false);
                bool dead_end = open_list->is_dead_end();
                if (dead_end) {
                    node.mark_as_dead_end();
                    search_progress.inc_dead_ends();
                    continue;
                }
                int new_h = heuristics[0]->get_heuristic();
                if (new_h > node.get_h()) {
                    assert(node.is_open());
                    node.increase_h(new_h);
                    open_list->insert(node.get_state_id());
                    continue;
                }
            }
        }

        node.close();
        assert(!node.is_dead_end());
        update_jump_statistic(node);
        search_progress.inc_expanded();
        return make_pair(node, true);
    }
}

void EagerSearch::reward_progress() {
    // Boost the "preferred operator" open lists somewhat whenever
    // one of the heuristics finds a state with a new best h value.
    open_list->boost_preferred();
}

void EagerSearch::dump_search_space() {
    search_space.dump();
}

void EagerSearch::update_jump_statistic(const SearchNode &node) {
    if (f_evaluator) {
        heuristics[0]->set_evaluator_value(node.get_h());
        f_evaluator->evaluate(node.get_g(), false);
        int new_f_value = f_evaluator->get_value();
        search_progress.report_f_value(new_f_value);
    }
}

void EagerSearch::print_heuristic_values(const vector<int> &values) const {
    for (size_t i = 0; i < values.size(); ++i) {
        cout << values[i];
        if (i != values.size() - 1)
            cout << "/";
    }
}

static shared_ptr<SearchEngine> _parse(OptionParser &parser) {
    parser.document_synopsis("Eager best first search", "");

    parser.add_option<shared_ptr<OpenList<StateID>>>("open", "open list");
    parser.add_option<bool>("reopen_closed",
                            "reopen closed nodes", "false");
    parser.add_option<bool>("pathmax",
                            "use pathmax correction", "false");
    parser.add_option<shared_ptr<Evaluator>>(
        "f_eval",
        "set evaluator for jump statistics. "
        "(Optional; if no evaluator is used, jump statistics will not be displayed.)",
        "");
    parser.add_list_option<shared_ptr<Evaluator>>
        ("preferred",
        "use preferred operators of these heuristics", "[]");
    SearchEngine::add_options_to_parser(parser);
    Options opts = parser.parse();

    if (!parser.dry_run()) {
        opts.set<bool>("mpd", false);
        return make_shared<EagerSearch>(opts);
    }

    return 0;
}

static shared_ptr<SearchEngine> _parse_astar(OptionParser &parser) {
    parser.document_synopsis(
        "A* search (eager)",
        "A* is a special case of eager best first search that uses g+h "
        "as f-function. "
        "We break ties using the evaluator. Closed nodes are re-opened.");
    parser.document_note(
        "mpd option",
        "This option is currently only present for the A* algorithm and not "
        "for the more general eager search, "
        "because the current implementation of multi-path depedence "
        "does not support general open lists.");
    parser.document_note(
        "Equivalent statements using general eager search",
        "\n```\n--search astar(evaluator)\n```\n"
        "is equivalent to\n"
        "```\n--heuristic h=evaluator\n"
        "--search eager(tiebreaking([sum([g(), h]), h], unsafe_pruning=false),\n"
        "               reopen_closed=true, pathmax=false, progress_evaluator=sum([g(), h]))\n"
        "```\n", true);
    parser.add_option<shared_ptr<Evaluator>>("eval", "evaluator for h-value");
    parser.add_option<shared_ptr<Evaluator>>("pruning_heuristic",
            "heuristic for upper-bound pruning in anytime decoupled search",
            OptionParser::NONE);
    parser.add_option<bool>("pathmax",
            "use pathmax correction", "false");
    parser.add_option<bool>("mpd",
            "use multi-path dependence (LM-A*)", "false");
    parser.add_option<bool>("check_consistency",
                            "check for every transition if the heuristic is consistent",
                            "false");
    parser.add_option<shared_ptr<PruningMethod>>("pruning",
            "pruning method",
            OptionParser::NONE);
    SearchEngine::add_options_to_parser(parser);
    Options opts = parser.parse();

    if (!parser.dry_run()) {
        vector<shared_ptr<Evaluator>> sum_evals;
        sum_evals.push_back(make_shared<GEvaluator>());
        shared_ptr<Evaluator> eval = opts.get<shared_ptr<Evaluator>>("eval");
        sum_evals.push_back(eval);
        shared_ptr<Evaluator> f_eval = make_shared<SumEvaluator>(sum_evals);

        // use eval for tiebreaking
        std::vector<shared_ptr<Evaluator>> evals;
        evals.push_back(f_eval);
        evals.push_back(eval);
        shared_ptr<OpenList<StateID>> open = make_shared<TieBreakingOpenList<StateID>>(evals, false, false);

        opts.set("open", open);
        opts.set("f_eval", f_eval);
        opts.set("reopen_closed", true);
        return make_shared<EagerSearch>(opts);
    }

    return 0;
}

static shared_ptr<SearchEngine> _parse_greedy(OptionParser &parser) {
    parser.document_synopsis("Greedy search (eager)", "");
    parser.document_note(
        "Open list",
        "In most cases, eager greedy best first search uses "
        "an alternation open list with one queue for each evaluator. "
        "If preferred operator heuristics are used, it adds an extra queue "
        "for each of these evaluators that includes only the nodes that "
        "are generated with a preferred operator. "
        "If only one evaluator and no preferred operator heuristic is used, "
        "the search does not use an alternation open list but a "
        "standard open list with only one queue.");
    parser.document_note(
        "Closed nodes",
        "Closed node are not re-opened");
    parser.document_note(
        "Equivalent statements using general eager search",
        "\n```\n--heuristic h2=eval2\n"
        "--search eager_greedy([eval1, h2], preferred=h2, boost=100)\n```\n"
        "is equivalent to\n"
        "```\n--heuristic h1=eval1 --heuristic h2=eval2\n"
        "--search eager(alt([single(h1), single(h1, pref_only=true), single(h2), \n"
        "                    single(h2, pref_only=true)], boost=100),\n"
        "               preferred=h2)\n```\n"
        "------------------------------------------------------------\n"
        "```\n--search eager_greedy([eval1, eval2])\n```\n"
        "is equivalent to\n"
        "```\n--search eager(alt([single(eval1), single(eval2)]))\n```\n"
        "------------------------------------------------------------\n"
        "```\n--heuristic h1=eval1\n"
        "--search eager_greedy(h1, preferred=h1)\n```\n"
        "is equivalent to\n"
        "```\n--heuristic h1=eval1\n"
        "--search eager(alt([single(h1), single(h1, pref_only=true)]),\n"
        "               preferred=h1)\n```\n"
        "------------------------------------------------------------\n"
        "```\n--search eager_greedy(eval1)\n```\n"
        "is equivalent to\n"
        "```\n--search eager(single(eval1))\n```\n", true);

    parser.add_list_option<shared_ptr<Evaluator>>("evals", "scalar evaluators");
    parser.add_list_option<shared_ptr<Evaluator>>(
        "preferred",
        "use preferred operators of these heuristics", "[]");
    parser.add_option<int>(
        "boost",
        "boost value for preferred operator open lists", "0");
    SearchEngine::add_options_to_parser(parser);


    Options opts = parser.parse();
    opts.verify_list_non_empty<shared_ptr<Evaluator>>("evals");

    if (!parser.dry_run()) {
        vector<shared_ptr<Evaluator>> evals =
            opts.get_list<shared_ptr<Evaluator>>("evals");
        vector<shared_ptr<Evaluator>> preferred_list =
            opts.get_list<shared_ptr<Evaluator>>("preferred");
        shared_ptr<OpenList<StateID>> open;
        if ((evals.size() == 1) && preferred_list.empty()) {
            open = make_shared<StandardScalarOpenList<StateID>>(evals[0], false);
        } else {
            vector<shared_ptr<OpenList<StateID>>> inner_lists;
            for (size_t i = 0; i < evals.size(); ++i) {
                inner_lists.push_back(
                        make_shared<StandardScalarOpenList<StateID>>(evals[i], false));
                if (!preferred_list.empty()) {
                    inner_lists.push_back(
                            make_shared<StandardScalarOpenList<StateID>>(evals[i], true));
                }
            }
            open = make_shared<AlternationOpenList<StateID>>(
                inner_lists, opts.get<int>("boost"));
        }

        opts.set("open", open);
        opts.set("reopen_closed", false);
        opts.set("pathmax", false);
        opts.set("mpd", false);
        shared_ptr<Evaluator> sep;
        opts.set("f_eval", sep);
        opts.set("preferred", preferred_list);
        return make_shared<EagerSearch>(opts);
    }
    return 0;
}

static Plugin<SearchEngine> _plugin("eager", _parse);
static Plugin<SearchEngine> _plugin_astar("astar", _parse_astar);
static Plugin<SearchEngine> _plugin_greedy("eager_greedy", _parse_greedy);
