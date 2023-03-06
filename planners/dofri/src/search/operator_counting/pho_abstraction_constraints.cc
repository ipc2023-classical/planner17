#include "pho_abstraction_constraints.h"

#include <algorithm>
#include <cassert>
#include <cmath>
#include <limits>

#include "../cost_saturation/abstraction.h"
#include "../cost_saturation/abstraction_generator.h"
#include "../cost_saturation/utils.h"
#include "../lp/lp_solver.h"
#include "../option_parser.h"
#include "../plugin.h"
#include "../task_utils/task_properties.h"
#include "../utils/collections.h"
#include "../cost_saturation/utils.h"

using namespace std;

namespace operator_counting {
SenseCache::SenseCache(vector<int> current, vector<double> lower, vector<double> higher, vector<double>shadow_prices, double h)
    : lower(lower), higher(higher), current(current), shadow_prices(shadow_prices), h(h) {
}

int SenseCache::range_check(vector<int> values) const {
    assert(values.size() == current.size());
    bool change = false;
    double h_value_change = 0;
    //cout << "check: " << values << endl;
    //cout << "agains: " << endl;
    for (size_t i = 0; i < values.size(); i++) {
        //cout << values[i] << ":" << "[" << lower[i] << ":" << current[i] << ":" << higher[i] << "]:" << shadow_prices[i] << endl;
        if (values[i] == cost_saturation::INF) {
            return -1; //detect any deadend in abstractions
        }
        if (current[i] != values[i]) {
            if (change || values[i] < lower[i] || higher[i] < values[i]) {
                //cout << "out of range or second change, stopping" << endl;
                return -2;
            }
            //cout << "in range" << endl;
            change = true;
            h_value_change = (values[i] - current[i]) * shadow_prices[i];
        }// else {
         //cout << "same" << endl;
         //}
    }
    //cout << " range rule holds" << endl;
    //cout << "h: " << h << endl;
    //cout << "change of h: " << (values[changed_constraint] - current[changed_constraint]) * shadow_prices[changed_constraint] << endl;
    int cached_h = ceil(h + h_value_change - 0.01);
    //cout << "changed h: " << cached_h << endl;
    assert(cached_h >= 0 || (h == -1 && h == cached_h));
    if (cached_h >= cost_saturation::INF) {
        return -1;
    }
    return cached_h;
}

int SenseCache::percent_check(vector<int> values) const {
    assert(values.size() == current.size());
    double changed_percentage = 0;
    double h_value_change = 0;
    //cout << "check: " << values << endl;
    //cout << "agains: " << endl;
    for (size_t i = 0; i < values.size(); i++) {
        //cout << values[i] << ":" << "[" << lower[i] << ":" << current[i] << ":" << higher[i] << "]:" << shadow_prices[i] << endl;
        if (values[i] == cost_saturation::INF) {
            return -1; //detect any deadend in abstractions
        }
        if (current[i] != values[i]) {
            if (values[i] < lower[i] || higher[i] < values[i]) {
                //cout << "out of range, stopping" << endl;
                return -2;
            }
            if (values[i] < current[i] && lower[i] > -cost_saturation::INF) {
                changed_percentage += (values[i] - current[i]) / (lower[i] - current[i]);
            } else if (values[i] > current[i] && higher[i] < cost_saturation::INF) {
                changed_percentage += (values[i] - current[i]) / (higher[i] - current[i]);
            }
            h_value_change += (values[i] - current[i]) * shadow_prices[i];
            //cout << "in range, change percent: " << changed_percentage << endl;
            if (changed_percentage > 1.0) {
                //cout << "over 100%" << endl;
                return -2;
            }
            //cout << "h: " << h + h_value_change << endl;
        }
    }
    int cached_h = ceil(h + h_value_change - 0.01);
    //cout << "changed h: " << cached_h << endl;
    assert(cached_h >= 0 || (h == -1 && h == cached_h));
    if (cached_h >= cost_saturation::INF) {
        return -1;
    }
    return cached_h;
}

ostream &operator<<(ostream &os, const SenseCache &cache) {
    os << cache.lower << endl;
    os << cache.current << endl;
    os << cache.higher << endl;
    os << cache.shadow_prices << endl;
    os << cache.h << endl;
    return os;
}

PhOAbstractionConstraints::PhOAbstractionConstraints(const Options &opts)
    : abstraction_generators(
          opts.get_list<shared_ptr<cost_saturation::AbstractionGenerator>>(
              "abstractions")),
      saturated(opts.get<bool>("saturated")),
      strategy(opts.get<RecomputationStrategy>("strategy")),
      num_empty_constraints(0),
      num_duplicate_constraints(0),
      num_constraints(0),
      active_state_id(StateID::no_state) {}

PhOAbstractionConstraints::~PhOAbstractionConstraints() {
    if (strategy == RecomputationStrategy::RANGE_SA || strategy == RecomputationStrategy::PERCENT_SA) {
        cout << "cache size: " << rangeCache.size() << endl;
        //for (SenseCache &elem:rangeCache) {
        //    cout << elem << endl;
        //}
    } else {
        cout << "cache size: " << cache.size() << endl;
        //for (auto &it :cache) {
        //    cout << it.first << ":" << it.second << endl;
        //}
    }
}

void PhOAbstractionConstraints::initialize_constraints(
    const shared_ptr<AbstractTask> &task, lp::LinearProgram &lp) {
    cost_saturation::Abstractions abstractions =
        cost_saturation::generate_abstractions(task, abstraction_generators);
    abstraction_functions.reserve(abstractions.size());
    h_values_by_abstraction.reserve(abstractions.size());
    constraint_ids_by_abstraction.reserve(abstractions.size());
    vector<int> operator_costs = task_properties::get_operator_costs(TaskProxy(*task));
    int num_ops = operator_costs.size();
    named_vector::NamedVector<lp::LPConstraint> &constraints = lp.get_constraints();

    if (saturated) {
        useless_operators.resize(num_ops, false);
        assert(constraint_ids_by_abstraction.empty());
        assert(cf_clusters.empty());
        assert(!abstractions.empty());
        for (size_t i = 0; i < abstractions.size(); i++) {
            // Add constraint \sum_{o} Y_o * scf_h(o) >= 0.
            lp::LPConstraint constraint(0, lp.get_infinity());
            auto &abstraction = abstractions[i];
            vector<int> h_values = abstraction->compute_goal_distances(
                operator_costs);
            vector<int> saturated_costs = abstraction->compute_saturated_costs(
                h_values);
            for (int op_id = 0; op_id < num_ops; ++op_id) {
                if (saturated_costs[op_id] != 0) {
                    if (saturated_costs[op_id] == -cost_saturation::INF) {
                        useless_operators[op_id] = true;
                    } else {
                        constraint.insert(op_id, saturated_costs[op_id]);
                    }
                }
            }
            if (constraint.empty()) {
                //constraint_ids_by_abstraction.push_back(-1);
                ++num_empty_constraints;
            } else {
                if (strategy == RecomputationStrategy::ALWAYS || strategy == RecomputationStrategy::TUPLE) {
                    constraint_ids_by_abstraction.push_back(constraints.size());
                    constraints.push_back(move(constraint));
                } else {
                    int cf_id = cf_clusters.size();
                    if (cf_clusters.find(saturated_costs) == cf_clusters.end()) {
                        cf_clusters[saturated_costs] = cf_id;
                        constraints.push_back(move(constraint));
                    } else {
                        num_duplicate_constraints++;
                    }
                    constraint_ids_by_abstraction.push_back(cf_clusters[saturated_costs]);
                }
                h_values_by_abstraction.push_back(move(h_values));
                abstraction_functions.push_back(abstraction->extract_abstraction_function());
            }
        }
    } else {
        assert(constraint_ids_by_abstraction.empty());
        assert(cf_clusters.empty());
        assert(!abstractions.empty());
        for (size_t i = 0; i < abstractions.size(); i++) {
            lp::LPConstraint constraint(0, lp.get_infinity());
            vector<int> costs(num_ops, 0);
            auto &abstraction = abstractions[i];
            for (int op_id = 0; op_id < num_ops; ++op_id) {
                if (abstraction->operator_is_active(op_id)) {
                    constraint.insert(op_id, operator_costs[op_id]);
                    costs[op_id] = operator_costs[op_id];  // unaffecting operators can be ignored for the tuple distance.
                }
            }
            if (constraint.empty()) {
                //constraint_ids_by_abstraction.push_back(-1);
                ++num_empty_constraints;
            } else {
                if (strategy == RecomputationStrategy::ALWAYS || strategy == RecomputationStrategy::TUPLE) {
                    constraint_ids_by_abstraction.push_back(constraints.size());
                    constraints.push_back(move(constraint));
                } else {
                    int cf_id = cf_clusters.size();
                    if (cf_clusters.find(costs) == cf_clusters.end()) {
                        cf_clusters[costs] = cf_id;
                        constraints.push_back(move(constraint));
                    } else {
                        num_duplicate_constraints++;
                    }
                    constraint_ids_by_abstraction.push_back(cf_clusters[costs]);
                }
                h_values_by_abstraction.push_back(abstraction->compute_goal_distances(operator_costs));
                abstraction_functions.push_back(abstraction->extract_abstraction_function());
            }
        }
    }
    if (strategy == RecomputationStrategy::MAX_CLUSTER) {
        cout << "heuristic clusters: " << cf_clusters.size() << ":" << constraint_ids_by_abstraction << endl;
        assert(*max_element(constraint_ids_by_abstraction.begin(), constraint_ids_by_abstraction.end()) + 1 == cf_clusters.size());
    }
    //cout << h_values_by_abstraction << endl;
    cout << "Empty constraints: " << num_empty_constraints << endl;
    cout << "Duplicate constraints: " << abstractions.size() - constraints.size() - num_empty_constraints << endl;
    cout << "Useful constraints: " << constraints.size() << endl;

    if (constraints.size() == 0) {
        cout << "None of the provided abstractions were useful. Heuristic will be 0 everywhere" << endl;
    }

    if (strategy == RecomputationStrategy::TUPLE) {
        num_constraints = abstractions.size() - num_empty_constraints;
    } else {
        assert(cf_clusters.size() == (abstractions.size() - num_empty_constraints - num_duplicate_constraints));
        num_constraints = cf_clusters.size();
    }
    assert(abstraction_functions.size() == num_constraints + num_duplicate_constraints);
    assert(h_values_by_abstraction.size() == num_constraints + num_duplicate_constraints);
    assert(constraint_ids_by_abstraction.size() == num_constraints + num_duplicate_constraints);
    //abstraction_functions.shrink_to_fit();
    //h_values_by_abstraction.shrink_to_fit();
    //constraint_ids_by_abstraction.shrink_to_fit();
    distance_tuple.resize(num_constraints);
    DEAD_END_TUPLE.resize(num_constraints);
    fill(DEAD_END_TUPLE.begin(), DEAD_END_TUPLE.end(), -1);
    if (constraints.size() > 0) {
        cache[distance_tuple] = 0; //add goal state cache
        vector<double> dummy(num_constraints);
        vector<int> agd(num_constraints);
        rangeCache.push_back(SenseCache(agd, dummy, dummy, dummy, 0));
    }
    //cout << "setup finished" << endl;
}

bool PhOAbstractionConstraints::update_constraints(
    const State &state, lp::LPSolver &lp_solver) {
    assert(active_state_id == state.get_id());
    if (!useless_operators.empty()) {
        int num_ops = useless_operators.size();
        // Force operator count of operators o with scf(o)=-\infty to be 0.
        for (int op_id = 0; op_id < num_ops; ++op_id) {
            if (useless_operators[op_id]) {
                lp_solver.set_variable_lower_bound(op_id, 0.0);
                lp_solver.set_variable_upper_bound(op_id, 0.0);
            }
        }
        // Only set variable bounds once.
        utils::release_vector_memory(useless_operators);
    }
    vector<int> lower_bounds(num_constraints, -cost_saturation::INF);
    for (size_t i = 0; i < abstraction_functions.size(); ++i) {
        assert(utils::in_bounds(i, abstract_state_ids));
        int state_id = abstract_state_ids[i];
        assert(utils::in_bounds(i, h_values_by_abstraction));
        const vector<int> &h_values = h_values_by_abstraction[i];
        assert(utils::in_bounds(state_id, h_values));
        int h = h_values[state_id];
        if (h == cost_saturation::INF) {
            return true;
        }
        assert(utils::in_bounds(i, constraint_ids_by_abstraction));
        //cout << "const_abst: " << constraint_ids_by_abstraction << endl;
        //cout << num_constraints << endl;
        if (constraint_ids_by_abstraction[i] != -1) {
            assert(utils::in_bounds(constraint_ids_by_abstraction[i], lower_bounds));
            lower_bounds[constraint_ids_by_abstraction[i]] = max(lower_bounds[constraint_ids_by_abstraction[i]], h);
        }
    }
    //cout << "lower_bounds: " << lower_bounds << endl;
    for (int constraint_id:constraint_ids_by_abstraction) {
        if (constraint_id != -1) {
            lp_solver.set_constraint_lower_bound(constraint_id, lower_bounds[constraint_id]);
        }
    }

    return false;
}

vector<int> PhOAbstractionConstraints::state_to_tuple(const State &state) {
    //cout << "state to tuple: " << endl;
    assert(active_state_id == state.get_id());
    assert(strategy != RecomputationStrategy::ALWAYS);
    fill(distance_tuple.begin(), distance_tuple.end(), 0);     //distance_tuple.clear(); capacity not guaranteed to stay the same for clear
    switch (strategy) {
    case (RecomputationStrategy::TUPLE):
    {
        for (size_t i = 0; i < abstraction_functions.size(); ++i) {
            if (constraint_ids_by_abstraction[i] != -1) {
                assert(utils::in_bounds(i, abstract_state_ids));
                assert(utils::in_bounds(constraint_ids_by_abstraction[i], distance_tuple));
                int state_id = abstract_state_ids[i];
                assert(utils::in_bounds(i, h_values_by_abstraction));
                assert(utils::in_bounds(state_id, h_values_by_abstraction[i]));
                if (h_values_by_abstraction[i][state_id] == cost_saturation::INF) {
                    distance_tuple = DEAD_END_TUPLE;
                    break;
                }
                distance_tuple[constraint_ids_by_abstraction[i]] = h_values_by_abstraction[i][state_id];
            }
        }
        assert(distance_tuple.size() == abstraction_functions.size());
        break;
    }
    case (RecomputationStrategy::MAX_CLUSTER):
    {
        for (size_t i = 0; i < abstraction_functions.size(); i++) {
            if (constraint_ids_by_abstraction[i] != -1) {
                assert(utils::in_bounds(i, abstract_state_ids));
                int state_id = abstract_state_ids[i];
                assert(utils::in_bounds(i, h_values_by_abstraction));
                assert(utils::in_bounds(state_id, h_values_by_abstraction[i]));
                assert(utils::in_bounds(constraint_ids_by_abstraction[i], distance_tuple));
                if (h_values_by_abstraction[i][state_id] == cost_saturation::INF) {
                    distance_tuple = DEAD_END_TUPLE;
                    break;
                }
                distance_tuple[constraint_ids_by_abstraction[i]] = max(distance_tuple[constraint_ids_by_abstraction[i]], h_values_by_abstraction[i][state_id]);
            }
        }
        assert(distance_tuple.size() == abstraction_functions.size() - num_duplicate_constraints);
        break;
    }
    case (RecomputationStrategy::RANGE_SA):
    case (RecomputationStrategy::PERCENT_SA):
    {
        for (size_t i = 0; i < abstraction_functions.size(); ++i) {
            if (constraint_ids_by_abstraction[i] != -1) {
                assert(utils::in_bounds(i, abstract_state_ids));
                int state_id = abstract_state_ids[i];
                assert(utils::in_bounds(i, h_values_by_abstraction));
                assert(utils::in_bounds(state_id, h_values_by_abstraction[i]));
                assert(utils::in_bounds(constraint_ids_by_abstraction[i], distance_tuple));
                distance_tuple[constraint_ids_by_abstraction[i]] = max(distance_tuple[constraint_ids_by_abstraction[i]], h_values_by_abstraction[i][state_id]);
            }
        }
        assert(distance_tuple.size() == abstraction_functions.size() - num_duplicate_constraints);
        break;
    }
    }
    return distance_tuple;
}

void PhOAbstractionConstraints::set_active_state(const State &state) {
    active_state_id = state.get_id();
    abstract_state_ids = cost_saturation::get_abstract_state_ids(abstraction_functions, state);
}

void PhOAbstractionConstraints::cache_heuristic(const State &state, lp::LPSolver &lp_solver, double h) {
    if (strategy == RecomputationStrategy::TUPLE || strategy == RecomputationStrategy::MAX_CLUSTER) {
        cache[state_to_tuple(state)] = ceil(h - 0.01);
    } else if (strategy == RecomputationStrategy::RANGE_SA || strategy == RecomputationStrategy::PERCENT_SA) {
        if (h == -1) {
            vector<double> lower_bounds(num_constraints);
            vector<double> higher_bounds(num_constraints);
            vector<int> agd = state_to_tuple(state);
            vector<double> shadow_prices(num_constraints);
            rangeCache.push_back(SenseCache(agd, lower_bounds, higher_bounds, shadow_prices, h));
        } else {
            vector<double> lower_bounds(num_constraints);
            vector<double> higher_bounds(num_constraints);
            tie(lower_bounds, higher_bounds) = lp_solver.get_rhs_sa();
            vector<int> agd = state_to_tuple(state);
            vector<double> shadow_prices = lp_solver.get_row_price();
            //cout << "caching: " << agd << endl;
            //cout << "lower: " << lower_bounds << endl;
            //cout << "higher: " << higher_bounds << endl;
            rangeCache.push_back(SenseCache(agd, lower_bounds, higher_bounds, shadow_prices, h));
        }
    }
}

int PhOAbstractionConstraints::get_cached_heuristic_value(const State &state) {
    if (strategy == RecomputationStrategy::ALWAYS) {
        cout << "acessing cache without caching strategy" << endl;
        return -2;
    }
    vector<int> distance_tuple = state_to_tuple(state);
    //cout << "lookup:" << distance_tuple << endl;
    //for (int i = 0; i < abstraction_functions.size(); i++) {
    //    cout << h_values_by_abstraction[i][abstract_state_ids[i]];
    //    cout << ",";
    //}
    //cout << endl;
    //cout << constraint_ids_by_abstraction << endl;
    if (strategy == RecomputationStrategy::RANGE_SA) {
        int i = 0;
        for (SenseCache cache: rangeCache) {
            int cache_h = cache.range_check(distance_tuple);
            if (cache_h != -2) {
                //cout << "found cache hit: " << cache_h << endl;
                //cout << "looked throught " << i << " of " << rangeCache.size() << " cache entries" << endl;
                return cache_h;
            }
            i++;
        }
        //cout << "no cache hit" << endl;
        return -2;
    }
    if (strategy == RecomputationStrategy::PERCENT_SA) {
        //cout << "percentage lookup in " << rangeCache.size() << " cache entries" << endl;
        for (SenseCache cache: rangeCache) {
            int cache_h = cache.percent_check(distance_tuple);
            if (cache_h != -2) {
                //cout << "found cache hit: " << cache_h << endl;
                return cache_h;
            }
        }
        //cout << "no cache hit" << endl;
        return -2;
    }
    auto it = cache.find(distance_tuple);
    if (it == cache.end()) {
        // return NO_VALUE;
        return -2;         // see comment in parent function
    }
    return it->second;
}

static shared_ptr<ConstraintGenerator> _parse(OptionParser &parser) {
    parser.document_synopsis(
        "(Saturated) posthoc optimization constraints for abstractions", "");

    parser.add_list_option<shared_ptr<cost_saturation::AbstractionGenerator>>(
        "abstractions",
        "abstraction generation methods",
        OptionParser::NONE);
    parser.add_option<bool>(
        "saturated",
        "use saturated instead of full operator costs in constraints",
        "true");
    vector<string> recomp_strategies;
    vector<string> recomp_strategies_doc;
    recomp_strategies.push_back("always");
    recomp_strategies_doc.push_back("default-recompute in every state");
    recomp_strategies.push_back("tuple");
    recomp_strategies_doc.push_back("recompute for new abstract goal distance tuples");
    recomp_strategies.push_back("max_cluster");
    recomp_strategies_doc.push_back("recompute for new abstract goal distance tuple with only using the max h value from each scf cluster");
    recomp_strategies.push_back("range_sa");
    recomp_strategies_doc.push_back("recompute for abstract goal distance tuples that violate the range sensitivity analysis");
    recomp_strategies.push_back("percent_sa");
    recomp_strategies_doc.push_back("recompute for abstract goal distance tuples that violate the 100% sensitivity analysis");
    parser.add_enum_option<RecomputationStrategy>(
        "strategy",
        recomp_strategies,
        "decides when to recompute the LP for a new state",
        "always",
        recomp_strategies_doc);

    Options opts = parser.parse();
    if (parser.dry_run())
        return nullptr;

    return make_shared<PhOAbstractionConstraints>(opts);
}

static Plugin<ConstraintGenerator> _plugin("pho_abstraction_constraints", _parse);
}
