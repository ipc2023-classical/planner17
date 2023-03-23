#ifndef OPERATOR_FACTOR_INFO_H_
#define OPERATOR_FACTOR_INFO_H_

#include <memory>
#include <vector>

class Condition;
class Effect;
struct LeafFactorID;
class Operator;


template<class T>
class OpsLeafProps {

    const typename std::vector<T>::const_iterator begin_it;
    const typename std::vector<T>::const_iterator end_it;

public:
    OpsLeafProps(typename std::vector<T>::const_iterator begin, typename std::vector<T>::const_iterator end)
        : begin_it(begin), end_it(end) {
        // TODO is there any way to ensure that begin and end are iterators of the same vector?
        // could also pass the vector itself as argument, only used to check this
    }

    size_t size() const {
        return end_it - begin_it;
    }

    const T& operator[](size_t index) const {
        return *(begin_it + index);
    }

    bool empty() const {
        return begin_it == end_it;
    }

    const typename std::vector<T>::const_iterator begin() const {
        return begin_it;
    }

    const typename std::vector<T>::const_iterator end() const {
        return end_it;
    }
};



class FactorInfo {
protected:
    FactorInfo(){}
public:
    virtual ~FactorInfo() = default;

    virtual LeafFactorID get_affected_factor() const = 0;

    virtual size_t get_number_leaf_pre_factors() const = 0;
    virtual bool has_leaf_precondition() const = 0;
    virtual bool has_leaf_effect() const = 0;

    virtual OpsLeafProps<Condition> get_preconditions(LeafFactorID factor) const = 0;
    virtual OpsLeafProps<Effect> get_effects(LeafFactorID factor) const = 0;

    virtual bool has_precondition_on(LeafFactorID factor) const = 0;
    virtual bool has_effect_on(LeafFactorID factor) const = 0;

    virtual std::vector<LeafFactorID> get_leaf_pre_factors() const = 0;
    virtual std::vector<LeafFactorID> get_leaf_effect_factors() const = 0;

    virtual void dump() const = 0;

    static std::unique_ptr<FactorInfo> create(const Operator *op, LeafFactorID affected_factor);
};


#endif
