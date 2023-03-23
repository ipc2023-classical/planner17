#ifndef MERGE_AND_SHRINK_CLUSTERING_COMPLIANT_FACTORING_H
#define MERGE_AND_SHRINK_CLUSTERING_COMPLIANT_FACTORING_H

#include "clustering.h"

namespace merge_and_shrink {
class ClusteringCompliantFactoring : public Clustering {
public:
    ClusteringCompliantFactoring();
    virtual ~ClusteringCompliantFactoring() = default;

    virtual std::vector<std::vector<int>> compute(
        const TaskProxy &task_proxy) const override;
};
}

#endif
