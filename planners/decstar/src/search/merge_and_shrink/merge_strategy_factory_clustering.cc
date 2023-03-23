#include "merge_strategy_factory_clustering.h"

#include "clustering.h"
#include "merge_strategy_clustering.h"
#include "merge_selector.h"
#include "merge_tree_factory.h"
#include "transition_system.h"

#include "../task_proxy.h"

#include "../options/option_parser.h"
#include "../options/options.h"
#include "../options/plugin.h"
#include "../utils/logging.h"
#include "../utils/markup.h"
#include "../utils/rng.h"
#include "../utils/rng_options.h"
#include "../utils/system.h"

#include <algorithm>
#include <cassert>
#include <iostream>

using namespace std;

namespace merge_and_shrink {
bool compare_clustering_increasing(const vector<int> &lhs, const vector<int> &rhs) {
    return lhs.size() < rhs.size();
}

bool compare_clustering_decreasing(const vector<int> &lhs, const vector<int> &rhs) {
    return lhs.size() > rhs.size();
}

MergeStrategyFactoryClustering::MergeStrategyFactoryClustering(const options::Options &options)
    : MergeStrategyFactory(options),
      clustering_factory(options.get<shared_ptr<Clustering>>("clustering_factory")),
      order_of_clusters(options.get<OrderOfClustering>("order_of_clusters")),
      rng(utils::parse_rng_from_options(options)),
      merge_tree_factory(nullptr),
      merge_selector(nullptr) {
    if (options.contains("merge_tree")) {
        merge_tree_factory = options.get<shared_ptr<MergeTreeFactory>>("merge_tree");
    }
    if (options.contains("merge_selector")) {
        merge_selector = options.get<shared_ptr<MergeSelector>>("merge_selector");
    }
}

unique_ptr<MergeStrategy> MergeStrategyFactoryClustering::compute_merge_strategy(
    const TaskProxy &task_proxy,
    const FactoredTransitionSystem &fts) {
    vector<vector<int>> clustering = clustering_factory->compute(task_proxy);

    // Put the Clustering in the desired order.
    switch (order_of_clusters) {
    case OrderOfClustering::RANDOM:
        rng->shuffle(clustering);
        break;
    case OrderOfClustering::GIVEN:
        // Leave clustering as given.
        break;
    case OrderOfClustering::REVERSE:
        // Reverse clustering.
        reverse(clustering.begin(), clustering.end());
        break;
    case OrderOfClustering::DECREASING:
        sort(clustering.begin(), clustering.end(), compare_clustering_decreasing);
        break;
    case OrderOfClustering::INCREASING:
        sort(clustering.begin(), clustering.end(), compare_clustering_increasing);
        break;
    }

    int clustering_size = clustering.size();
    int num_vars = task_proxy.get_variables().size();
    log << "Clustering: " << clustering << endl;
    log << "Ratio of clustering size to num variables: "
        << static_cast<double>(clustering_size) / static_cast<double>(num_vars) << endl;
    if (clustering_size == 1) {
        log << "Only one single cluster" << endl;
    }
    if (clustering_size == num_vars) {
        log << "Only singleton clustering" << endl;
    }

    /*
      Compute the indices at which the merged clusters can be found when all
      clusters have been merged.
    */
    int next_merged_cluster_index = num_vars - 1;
    vector<vector<int>> non_singleton_clusters;
    vector<int> indices_of_merged_clusters;
    indices_of_merged_clusters.reserve(clustering_size);
    for (vector<int> &cluster : clustering) {
        int cluster_size = cluster.size();
        if (cluster_size == 1) {
            // The variable will still be at its position (= its id).
            indices_of_merged_clusters.push_back(cluster.front());
        } else {
            // The cluster requires cluster_size-1 merges.
            next_merged_cluster_index += cluster_size - 1;
            indices_of_merged_clusters.push_back(next_merged_cluster_index);
            non_singleton_clusters.push_back(move(cluster));
        }
    }

    if (merge_selector) {
        merge_selector->initialize(task_proxy);
    }

    return utils::make_unique_ptr<MergeStrategyClustering>(
        fts,
        task_proxy,
        merge_tree_factory,
        merge_selector,
        move(non_singleton_clusters),
        move(indices_of_merged_clusters));
}

bool MergeStrategyFactoryClustering::requires_init_distances() const {
    if (merge_tree_factory) {
        return merge_tree_factory->requires_init_distances();
    } else {
        return merge_selector->requires_init_distances();
    }
}

bool MergeStrategyFactoryClustering::requires_goal_distances() const {
    if (merge_tree_factory) {
        return merge_tree_factory->requires_goal_distances();
    } else {
        return merge_selector->requires_goal_distances();
    }
}

void MergeStrategyFactoryClustering::dump_strategy_specific_options() const {
    log << "Merge order of clusters: ";
    switch (order_of_clusters) {
    case OrderOfClustering::RANDOM:
        log << "random";
        break;
    case OrderOfClustering::GIVEN:
        log << "given";
        break;
    case OrderOfClustering::REVERSE:
        log << "reverse";
        break;
    case OrderOfClustering::DECREASING:
        log << "decreasing";
        break;
    case OrderOfClustering::INCREASING:
        log << "increasing";
        break;
    }
    log << endl;

    log << "Merge strategy for merging within clusters: " << endl;
    if (merge_tree_factory) {
        merge_tree_factory->dump_options(log);
    }
    if (merge_selector) {
        merge_selector->dump_options(log);
    }
}

string MergeStrategyFactoryClustering::name() const {
    return "clustering";
}

static shared_ptr<MergeStrategyFactory>_parse(options::OptionParser &parser) {
    // TODO: this needs to be moved the clustering now.
    parser.document_synopsis(
        "Merge strategy SSCs",
        "This merge strategy implements the algorithm described in the paper "
        + utils::format_conference_reference(
            {"Silvan Sievers", "Martin Wehrle", "Malte Helmert"},
            "An Analysis of Merge Strategies for Merge-and-Shrink Heuristics",
            "https://ai.dmi.unibas.ch/papers/sievers-et-al-icaps2016.pdf",
            "Proceedings of the 26th International Conference on Planning and "
            "Scheduling (ICAPS 2016)",
            "2358-2366",
            "AAAI Press",
            "2016") +
        "In a nutshell, it computes the maximal Clustering of the causal graph, "
        "obtaining a partitioning of the task's variables. Every such "
        "partition is then merged individually, using the specified fallback "
        "merge strategy, considering the Clustering in a configurable order. "
        "Afterwards, all resulting composite abstractions are merged to form "
        "the final abstraction, again using the specified fallback merge "
        "strategy and the configurable order of the Clustering.");
    parser.add_option<shared_ptr<Clustering>>(
        "clustering_factory"
        );
    vector<string> order_of_clusters;
    order_of_clusters.push_back("random");
    order_of_clusters.push_back("given");
    order_of_clusters.push_back("reverse");
    order_of_clusters.push_back("decreasing");
    order_of_clusters.push_back("increasing");
    parser.add_enum_option<OrderOfClustering>(
        "order_of_clusters",
        order_of_clusters,
        "choose an ordering of the clustering: random, or given/reverse or "
        "decreasing/increasing in the size of the clustering. The former two options "
        "refer to the directed graph where each obtained cluster is a "
        "'supervertex'. For the latter two options, the tie-breaking is to "
        "use the given order according to that same graph of cluster "
        "supervertices.",
        "random");
    utils::add_rng_options(parser);
    parser.add_option<shared_ptr<MergeTreeFactory>>(
        "merge_tree",
        "the fallback merge strategy to use if a precomputed strategy should "
        "be used.",
        options::OptionParser::NONE);
    parser.add_option<shared_ptr<MergeSelector>>(
        "merge_selector",
        "the fallback merge strategy to use if a stateless strategy should "
        "be used.",
        options::OptionParser::NONE);

    add_merge_strategy_options_to_parser(parser);

    options::Options options = parser.parse();
    if (parser.help_mode()) {
        return nullptr;
    } else if (parser.dry_run()) {
        bool merge_tree = options.contains("merge_tree");
        bool merge_selector = options.contains("merge_selector");
        if ((merge_tree && merge_selector) || (!merge_tree && !merge_selector)) {
            cerr << "You have to specify exactly one of the options merge_tree "
                "and merge_selector!" << endl;
            utils::exit_with(utils::ExitCode::SEARCH_INPUT_ERROR);
        }
        return nullptr;
    } else {
        return make_shared<MergeStrategyFactoryClustering>(options);
    }
}

static options::Plugin<MergeStrategyFactory> _plugin("merge_clustering", _parse);
}
