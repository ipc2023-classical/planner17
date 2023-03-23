#ifndef MERGE_AND_SHRINK_MERGE_TREE_FACTORY_LINEAR_COMPLIANT_H
#define MERGE_AND_SHRINK_MERGE_TREE_FACTORY_LINEAR_COMPLIANT_H

#include "merge_tree_factory.h"

#include "../task_utils/variable_order_finder.h"

namespace utils {
class RandomNumberGenerator;
}

namespace merge_and_shrink {
class MergeTreeFactoryLinearCompliant : public MergeTreeFactory {
    variable_order_finder::VariableOrderType variable_order_type;
    std::shared_ptr<utils::RandomNumberGenerator> rng;
protected:
    virtual std::string name() const override;
    virtual void dump_tree_specific_options(utils::LogProxy &log) const override;
public:
    explicit MergeTreeFactoryLinearCompliant(const options::Options &options);
    virtual ~MergeTreeFactoryLinearCompliant() override = default;
    virtual std::unique_ptr<MergeTree> compute_merge_tree(
        const TaskProxy &task_proxy) override;

    virtual bool requires_init_distances() const override {
        return false;
    }

    virtual bool requires_goal_distances() const override {
        return false;
    }

    static void add_options_to_parser(options::OptionParser &parser);
};
}

#endif
