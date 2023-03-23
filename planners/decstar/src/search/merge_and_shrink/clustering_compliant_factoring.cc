#include "clustering_compliant_factoring.h"

#include "../globals.h"

#include "../plugin.h"

using namespace std;

namespace merge_and_shrink {
ClusteringCompliantFactoring::ClusteringCompliantFactoring()
    : Clustering() {
}

vector<vector<int>> ClusteringCompliantFactoring::compute(const TaskProxy &) const {
    vector<vector<int>> factoring(g_leaves);
    factoring.reserve(g_leaves.size() + g_center.size());
    for (int center_var : g_center) {
        factoring.push_back({center_var});
    }
    return factoring;
}

static shared_ptr<Clustering>_parse(options::OptionParser &parser) {
    if (parser.dry_run() || parser.help_mode()) {
        return nullptr;
    }
    return make_shared<ClusteringCompliantFactoring>();
}

static options::Plugin<Clustering> _plugin("clustering_compliant_factoring", _parse);
}
