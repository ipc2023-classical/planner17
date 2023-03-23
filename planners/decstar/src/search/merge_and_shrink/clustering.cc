#include "clustering.h"

#include "../plugin.h"

namespace merge_and_shrink {
static options::PluginTypePlugin<Clustering> _type_plugin(
    "Clustering",
    "This page describes the clustering plugins for computing "
    "clusterings of the given task. The clusterings will be used in the "
    "clustering merge strategy.");
}
