#ifndef PRUNING_METHOD_H
#define PRUNING_METHOD_H

#include <vector>

class OperatorID;
class GlobalState;

class PruningMethod {
public:
    virtual ~PruningMethod() = default;
    virtual void initialize() = 0;
    virtual void prune_operators(const GlobalState &state,
                                 std::vector<OperatorID> &ops) = 0;
    virtual void print_statistics() const = 0;
};

#endif
