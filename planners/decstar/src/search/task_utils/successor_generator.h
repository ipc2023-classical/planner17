#ifndef TASK_UTILS_SUCCESSOR_GENERATOR_H
#define TASK_UTILS_SUCCESSOR_GENERATOR_H


#include <memory>
#include <vector>

class CompliantPathGraph;
class LeafState;
struct LeafFactorID;
class OperatorID;
class GlobalState;

namespace successor_generator {
class GeneratorBase;

class SuccessorGenerator {
    std::unique_ptr<GeneratorBase> root;

public:
    explicit SuccessorGenerator();
    explicit SuccessorGenerator(LeafFactorID factor);
    explicit SuccessorGenerator(LeafFactorID factor, bool only_keep_all_leaf_preconditions);
    /*
      We cannot use the default destructor (implicitly or explicitly)
      here because GeneratorBase is a forward declaration and the
      incomplete type cannot be destroyed.
    */
    ~SuccessorGenerator();

    void generate_applicable_ops(
            const GlobalState &state, std::vector<OperatorID> &applicable_ops) const;

    // used to generate successors when reconstructing decoupled plans in orbit search
    void generate_applicable_ops(
                const GlobalState &state, const CompliantPathGraph &cpg,
                std::vector<OperatorID> &applicable_ops) const;

    // used in decoupled search to compute leaf state spaces (leaf actions)
    void generate_applicable_ops(
            const LeafState &state, std::vector<OperatorID> &applicable_ops) const;

    // used in decoupled search to compute leaf state spaces (center actions w. leaf pre/eff)
    void generate_applicable_ops_ignore_outside_pre(
            const LeafState &state, std::vector<OperatorID> &applicable_ops) const;

    void remove_never_applicable_center_ops(LeafFactorID factor);
};
}

#endif
