#include "abstract_transition_cost_function.h"

#include <algorithm>
#include <cassert>
#include <vector>

using namespace std;

namespace cost_saturation {

// ____________________________________________________________________________
AbstractTransitionCostFunction::AbstractTransitionCostFunction(
    int num_operators, int num_transition) :
    sd_costs(vector<int>(num_transition)),
    si(vector<bool>(num_operators)),
    si_costs(vector<int>(num_operators)) {
}

// ____________________________________________________________________________
bool AbstractTransitionCostFunction::is_nonnegative() const {
    return all_of(sd_costs.begin(), sd_costs.end(), [](int c) {return c >= 0;}) &&
           all_of(si_costs.begin(), si_costs.end(), [](int c) {return c >= 0;});
}

// ____________________________________________________________________________
vector<int> &AbstractTransitionCostFunction::get_sd_costs() {
    return sd_costs;
}

// ____________________________________________________________________________
vector<bool> &AbstractTransitionCostFunction::get_si() {
    return si;
}

// ____________________________________________________________________________
vector<int> &AbstractTransitionCostFunction::get_si_costs() {
    return si_costs;
}

// ____________________________________________________________________________
const vector<int> &AbstractTransitionCostFunction::get_sd_costs() const {
    return sd_costs;
}

// ____________________________________________________________________________
const vector<bool> &AbstractTransitionCostFunction::get_si() const {
    return si;
}

// ____________________________________________________________________________
const vector<int> &AbstractTransitionCostFunction::get_si_costs() const {
    return si_costs;
}

}