#include "automatic_successor_generator.h"

#include <iostream>

using namespace std;

AutomaticSuccessorGenerator::AutomaticSuccessorGenerator(SuccessorGenerator *first_generator,
                                                         const std::string &first_name,
                                                         SuccessorGenerator *second_generator,
                                                         const std::string &second_name,
                                                         const int num_samples)
    : num_samples_(num_samples),
      first_generator_(first_generator),
      second_generator_(second_generator),
      first_name_(first_name),
      second_name_(second_name),
      first_generator_ns_(0),
      second_generator_ns_(0),
      first_generator_count_(0),
      second_generator_count_(0)
{
}

AutomaticSuccessorGenerator::~AutomaticSuccessorGenerator() {
    delete first_generator_;
    delete second_generator_;
    first_generator_ = nullptr;
    second_generator_ = nullptr;
}

std::vector<LiftedOperatorId>
AutomaticSuccessorGenerator::get_applicable_actions(const std::vector<ActionSchema> &actions,
                                                    const DBState &state)
{
    if (first_generator_ == nullptr) {
        return second_generator_->get_applicable_actions(actions, state);
    }
    else if (second_generator_ == nullptr) {
        return first_generator_->get_applicable_actions(actions, state);
    }
    else if (first_generator_count_ < second_generator_count_) {
        const auto time_start = chrono::steady_clock::now();
        const auto applicable_actions = first_generator_->get_applicable_actions(actions, state);
        const auto time_stop = chrono::steady_clock::now();
        const auto time_duration = chrono::duration_cast<chrono::nanoseconds>(time_stop - time_start);
        first_generator_ns_ += time_duration;
        ++first_generator_count_;

        if ((first_generator_count_ >= num_samples_) && (second_generator_count_ >= num_samples_)) {
            if (first_generator_ns_ < second_generator_ns_) {
                cout << "[AutomaticSuccessorGenerator] Selected '" << first_name_ << "': " << first_generator_ns_.count() << "ns vs. " << second_generator_ns_.count() << "ns" << endl;
                delete second_generator_;
                second_generator_ = nullptr;
            }
            else {
                cout << "[AutomaticSuccessorGenerator] Selected '" << second_name_ << "': " << first_generator_ns_.count() << "ns vs. " << second_generator_ns_.count() << "ns" << endl;
                delete first_generator_;
                first_generator_ = nullptr;
            }
        }

        return applicable_actions;
    }
    else {
        const auto time_start = chrono::steady_clock::now();
        const auto applicable_actions = second_generator_->get_applicable_actions(actions, state);
        const auto time_stop = chrono::steady_clock::now();
        const auto time_duration = chrono::duration_cast<chrono::nanoseconds>(time_stop - time_start);
        second_generator_ns_ += time_duration;
        ++second_generator_count_;

        if ((first_generator_count_ >= num_samples_) && (second_generator_count_ >= num_samples_)) {
            if (first_generator_ns_ < second_generator_ns_) {
                cout << "[AutomaticSuccessorGenerator] Selected '" << first_name_ << "': " << first_generator_ns_.count() << "ns vs. " << second_generator_ns_.count() << "ns" << endl;
                delete second_generator_;
                second_generator_ = nullptr;
            }
            else {
                cout << "[AutomaticSuccessorGenerator] Selected '" << first_name_ << "': " << first_generator_ns_.count() << "ns vs. " << second_generator_ns_.count() << "ns" << endl;
                delete first_generator_;
                first_generator_ = nullptr;
            }
        }

        return applicable_actions;
    }
}

DBState AutomaticSuccessorGenerator::generate_successor(const LiftedOperatorId &op,
                                                        const ActionSchema &action,
                                                        const DBState &state)
{
    if (first_generator_ == nullptr) {
        return second_generator_->generate_successor(op, action, state);
    }
    else {
        return first_generator_->generate_successor(op, action, state);
    }
}

vector<LiftedOperatorId>
AutomaticSuccessorGenerator::get_applicable_actions(const ActionSchema &action,
                                                    const DBState &state)
{
    vector<ActionSchema> actions = {action};
    return get_applicable_actions(move(actions), state);
}
