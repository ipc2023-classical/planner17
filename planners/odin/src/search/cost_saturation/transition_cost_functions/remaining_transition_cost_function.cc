#include "remaining_transition_cost_function.h"

#include "abstract_transition_cost_function.h"

#include "../abstraction.h"
#include "../bdd_builder.h"
#include "../utils.h"
#include "../task_info.h"

#include "../../utils/logging.h"

#include <set>
#include <utility>
#include <algorithm>
#include <map>

namespace cost_saturation {


// ____________________________________________________________________________
RemainingTransitionCostFunction::RemainingTransitionCostFunction(
    shared_ptr<TaskInfo> task_info,
    shared_ptr<BddBuilder> bdd_builder) :
    task_info(task_info),
    bdd_builder(bdd_builder),
    useless_operators(task_info->get_num_operators(), false),
    count_evaluations(0),
    count_subtractions(0) {
    reinitialize();
}

int RemainingTransitionCostFunction::determine_remaining_costs(
    int op_id) const {
    auto p = remaining_tcf[op_id].begin();
    assert(bdd_builder->is_applicable(p->second, op_id));
    assert(p->first >= 0);
    return p->first;
}

int RemainingTransitionCostFunction::determine_remaining_costs(
    int op_id,
    const BDD& states,
    int required) const {

    ++count_evaluations;

    // find minimal cost value, where the intersection is non empty
    int cost = -1;
    for (const auto &p : remaining_tcf[op_id]) {
        const BDD &bucket = p.second;
        cost = p.first;
        if (cost >= required) {
            break;
        }
        if (bdd_builder->intersect(bucket, states)) {
            break;
        }
    }

    assert(remaining_tcf[op_id].size() > 0);
    assert(cost >= 0);
    return cost;
}

// ____________________________________________________________________________
void RemainingTransitionCostFunction::reinitialize() {
    int num_operators = task_info->get_num_operators();
    remaining_tcf = TransitionCostFunction(num_operators, StateCostFunction<map<int, BDD>>(bdd_builder));
    for (int op_id = 0; op_id < num_operators; ++op_id) {
        StateCostFunction<map<int, BDD>> state_cost_function(bdd_builder);
        if (useless_operators[op_id]) {
            state_cost_function.insert(INF, bdd_builder->make_one());
        } else {
            state_cost_function.insert(task_info->get_operator_cost(op_id), bdd_builder->make_one());
        }
        remaining_tcf[op_id] = move(state_cost_function);
        assert(remaining_tcf[op_id].verify_completeness());
    }
}

TransitionCostFunction& RemainingTransitionCostFunction::get_remaining_tcf() {
    return remaining_tcf;
}

void RemainingTransitionCostFunction::mark_operator_as_useless(int op_id) {
    useless_operators[op_id] = true;
}

void RemainingTransitionCostFunction::inc_subtractions() {
    ++count_subtractions;
}

void RemainingTransitionCostFunction::inc_evaluations() {
    ++count_evaluations;
}

// ____________________________________________________________________________
void RemainingTransitionCostFunction::print_statistics() const {
    bdd_builder->print_statistics();
    cout << "Num evaluations: " << count_evaluations << "\n";
    cout << "Num subtractions: " << count_subtractions << "\n";
    cout << "Num useless operators: " << count(useless_operators.begin(), useless_operators.end(), true) << "\n";
}


}
