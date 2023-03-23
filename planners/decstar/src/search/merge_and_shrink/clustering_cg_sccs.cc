#include "clustering_cg_sccs.h"

#include "../option_parser.h"
#include "../plugin.h"
#include "../task_proxy.h"

#include "../algorithms/sccs.h"
#include "../task_utils/causal_graph.h"

using namespace std;

namespace merge_and_shrink {
ClusteringCGSCCs::ClusteringCGSCCs()
    : Clustering() {
}

vector<vector<int>> ClusteringCGSCCs::compute(const TaskProxy &task_proxy) const {
    VariablesProxy vars = task_proxy.get_variables();
    int num_vars = vars.size();

    // Compute clustering of the causal graph.
    vector<vector<int>> cg;
    cg.reserve(num_vars);
    for (VariableProxy var : vars) {
        const vector<int> &successors =
            task_proxy.get_causal_graph().get_successors(var.get_id());
        cg.push_back(successors);
    }
    return sccs::compute_maximal_sccs(cg);
}

static shared_ptr<Clustering>_parse(options::OptionParser &parser) {
    if (parser.help_mode()) {
        return nullptr;
    }
    return make_shared<ClusteringCGSCCs>();
}

static options::Plugin<Clustering> _plugin("clustering_cg_sccs", _parse);
}
