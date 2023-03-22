#ifndef TRANSITION_COST_PARTITIONING_PROJECTION_FACTORY_H
#define TRANSITION_COST_PARTITIONING_PROJECTION_FACTORY_H

#include "types.h"

#include "../pdbs/types.h"

using namespace std;

class TaskProxy;

namespace pdbs {
class MatchTree;
}

namespace cost_saturation {
class Abstraction;
class TaskInfo;
class BddBuilder;
class Projection;

/**
 * Factory for constructing Projections.
 *
 * This allow using initializer list
 * and get rid of errors
 * and leads to most efficient code.
 *
 * Note: Using initializer list efficiently was not possible before
 * because some code initialized multiple member attributes.
 */
class ProjectionFactory {
public:
    static unique_ptr<Projection> convert_abstraction(
        const TaskProxy &task_proxy,
        const pdbs::Pattern &pattern,
        std::shared_ptr<TaskInfo> task_info,
        std::shared_ptr<BddBuilder> bdd_builder,
        bool combine_labels=true);
};

}

#endif
