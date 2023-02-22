#ifndef TRANSITION_COST_PARTITIONING_STATE_COST_FUNCTION_H
#define TRANSITION_COST_PARTITIONING_STATE_COST_FUNCTION_H

#include "../types.h"
#include "../bdd_builder.h"

#include "../../utils/logging.h"

#include <map>
#include <memory>
#include <vector>

using namespace std;

class BDD;

namespace cost_saturation {

/**
 * Mapping from States to Integer, i.e., S -> Z
*/
template<typename DictType>
class StateCostFunction {
private:
    DictType buckets;
    std::shared_ptr<BddBuilder> bdd_builder;

public:
    explicit StateCostFunction(std::shared_ptr<BddBuilder> bdd_builder)
        : bdd_builder(bdd_builder) {
    }
    ~StateCostFunction() = default;

    void insert(int costs, const BDD& states) {
        auto exists = buckets.find(costs);
        if (exists != buckets.end()) {
            exists->second += states;
        } else {
            buckets.emplace(costs, states);
        }
    }

    typename DictType::iterator begin() {
        return buckets.begin();
    }
    typename DictType::const_iterator begin() const {
        return buckets.begin();
    }
    typename DictType::iterator end() {
        return buckets.end();
    }
    typename DictType::const_iterator end() const {
        return buckets.end();
    }

    size_t size() const {
        return buckets.size();
    }

    template< class... Args >
    std::pair<typename DictType::iterator,bool> emplace( Args&&... args ) {
        return buckets.emplace(args...);
    }

    void clear() {
        buckets.clear();
    }

    /**
     * Returns true if cost function is complete in the sense that:
     * (1) no state is contained in several buckets, and
     * (2) the union of all states is equal to the complete state space.
     */
    bool verify_completeness() const {
        BDD result = bdd_builder->make_zero();
        for (const pair<const int, BDD> &cost_value : *this) {
            if (bdd_builder->intersect(result, cost_value.second)) {
                cout << "cost value: " << cost_value.first << endl;
                ABORT("Bucket error: A state is detected in multiple buckets");
                return false;
            } else if (cost_value.second == bdd_builder->make_zero()) {
                cout << "cost value: " << cost_value.first << endl;
                ABORT("Bucket error: The bucket is empty.");
                return false;
            }
            result += cost_value.second;
        }
        if (result != bdd_builder->make_one()) {
            ABORT("Totality of cost function violated");
            return false;
        }
        return true;
    }

    /**
     * Returns true iff bucket is nonnegative
     */
    bool is_nonnegative() const {
        return buckets.begin()->first >= 0;
    }
};

}

#endif
