#include "canonical_pdbs_heuristic_single_leaf.h"

#include "decoupled_canonical_pdbs_single_leaf.h"
#include "dominance_pruning.h"
#include "pattern_filter.h"
#include "pattern_generator.h"
#include "utils.h"

#include "../globals.h"
#include "../option_parser.h"
#include "../plugin.h"

#include "../tasks/root_task.h"

#include "../utils/logging.h"

#include <iostream>
#include <limits>
#include <memory>

using namespace std;

namespace pdbs {

static unique_ptr<CanonicalPDBs> get_canonical_pdbs_from_options(
    const shared_ptr<AbstractTask> &task, const Options &opts) {
    shared_ptr<PatternCollectionGenerator> pattern_generator =
        opts.get<shared_ptr<PatternCollectionGenerator>>("patterns");
    utils::Timer timer;
    utils::LogProxy log = utils::get_log_from_options(opts);
    log << "Initializing canonical PDB heuristic..." << endl;
    PatternCollectionInformation pattern_collection_info =
        pattern_generator->generate(task);
    shared_ptr<PatternCollection> patterns =
        pattern_collection_info.get_patterns();

    /*
      We compute PDBs and pattern cliques here (if they have not been
      computed before) so that their computation is not taken into account
      for dominance pruning time.
    */
    shared_ptr<PDBCollection> pdbs = pattern_collection_info.get_pdbs();

    assert(g_factoring);

    // verify that every pattern affects at most one leaf factor
    // we want to check this here and not in the constructor of DecoupledCanonicalPDBsSingleLeaf
    // because non-complying patterns might be filtered by dominance pruning beforehand
    for (const Pattern &pattern : *patterns){
        unordered_set<LeafFactorID> affected_leaves = get_leaf_factors_of_pattern(pattern);
        if (affected_leaves.size() > 1){
            cerr << "Every pattern may affect at most one leaf for SINGLE_LEAF decoupled lookup." << endl;
            utils::exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
        }
    }

    shared_ptr<vector<PatternClique>> pattern_cliques = pattern_collection_info.get_pattern_cliques();

    double max_time_dominance_pruning = opts.get<double>("max_time_dominance_pruning");
    if (max_time_dominance_pruning > 0.0) {
        int num_variables = TaskProxy(*task).get_variables().size();
        /*
          NOTE: Dominance pruning could also be computed without having access
          to the PDBs, but since we want to delete patterns, we also want to
          update the list of corresponding PDBs so they are synchronized.

          In the long term, we plan to have patterns and their PDBs live
          together, in which case we would only need to pass their container
          and the pattern cliques.
        */
        prune_dominated_cliques(
            *patterns,
            *pdbs,
            *pattern_cliques,
            num_variables,
            max_time_dominance_pruning,
            log);
    }

    dump_pattern_collection_generation_statistics(
        "Canonical PDB heuristic", timer(), pattern_collection_info, log);

    return utils::make_unique_ptr<DecoupledCanonicalPDBsSingleLeaf>(pdbs, pattern_cliques);
}

CanonicalPDBsHeuristicSingleLeaf::CanonicalPDBsHeuristicSingleLeaf(const Options &opts)
    : CanonicalPDBsHeuristic(
        opts,
        get_canonical_pdbs_from_options(tasks::g_root_task, opts)) {
}

static shared_ptr<Heuristic> _parse(OptionParser &parser) {
    add_canonical_pdbs_options_to_parser(parser);

    Options opts = parser.parse();
    if (parser.dry_run())
        return nullptr;

    return make_shared<CanonicalPDBsHeuristicSingleLeaf>(opts);
}

static Plugin<Evaluator> _plugin("cpdbs_single_leaf", _parse, "heuristics_pdb");
}
