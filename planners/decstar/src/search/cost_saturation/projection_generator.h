#ifndef COST_SATURATION_PROJECTION_GENERATOR_H
#define COST_SATURATION_PROJECTION_GENERATOR_H

#include "abstraction_generator.h"

namespace options {
class OptionParser;
class Options;
}

namespace pdbs {
class PatternCollectionGenerator;
}

namespace cost_saturation {
class ProjectionGenerator : public AbstractionGenerator {
    const std::shared_ptr<pdbs::PatternCollectionGenerator> pattern_generator;
    const bool dominance_pruning;
    const bool combine_labels;
    const bool debug;

public:
    explicit ProjectionGenerator(const options::Options &opts);

    Abstractions generate_abstractions(
        const std::shared_ptr<AbstractTask> &task);
};

extern void add_projection_options_to_parser(options::OptionParser &parser);
}

#endif
