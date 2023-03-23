#ifndef PDBS_PATTERN_FILTER_N_LEAVES_PATTERNS_H
#define PDBS_PATTERN_FILTER_N_LEAVES_PATTERNS_H

#include "pattern_filter.h"

namespace options {
class Options;
}

namespace pdbs {
class PatternFilterNLeavesPatterns : public PatternFilter {
    const int n;
public:
    explicit PatternFilterNLeavesPatterns(const options::Options &opts);
    virtual ~PatternFilterNLeavesPatterns() = default;

    virtual bool is_pattern_ok(const Pattern &pattern) const override;
    virtual bool can_add_var_to_pattern(
        const Pattern &pattern, int var) const override;
    virtual bool can_merge_patterns(
        const Pattern &pattern1, const Pattern &pattern2) const override;
};
}

#endif
