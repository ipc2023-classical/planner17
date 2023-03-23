#include "pattern_filter_n_leaves_patterns.h"

#include "../globals.h"
#include "../leaf_state_id.h"
#include "../plugin.h"

#include "../utils/logging.h"

#include <memory>
#include <unordered_set>

using namespace std;

namespace pdbs {
PatternFilterNLeavesPatterns::PatternFilterNLeavesPatterns(const options::Options &opts)
    : PatternFilter(), n(opts.get<int>("n")) {
}

bool PatternFilterNLeavesPatterns::is_pattern_ok(const Pattern &pattern) const {
    if (g_belongs_to_factor.empty()) {
        return true;
    }
    return static_cast<int>(get_leaf_factors_of_pattern(pattern).size()) <= n;
}

bool PatternFilterNLeavesPatterns::can_add_var_to_pattern(
    const Pattern &pattern, int var) const {
    if (g_belongs_to_factor.empty()) {
        return true;
    }
//    utils::g_log << "can add " << var << " to " << pattern << "? ";
    LeafFactorID var_factor_id = g_belongs_to_factor[var];
    if (var_factor_id == LeafFactorID::CENTER) {
//        utils::g_log << "yes" << endl;
        return true;
    }

    unordered_set<LeafFactorID> leaf_factors = get_leaf_factors_of_pattern(pattern);
    int num_leaves = leaf_factors.size();
    assert(num_leaves <= n);
    if (num_leaves < n) {
//        utils::g_log << "yes" << endl;
        return true;
    } else {
//        utils::g_log << (leaf_factors.count(var_factor_id) ? "yes" : "no") << endl;
        return leaf_factors.count(var_factor_id);
    }
}

bool PatternFilterNLeavesPatterns::can_merge_patterns(
    const Pattern &pattern1, const Pattern &pattern2) const {
    if (g_belongs_to_factor.empty()) {
        return true;
    }
//    utils::g_log << "can merge " << pattern1 << " and " << pattern2 << "? ";
    unordered_set<LeafFactorID> union_leaf_factors;
    get_leaf_factors_of_pattern(pattern1, union_leaf_factors);
    get_leaf_factors_of_pattern(pattern2, union_leaf_factors);
    int num_leaves = union_leaf_factors.size();
//    utils::g_log << (num_leaves <= n ? "yes" : "no") << endl;
    return num_leaves <= n;
}

static shared_ptr<PatternFilter> _parse(options::OptionParser &parser) {
    parser.add_option<int>(
        "n",
        "allowed number of affected leaf factors",
        "1");

    options::Options opts = parser.parse();
    if (parser.dry_run()) {
        return nullptr;
    }
    return make_shared<PatternFilterNLeavesPatterns>(opts);
}

static Plugin<PatternFilter> _plugin("n_leaves_patterns", _parse);
}
