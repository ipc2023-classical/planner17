#include "pdb_heuristic.h"

#include "decoupled_pdb_utils.h"
#include "pattern_database.h"
#include "pattern_filter.h"
#include "pattern_generator.h"

#include "../globals.h"
#include "../option_parser.h"
#include "../plugin.h"
#include "../state.h"

#include "../compliant_paths/cpg_storage.h"
#include "../compliant_paths/explicit_state_cpg.h"
#include "../tasks/root_task.h"

#include <limits>
#include <memory>

using namespace std;

namespace pdbs {
shared_ptr<PatternDatabase> get_pdb_from_options(const shared_ptr<AbstractTask> &task,
                                                 const Options &opts) {
    shared_ptr<PatternGenerator> pattern_generator =
        opts.get<shared_ptr<PatternGenerator>>("pattern");
    PatternInformation pattern_info = pattern_generator->generate(task);
    return pattern_info.get_pdb();
}

PDBHeuristic::PDBHeuristic(const Options &opts)
    : Heuristic(opts),
      polynomial_decoupled_pdb(opts.get<bool>("polynomial_decoupled_pdb")),
    // TODO: change back to task
      pdb(get_pdb_from_options(tasks::g_root_task, opts)) {
    if (g_factoring) {
        unordered_set<LeafFactorID> aff_leaves = get_leaf_factors_of_pattern(pdb->get_pattern());
        affected_leaves.assign(aff_leaves.begin(), aff_leaves.end());
        affected_pattern_var_indices_by_leaf = compute_affected_pattern_var_indices_by_leaf(pdb->get_pattern());
    }
}

int PDBHeuristic::compute_heuristic(const GlobalState &ancestor_state) {
    int h;
    if (g_factoring) {
        h = compute_pdb_value_with_prices(
            ancestor_state,
            *pdb,
            dynamic_cast<const ExplicitStateCPG *>(CPGStorage::storage->get_cpg(ancestor_state)),
            affected_leaves,
            affected_pattern_var_indices_by_leaf,
            polynomial_decoupled_pdb);
    } else {
        h = pdb->get_value(ancestor_state);
    }
    if (h == numeric_limits<int>::max())
        return DEAD_END;
    return h;
}

static shared_ptr<Heuristic> _parse(OptionParser &parser) {
    parser.document_synopsis("Pattern database heuristic", "TODO");
    parser.document_language_support("action costs", "supported");
    parser.document_language_support("conditional effects", "not supported");
    parser.document_language_support("axioms", "not supported");
    parser.document_property("admissible", "yes");
    parser.document_property("consistent", "yes");
    parser.document_property("safe", "yes");
    parser.document_property("preferred operators", "no");

    parser.add_option<shared_ptr<PatternGenerator>>(
        "pattern",
        "pattern generation method",
        "greedy()");
    Heuristic::add_options_to_parser(parser);
    add_approximate_options_to_parser(parser);

    Options opts = parser.parse();
    if (parser.dry_run())
        return nullptr;

    return make_shared<PDBHeuristic>(opts);
}

static Plugin<Evaluator> _plugin("pdb", _parse, "heuristics_pdb");
}
