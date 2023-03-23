#ifndef HEURISTIC_H
#define HEURISTIC_H

#include "evaluator.h"
#include "operator_cost.h"

#include "utils/logging.h"

#include <map>
#include <set>
#include <string>
#include <vector>

class OperatorID;
class GlobalState;

namespace options {
class OptionParser;
class Options;
}

// STandarD search; decoupled search with STAR/CENTER heuristic
enum class HEURISTIC_TYPE {STD, STAR, CENTER};

class Heuristic : public Evaluator {
    enum {NOT_INITIALIZED = -2};
    int heuristic;
    int evaluator_value; // usually equal to heuristic but can be different
    // if set with set_evaluator_value which is done if we use precalculated
    // estimates, eg. when re-opening a search node

    std::vector<OperatorID> preferred_operators;
protected:
    OperatorCost cost_type;
    HEURISTIC_TYPE heuristic_type;
    mutable utils::LogProxy log;
    enum {DEAD_END = -1};
    virtual void initialize() {}
    virtual int compute_heuristic(const GlobalState &state) = 0;
    // Usage note: It's OK to set the same operator as preferred
    // multiple times -- it will still only appear in the list of
    // preferred operators for this heuristic once.
    void set_preferred(OperatorID op);
    int get_adjusted_cost(OperatorID op) const;
    int get_adjusted_cost(const Operator &op) const;
public:
    Heuristic(const options::Options &options);
    virtual ~Heuristic();

    void set_heuristic_type(HEURISTIC_TYPE heuristic_type) {
        this->heuristic_type = heuristic_type;
    }

    virtual void evaluate(const GlobalState &state) override;
    virtual bool is_dead_end() const override;
    virtual int get_heuristic() override;
    // changed to virtual, so HeuristicProxy can delegate this:
    virtual void get_preferred_operators(std::vector<OperatorID> &result) override;
    virtual bool dead_ends_are_reliable() const override {return true; }
    virtual bool reach_state(const GlobalState &parent_state, OperatorID op,
                             const GlobalState &state) override;

    // for abstract parent Evaluator
    virtual int get_value() const override;

    virtual void evaluate(int g, bool preferred)  override;
    virtual bool dead_end_is_reliable() const override;
    virtual void set_evaluator_value(int val) override;
    virtual void get_involved_heuristics(std::set<Heuristic*> &hset) override {hset.insert(this); }
    virtual OperatorCost get_cost_type() const override {return cost_type; }

    static void add_options_to_parser(options::OptionParser &parser);
    static options::Options default_options();
};

#endif
