#ifndef TRANSITION_COST_PARTITIONING_SATURATED_TRANSITION_COST_FUNCTION_H
#define TRANSITION_COST_PARTITIONING_SATURATED_TRANSITION_COST_FUNCTION_H

#include "state_cost_function.h"

#include <unordered_map>

using namespace std;

class BDD;

namespace cost_saturation {
class BddBuilder;

using SaturatedTransitionCostFunction = vector<StateCostFunction<std::unordered_map<int, BDD>>>;

}
#endif
