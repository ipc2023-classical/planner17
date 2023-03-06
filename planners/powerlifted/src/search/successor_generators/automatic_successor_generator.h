#ifndef SEARCH_AUTOMATIC_H
#define SEARCH_AUTOMATIC_H

#include "../action.h"
#include "../action_schema.h"
#include "../states/state.h"
#include "../task.h"
#include "successor_generator.h"

#include <chrono>
#include <vector>

class Task;

class AutomaticSuccessorGenerator : public SuccessorGenerator {
private:
    const int num_samples_;
    SuccessorGenerator *first_generator_;
    SuccessorGenerator *second_generator_;
    std::string first_name_;
    std::string second_name_;
    std::chrono::nanoseconds first_generator_ns_;
    std::chrono::nanoseconds second_generator_ns_;
    int first_generator_count_;
    int second_generator_count_;

public:
    explicit AutomaticSuccessorGenerator(SuccessorGenerator *first_generator,
                                         const std::string &first_name,
                                         SuccessorGenerator *second_generator,
                                         const std::string &second_name,
                                         const int num_samples);

    ~AutomaticSuccessorGenerator();

    std::vector<LiftedOperatorId> get_applicable_actions(const std::vector<ActionSchema> &actions,
                                                         const DBState &state) override;

    std::vector<LiftedOperatorId> get_applicable_actions(const ActionSchema &action,
                                                         const DBState &state) override;

    DBState generate_successor(const LiftedOperatorId &op,
                               const ActionSchema &action,
                               const DBState &state) override;

    long get_generated_total() const override { return 0; }

    long get_generated_applicable() const override { return 0; }
};

#endif  // SEARCH_AUTOMATIC_H
