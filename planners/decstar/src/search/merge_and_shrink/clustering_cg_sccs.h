#ifndef MERGE_AND_SHRINK_CLUSTERING_CG_SCCS_H
#define MERGE_AND_SHRINK_CLUSTERING_CG_SCCS_H

#include "clustering.h"

namespace merge_and_shrink {
class ClusteringCGSCCs : public Clustering {
public:
    ClusteringCGSCCs();
    virtual ~ClusteringCGSCCs() = default;

    virtual std::vector<std::vector<int>> compute(const TaskProxy &task_proxy) const override;
};
}

#endif
