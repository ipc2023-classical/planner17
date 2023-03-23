#include "merge_and_shrink_heuristic.h"

#include "distances.h"
#include "factored_transition_system.h"
#include "merge_and_shrink_algorithm.h"
#include "merge_and_shrink_representation.h"
#include "transition_system.h"
#include "types.h"

#include "../globals.h"
#include "../option_parser.h"
#include "../plugin.h"

#include "../tasks/root_task.h"
#include "../task_utils/task_properties.h"

#include "../utils/markup.h"
#include "../utils/system.h"

#include <cassert>
#include <iostream>
#include <utility>

using namespace std;
using utils::ExitCode;

namespace merge_and_shrink {
MergeAndShrinkHeuristic::MergeAndShrinkHeuristic(const options::Options &opts)
    : Heuristic(opts),
      decoupled_lookup(opts.get<DECOUPLED_LOOKUP>("decoupled_lookup")) {
    log << "Initializing merge-and-shrink heuristic..." << endl;
    MergeAndShrinkAlgorithm algorithm(opts);
    // TODO: switch back to task of heuristic
    TaskProxy task_proxy(*tasks::g_root_task);
    FactoredTransitionSystem fts = algorithm.build_factored_transition_system(task_proxy);
    extract_factors(fts);
    log << "Done initializing merge-and-shrink heuristic." << endl << endl;
    if (decoupled_lookup == DECOUPLED_LOOKUP::EXACT){
        for (auto &mas_representation : mas_representations){
            mas_representation->enable_cache();
        }
    }
}

void MergeAndShrinkHeuristic::extract_factor(
    FactoredTransitionSystem &fts, int index) {
    /*
      Extract the factor at the given index from the given factored transition
      system, compute goal distances if necessary and store the M&S
      representation, which serves as the heuristic.
    */
    auto final_entry = fts.extract_factor(index);
    unique_ptr<MergeAndShrinkRepresentation> mas_representation = move(final_entry.first);
    unique_ptr<Distances> distances = move(final_entry.second);
    if (!distances->are_goal_distances_computed()) {
        const bool compute_init = false;
        const bool compute_goal = true;
        distances->compute_distances(compute_init, compute_goal, log);
    }
    assert(distances->are_goal_distances_computed());
    mas_representation->set_distances(*distances);
    mas_representations.push_back(move(mas_representation));
}

bool MergeAndShrinkHeuristic::extract_unsolvable_factor(FactoredTransitionSystem &fts) {
    /* Check if there is an unsolvable factor. If so, extract and store it and
       return true. Otherwise, return false. */
    for (int index : fts) {
        if (!fts.is_factor_solvable(index)) {
            mas_representations.reserve(1);
            extract_factor(fts, index);
            if (log.is_at_least_normal()) {
                log << fts.get_transition_system(index).tag()
                    << "use this unsolvable factor as heuristic."
                    << endl;
            }
            return true;
        }
    }
    return false;
}

void MergeAndShrinkHeuristic::extract_nontrivial_factors(FactoredTransitionSystem &fts) {
    // Iterate over remaining factors and extract and store the nontrivial ones.
    for (int index : fts) {
        if (fts.is_factor_trivial(index)) {
            if (log.is_at_least_verbose()) {
                log << fts.get_transition_system(index).tag()
                    << "is trivial." << endl;
            }
        } else {
            extract_factor(fts, index);
        }
    }
}

void MergeAndShrinkHeuristic::extract_factors(FactoredTransitionSystem &fts) {
    /*
      TODO: This method has quite a bit of fiddling with aspects of
      transition systems and the merge-and-shrink representation (checking
      whether distances have been computed; computing them) that we would
      like to have at a lower level. See also the TODO in
      factored_transition_system.h on improving the interface of that class
      (and also related classes like TransitionSystem etc).
    */
    assert(mas_representations.empty());

    int num_active_factors = fts.get_num_active_entries();
    if (log.is_at_least_normal()) {
        log << "Number of remaining factors: " << num_active_factors << endl;
    }

    bool unsolvalbe = extract_unsolvable_factor(fts);
    if (!unsolvalbe) {
        extract_nontrivial_factors(fts);
    }

    int num_factors_kept = mas_representations.size();
    if (log.is_at_least_normal()) {
        log << "Number of factors kept: " << num_factors_kept << endl;
    }
}

int MergeAndShrinkHeuristic::compute_heuristic(const GlobalState &ancestor_state) {
    static bool precomputed = false;
    if (!precomputed && g_factoring) {
        // TODO fix this!
        // this might need to be done in the first call to compute_heuristic due to dependencies to data structures
        // otherwise not being initialized. It should definitely go into a separate function, though, and not use
        // this static flag.
        if (decoupled_lookup == DECOUPLED_LOOKUP::EXACT_NOCACHE ||
            decoupled_lookup == DECOUPLED_LOOKUP::EXACT_STRONGLY_COMPLIANT_MERGING) {
            for (const unique_ptr<MergeAndShrinkRepresentation> &mas_representation: mas_representations) {
                // Compute variables contained in M&S representation.
                vector<bool> contained_vars(g_variable_domain.size(), false);
                mas_representation->get_contained_vars(contained_vars);
                vector<bool> vars_up_to_node(g_variable_domain.size(), false);
                mas_representation->set_exactly_covered_leaf_ids(contained_vars, vars_up_to_node, false);
            }
        } else if (decoupled_lookup == DECOUPLED_LOOKUP::EXACT) {
            int max_nesting_all = 0;
            for (unique_ptr<MergeAndShrinkRepresentation> &mas_representation: mas_representations) {
                // Compute variables contained in M&S representation.
                vector<bool> contained_vars(g_variable_domain.size(), false);
                mas_representation->get_contained_vars(contained_vars);

                vector<bool> covered_vars(g_variable_domain.size(), false);
                mas_representation->set_exactly_covered_leaf_ids(contained_vars, covered_vars, true);

                covered_vars = vector<bool>(g_variable_domain.size(), false);
                vector<bool> covered_leaves(g_leaves.size(), false);
                auto [is_strongly_compliant, max_nesting] = mas_representation->check_compliance_and_nesting(
                        contained_vars,
                        covered_vars,
                        covered_leaves);
                assert(max_nesting >= 0 && max_nesting <= static_cast<int>(g_leaves.size()));
                max_nesting_all = max(max_nesting_all, max_nesting);
                if (is_strongly_compliant){
                    assert(max_nesting <= 1);
                    mas_representation->disable_cache();
                    cout << "MS representation is strongly compliant with the factoring, disabling cache." << endl;
                } else {
                    cout << "Maximum nestedness of leaves (non-compliance): " << max_nesting << endl;
                }
            }
            cout << "Maximum nestedness of all leaves (non-compliance): " << max_nesting_all << endl;
        } else if (decoupled_lookup == DECOUPLED_LOOKUP::EXACT_ICAPS23 || decoupled_lookup == DECOUPLED_LOOKUP::EXPLICIT){
            for (const unique_ptr<MergeAndShrinkRepresentation> &mas_representation: mas_representations) {
                vector<bool> contained_vars(g_variable_domain.size(), false);
                mas_representation->get_contained_vars(contained_vars);
                mas_representation->store_all_affected_leaf_ids_in_root(contained_vars);
            }
        }
        precomputed = true;
    }
    int heuristic = 0;
    for (const unique_ptr<MergeAndShrinkRepresentation> &mas_representation : mas_representations) {
        int cost;
        if (g_factoring) {
            if (decoupled_lookup == DECOUPLED_LOOKUP::EXACT ||
                decoupled_lookup == DECOUPLED_LOOKUP::EXACT_NOCACHE) {
                cost = mas_representation->compute_decoupled_value_exact(ancestor_state);
            } else if (decoupled_lookup == DECOUPLED_LOOKUP::EXACT_ICAPS23) {
                cost = mas_representation->compute_decoupled_value_exact_icaps23(ancestor_state);
            } else if (decoupled_lookup == DECOUPLED_LOOKUP::EXACT_STRONGLY_COMPLIANT_MERGING) {
                cost = mas_representation->compute_decoupled_value_exact_strongly_compliant_merging(ancestor_state);
            } else if (decoupled_lookup == DECOUPLED_LOOKUP::EXPLICIT) {
                cost = mas_representation->compute_decoupled_value_explicit(ancestor_state);
            } else {
                cerr << "unknown decoupled lookup" << endl;
                utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
            }
        } else {
            cost = mas_representation->get_value(ancestor_state);
        }
        if (cost == PRUNED_STATE || cost == INF) {
            // If state is unreachable or irrelevant, we encountered a dead end.
            return DEAD_END;
        }
        heuristic = max(heuristic, cost);
    }
    return heuristic;
}

static shared_ptr<Heuristic> _parse(options::OptionParser &parser) {
    parser.document_synopsis(
        "Merge-and-shrink heuristic",
        "This heuristic implements the algorithm described in the following "
        "paper:" + utils::format_conference_reference(
            {"Silvan Sievers", "Martin Wehrle", "Malte Helmert"},
            "Generalized Label Reduction for Merge-and-Shrink Heuristics",
            "https://ai.dmi.unibas.ch/papers/sievers-et-al-aaai2014.pdf",
            "Proceedings of the 28th AAAI Conference on Artificial"
            " Intelligence (AAAI 2014)",
            "2358-2366",
            "AAAI Press",
            "2014") + "\n" +
        "For a more exhaustive description of merge-and-shrink, see the journal "
        "paper" + utils::format_journal_reference(
            {"Silvan Sievers", "Malte Helmert"},
            "Merge-and-Shrink: A Compositional Theory of Transformations "
            "of Factored Transition Systems",
            "https://ai.dmi.unibas.ch/papers/sievers-helmert-jair2021.pdf",
            "Journal of Artificial Intelligence Research",
            "71",
            "781-883",
            "2021") + "\n" +
        "The following paper describes how to improve the DFP merge strategy "
        "with tie-breaking, and presents two new merge strategies (dyn-MIASM "
        "and SCC-DFP):" + utils::format_conference_reference(
            {"Silvan Sievers", "Martin Wehrle", "Malte Helmert"},
            "An Analysis of Merge Strategies for Merge-and-Shrink Heuristics",
            "https://ai.dmi.unibas.ch/papers/sievers-et-al-icaps2016.pdf",
            "Proceedings of the 26th International Conference on Automated "
            "Planning and Scheduling (ICAPS 2016)",
            "294-298",
            "AAAI Press",
            "2016") + "\n" +
        "Details of the algorithms and the implementation are described in the "
        "paper" + utils::format_conference_reference(
            {"Silvan Sievers"},
            "Merge-and-Shrink Heuristics for Classical Planning: Efficient "
            "Implementation and Partial Abstractions",
            "https://ai.dmi.unibas.ch/papers/sievers-socs2018.pdf",
            "Proceedings of the 11th Annual Symposium on Combinatorial Search "
            "(SoCS 2018)",
            "90-98",
            "AAAI Press",
            "2018")
        );
    parser.document_language_support("action costs", "supported");
    parser.document_language_support("conditional effects", "supported (but see note)");
    parser.document_language_support("axioms", "not supported");
    parser.document_property("admissible", "yes (but see note)");
    parser.document_property("consistent", "yes (but see note)");
    parser.document_property("safe", "yes");
    parser.document_property("preferred operators", "no");
    parser.document_note(
        "Note",
        "Conditional effects are supported directly. Note, however, that "
        "for tasks that are not factored (in the sense of the JACM 2014 "
        "merge-and-shrink paper), the atomic transition systems on which "
        "merge-and-shrink heuristics are based are nondeterministic, "
        "which can lead to poor heuristics even when only perfect shrinking "
        "is performed.");
    parser.document_note(
        "Note",
        "When pruning unreachable states, admissibility and consistency is "
        "only guaranteed for reachable states and transitions between "
        "reachable states. While this does not impact regular A* search which "
        "will never encounter any unreachable state, it impacts techniques "
        "like symmetry-based pruning: a reachable state which is mapped to an "
        "unreachable symmetric state (which hence is pruned) would falsely be "
        "considered a dead-end and also be pruned, thus violating optimality "
        "of the search.");
    parser.document_note(
        "Note",
        "When using a time limit on the main loop of the merge-and-shrink "
        "algorithm, the heuristic will compute the maximum over all heuristics "
        "induced by the remaining factors if terminating the merge-and-shrink "
        "algorithm early. Exception: if there is an unsolvable factor, it will "
        "be used as the exclusive heuristic since the problem is unsolvable.");
    parser.document_note(
        "Note",
        "A currently recommended good configuration uses bisimulation "
        "based shrinking, the merge strategy SCC-DFP, and the appropriate "
        "label reduction setting (max_states has been altered to be between "
        "10k and 200k in the literature):\n"
        "{{{\nmerge_and_shrink(shrink_strategy=shrink_bisimulation(greedy=false),"
        "merge_strategy=merge_sccs(order_of_clusters=topological,merge_selector="
        "score_based_filtering(scoring_functions=[goal_relevance,dfp,"
        "total_order])),label_reduction=exact(before_shrinking=true,"
        "before_merging=false),max_states=50k,threshold_before_merge=1)\n}}}\n");
    vector<string> decoupled_lookup_names;
    decoupled_lookup_names.emplace_back("exact_icaps23");
    decoupled_lookup_names.emplace_back("exact");
    decoupled_lookup_names.emplace_back("exact_nocache");
    decoupled_lookup_names.emplace_back("exact_strongly_compliant_merging");
    decoupled_lookup_names.emplace_back("explicit");
    vector<string> decoupled_lookup_docs;
    decoupled_lookup_docs.emplace_back(
            "track full product of partial leaf states up until the root node");
    decoupled_lookup_docs.emplace_back(
            "track product of partial leaf states up until the root node, but computing "
            "prices once a leaf is fully covered, caching these estimates");
    decoupled_lookup_docs.emplace_back(
            "same as EXACT, but without caching");
    decoupled_lookup_docs.emplace_back(
            "track full product of partial leaf states until leaf is fully "
            "covered by M&S representation - only for merge strategies strongly compliant "
            "with factoring; optimized implementation");
    decoupled_lookup_docs.emplace_back(
            "simply calls the standard M&S lookup for every member state");
    parser.add_enum_option<DECOUPLED_LOOKUP>(
            "decoupled_lookup",
            decoupled_lookup_names,
            "choose how to do the decoupled lookup",
            "exact_icaps23",
            decoupled_lookup_docs);

    Heuristic::add_options_to_parser(parser);
    add_merge_and_shrink_algorithm_options_to_parser(parser);
    options::Options opts = parser.parse();
    if (parser.help_mode()) {
        return nullptr;
    }

    handle_shrink_limit_options_defaults(opts);

    if (parser.dry_run()) {
        return nullptr;
    } else {
        return make_shared<MergeAndShrinkHeuristic>(opts);
    }
}

static options::Plugin<Evaluator> _plugin("merge_and_shrink", _parse);
}
