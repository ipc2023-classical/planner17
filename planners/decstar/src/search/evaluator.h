#ifndef EVALUATOR_H
#define EVALUATOR_H

#include "operator_cost.h"
#include "operator_id.h"
#include "utils/system.h"

#include <memory>
#include <set>
#include <vector>

class Heuristic;
class Operator;
class GlobalState;

class Evaluator {
public:
    virtual ~Evaluator() {}

    virtual void evaluate(int g, bool preferred) = 0;
    virtual bool is_dead_end() const = 0;
    virtual bool dead_end_is_reliable() const = 0;
    virtual void get_involved_heuristics(std::set<Heuristic*> &hset) = 0;

    // HACK: all this is a mess!
    // from ScalarEvaluator
    virtual int get_value() const {
        std::cerr << "ERROR: This code must not be called (evaluator.h)!" << std::endl;
        utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
    }

    // from Heuristic
    virtual void evaluate(const GlobalState &/*state*/) {
        std::cerr << "ERROR: This code must not be called (evaluator.h)!" << std::endl;
        utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
    }
    virtual bool dead_ends_are_reliable() const {
        std::cerr << "ERROR: This code must not be called (evaluator.h)!" << std::endl;
        utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
    }
    virtual int get_heuristic() {
        std::cerr << "ERROR: This code must not be called (evaluator.h)!" << std::endl;
        utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
    }
    virtual void get_preferred_operators(std::vector<OperatorID> &/*result*/) {
        std::cerr << "ERROR: This code must not be called (evaluator.h)!" << std::endl;
        utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
    }
    virtual bool reach_state(const GlobalState &/*parent_state*/, OperatorID /*op*/,
            const GlobalState &/*state*/) {
        std::cerr << "ERROR: This code must not be called (evaluator.h)!" << std::endl;
        utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
    }
    virtual void set_evaluator_value(int /*val*/) {
        std::cerr << "ERROR: This code must not be called (evaluator.h)!" << std::endl;
        utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
    }
    virtual OperatorCost get_cost_type() const {
        std::cerr << "ERROR: This code must not be called (evaluator.h)!" << std::endl;
        utils::exit_with(utils::ExitCode::SEARCH_CRITICAL_ERROR);
    }
};

#endif
