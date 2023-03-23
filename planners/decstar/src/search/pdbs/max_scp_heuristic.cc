#include "max_scp_heuristic.h"

#include "types.h"
#include "utils.h"

#include "../option_parser.h"

#include "../cost_saturation/cost_partitioning_heuristic.h"
#include "../cost_saturation/projection.h"
#include "../cost_saturation/utils.h"

#include "../task_utils/task_properties.h"

#include "../utils/logging.h"

using namespace cost_saturation;
using namespace std;

namespace pdbs {
static void log_info_about_stored_lookup_tables(
    const Abstractions &abstractions,
    const CPHeuristics &cp_heuristics) {
    int num_abstractions = abstractions.size();

    // Print statistics about the number of lookup tables.
    int num_lookup_tables = num_abstractions * cp_heuristics.size();
    int num_stored_lookup_tables = 0;
    for (const auto &cp_heuristic: cp_heuristics) {
        num_stored_lookup_tables += cp_heuristic.get_num_lookup_tables();
    }
    utils::g_log << "Stored lookup tables: " << num_stored_lookup_tables << "/"
                 << num_lookup_tables << " = "
                 << num_stored_lookup_tables / static_cast<double>(num_lookup_tables)
                 << endl;

    // Print statistics about the number of stored values.
    int num_stored_values = 0;
    for (const auto &cp_heuristic : cp_heuristics) {
        num_stored_values += cp_heuristic.get_num_heuristic_values();
    }
    int num_total_values = 0;
    for (const auto &abstraction : abstractions) {
        num_total_values += abstraction->get_num_states();
    }
    num_total_values *= cp_heuristics.size();
    utils::g_log << "Stored values: " << num_stored_values << "/"
                 << num_total_values << " = "
                 << num_stored_values / static_cast<double>(num_total_values) << endl;
}

template <typename To, typename From, typename Deleter>
std::unique_ptr<To, Deleter> dynamic_unique_cast(std::unique_ptr<From, Deleter>&& p) {
    if (To* cast = dynamic_cast<To*>(p.get())) {
        std::unique_ptr<To, Deleter> result(cast, std::move(p.get_deleter()));
        p.release();
        return result;
    }
    return std::unique_ptr<To, Deleter>(nullptr); // or throw std::bad_cast() if you prefer
}

static void extract_abstraction_functions_and_patterns_from_useful_abstractions(
    const CPHeuristics &cp_heuristics,
    Abstractions &abstractions,
    vector<unique_ptr<ProjectionFunction>> &abstraction_functions,
    vector<Pattern> &patterns) {
    int num_abstractions = abstractions.size();

    // Collect IDs of useful abstractions.
    vector<bool> useful_abstractions(num_abstractions, false);
    for (const auto &cp_heuristic : cp_heuristics) {
        cp_heuristic.mark_useful_abstractions(useful_abstractions);
    }

    assert(abstraction_functions.empty());
    assert(patterns.empty());
    abstraction_functions.reserve(num_abstractions);
    patterns.reserve(num_abstractions);
    for (int i = 0; i < num_abstractions; ++i) {
        if (useful_abstractions[i]) {
            abstraction_functions.push_back(
                unique_ptr<ProjectionFunction>(
                dynamic_cast<ProjectionFunction *>(abstractions[i]->extract_abstraction_function().release())));
            Projection *projection = dynamic_cast<Projection *>(abstractions[i].get());
            patterns.emplace_back(projection->get_pattern());
        } else {
            abstraction_functions.push_back(nullptr);
            patterns.emplace_back();
        }
    }
}

MaxSCPHeuristic::MaxSCPHeuristic(
    const options::Options &opts,
    Abstractions &&abstractions,
    CPHeuristics &&cp_heuristics_)
    : Heuristic(opts),
      cp_heuristics(move(cp_heuristics_)) {
    log_info_about_stored_lookup_tables(abstractions, cp_heuristics);

    // We only need abstraction functions during search and no transition systems.
    // We additionally extract the patterns.
    extract_abstraction_functions_and_patterns_from_useful_abstractions(
        cp_heuristics, abstractions, abstraction_functions, patterns);

    int num_abstractions = abstractions.size();
    int num_useless_abstractions = count(
        abstraction_functions.begin(), abstraction_functions.end(), nullptr);
    int num_useful_abstractions = num_abstractions - num_useless_abstractions;
    utils::g_log << "Useful abstractions: " << num_useful_abstractions << "/"
                 << num_abstractions << " = "
                 << static_cast<double>(num_useful_abstractions) / num_abstractions
                 << endl;
}

MaxSCPHeuristic::~MaxSCPHeuristic() {
    print_statistics();
}

void MaxSCPHeuristic::print_statistics() const {
    int num_orders = num_best_order.size();
    int num_probably_superfluous = count(num_best_order.begin(), num_best_order.end(), 0);
    int num_probably_useful = num_orders - num_probably_superfluous;
    cout << "Number of times each order was the best order: "
         << num_best_order << endl;
    cout << "Probably useful orders: " << num_probably_useful << "/" << num_orders
         << " = " << 100. * num_probably_useful / num_orders << "%" << endl;
}
}
