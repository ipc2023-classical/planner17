#ifndef COMBINING_EVALUATOR_H
#define COMBINING_EVALUATOR_H

#include "evaluator.h"

#include <memory>
#include <set>
#include <string>
#include <vector>

/*
  CombiningEvaluator is the base class for SumEvaluator and
  MaxEvaluator, which captures the common aspects of their behaviour.
  */

class CombiningEvaluator : public Evaluator {
    std::vector<std::shared_ptr<Evaluator>> subevaluators;
    std::vector<int> subevaluator_values;
    int value;
    bool dead_end;
    bool dead_end_reliable;
protected:
    virtual int combine_values(const std::vector<int> &values) = 0;
public:
    CombiningEvaluator(const std::vector<std::shared_ptr<Evaluator>> &subevaluators_);
    ~CombiningEvaluator();

    virtual void evaluate(int g, bool preferred);
    virtual bool is_dead_end() const;
    virtual bool dead_end_is_reliable() const;
    virtual int get_value() const;
    virtual void get_involved_heuristics(std::set<Heuristic*> &hset);
};

#endif
