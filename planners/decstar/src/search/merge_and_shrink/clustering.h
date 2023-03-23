#ifndef MERGE_AND_SHRINK_CLUSTERING_H
#define MERGE_AND_SHRINK_CLUSTERING_H

#include <vector>

class TaskProxy;

namespace merge_and_shrink {
class Clustering {
public:
    Clustering() = default;
    virtual ~Clustering() = default;

    virtual std::vector<std::vector<int>> compute(const TaskProxy &task_proxy) const = 0;
};
}

#endif
