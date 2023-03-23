#ifndef PDBS_PATTERN_FILTER_H
#define PDBS_PATTERN_FILTER_H

#include "types.h"

#include <unordered_set>

struct LeafFactorID;

namespace options {
class OptionParser;
class Options;
}

namespace pdbs {
class PatternFilter {
public:
    virtual ~PatternFilter() = default;

    virtual bool is_pattern_ok(const Pattern &pattern) const = 0;
    virtual bool can_add_var_to_pattern(
        const Pattern &pattern, int var) const = 0;
    virtual bool can_merge_patterns(
        const Pattern &pattern1, const Pattern &pattern2) const = 0;
};

extern void get_leaf_factors_of_pattern(
    const Pattern &pattern, std::unordered_set<LeafFactorID> &leaf_factors);
extern std::unordered_set<LeafFactorID> get_leaf_factors_of_pattern(const Pattern &pattern);
extern void add_pattern_filter_option_to_parser(options::OptionParser &parser);
extern std::shared_ptr<PatternFilter> get_pattern_filter_from_options(
    const options::Options &opts);
}

#endif
