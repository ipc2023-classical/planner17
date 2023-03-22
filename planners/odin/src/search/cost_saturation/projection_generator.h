#ifndef COST_SATURATION_PROJECTION_GENERATOR_H
#define COST_SATURATION_PROJECTION_GENERATOR_H

#include "abstraction_generator.h"

namespace options {
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
    const bool create_complete_transition_system;

public:
    explicit ProjectionGenerator(const options::Options &opts);

    Abstractions generate_abstractions(
        const std::shared_ptr<AbstractTask> &task,
        std::shared_ptr<TaskInfo> task_info,
        std::shared_ptr<BddBuilder> bdd_builder,
        DeadEnds *dead_ends);
};
}

#endif
