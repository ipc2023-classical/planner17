#ifndef OPERATOR_H
#define OPERATOR_H

#include "globals.h"
#include "leaf_state.h"
#include "operator_factor_info.h"
#include "operator_id.h"
#include "state.h"
#include "utils/collections.h"

#include <cassert>
#include <iostream>
#include <map>
#include <string>
#include <vector>


struct Condition {
    int var;
    int val;
    explicit Condition(std::istream &in);
    Condition(int v, int p) : var(v), val(p) {
        assert(utils::in_bounds(var, g_variable_name));
        assert(val >= 0 && val < g_variable_domain[var]);
    }

    bool is_applicable(const GlobalState &state) const;

    bool is_applicable(const LeafState &state) const;

    bool operator==(const Condition &other) const {
        return var == other.var && val == other.val;
    }

    bool operator!=(const Condition &other) const {
        return !(*this == other);
    }

    bool operator<(const Condition &other) const {
    return var < other.var ||
        (var == other.var && val < other.val);
    }

    void dump() const;
};

struct Effect {
    int var;
    int val;
    std::vector<Condition> conditions;
    Effect(int var, int val, const std::vector<Condition> &co)
        : var(var), val(val), conditions(co) {}

    bool does_fire(const GlobalState &state) const {
        for (size_t i = 0; i < conditions.size(); ++i){
            if (!conditions[i].is_applicable(state)){
                return false;
            }
        }
        return true;
    }

    void dump() const;
};


class Operator {
    friend class Factoring; // to set affected factor

    bool is_an_axiom;

    // in decoupled search, the following two are sorted by factor, center first
    std::vector<Condition> preconditions;      // var, val
    std::vector<Effect> effects;     // var, val, effect conditions

    std::string name;
    int cost;

    // the following is only needed for decoupled search
    std::unique_ptr<FactorInfo> factor_info;

    mutable bool marked; // Used for short-term marking of preferred operators

    bool dead;

    void read_pre_post(std::istream &in);

    void set_affected_factor(LeafFactorID factor);

public:
    explicit Operator(std::istream &in, bool is_axiom);

    void dump() const;

    std::string get_name() const {
        return name;
    }

    bool is_axiom() const {
        return is_an_axiom;
    }

    const std::vector<Condition> &get_preconditions() const {
        return preconditions;
    }

    const std::vector<Effect> &get_effects() const {
        return effects;
    }

    void set_dead() {
        dead = true;
    }

    bool is_dead() const {
        return dead;
    }

    OpsLeafProps<Condition> get_preconditions(LeafFactorID factor) const {
        return factor_info->get_preconditions(factor);
    }

    OpsLeafProps<Effect> get_effects(LeafFactorID factor) const {
        return factor_info->get_effects(factor);
    }

    bool is_applicable(const GlobalState &state) const;

    bool is_applicable(LeafStateHash id, LeafFactorID factor) const;

    bool is_center_applicable(const GlobalState &state) const;

    bool is_marked() const {
        return marked;
    }

    void mark() const {
        marked = true;
    }

    void unmark() const {
        marked = false;
    }

    OperatorID get_id() const {
        int op_index = this - &*g_operators.begin();
        assert(op_index >= 0 && (size_t) op_index < g_operators.size());
        return OperatorID(op_index);
    }

    LeafFactorID get_affected_factor() const {
        return factor_info->get_affected_factor();
    }

    bool has_precondition_on(LeafFactorID factor) const {
        return factor_info->has_precondition_on(factor);
    }

    bool has_effect_on(LeafFactorID factor) const {
        return factor_info->has_effect_on(factor);
    }

    size_t get_number_leaf_pre_factors() const {
        return factor_info->get_number_leaf_pre_factors();
    }

    bool has_leaf_precondition() const {
        return factor_info->has_leaf_precondition();
    }

    bool has_leaf_effect() const {
        return factor_info->has_leaf_effect();
    }

    std::vector<LeafFactorID> get_leaf_pre_factors() const {
        return factor_info->get_leaf_pre_factors();
    }

    std::vector<LeafFactorID> get_leaf_effect_factors() const {
        return factor_info->get_leaf_effect_factors();
    }

    int get_cost() const {
        return cost;
    }
};

#endif
