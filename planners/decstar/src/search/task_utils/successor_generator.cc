#include "successor_generator.h"

#include "successor_generator_factory.h"
#include "successor_generator_internals.h"

#include "../ext/boost/dynamic_bitset.hpp"
#include "../compliant_paths/cpg_storage.h"
#include "../compliant_paths/compliant_path_graph.h"
#include "../factoring.h"
#include "../globals.h"
#include "../leaf_state.h"
#include "../operator.h"
#include "../state.h"

using namespace std;

namespace successor_generator {
SuccessorGenerator::SuccessorGenerator()
    : root(SuccessorGeneratorFactory().create(LeafFactorID::CENTER, false)) {
}
SuccessorGenerator::SuccessorGenerator(LeafFactorID factor)
    : root(SuccessorGeneratorFactory().create(factor, false)) {
}
SuccessorGenerator::SuccessorGenerator(LeafFactorID factor, bool only_keep_all_leaf_preconditions)
    : root(SuccessorGeneratorFactory().create(factor, only_keep_all_leaf_preconditions)) {
}

SuccessorGenerator::~SuccessorGenerator() = default;



void SuccessorGenerator::generate_applicable_ops(
    const GlobalState &state, vector<OperatorID> &applicable_ops) const {
    root->generate_applicable_ops(state, applicable_ops);

    if (g_factoring){
        CPGStorage::storage->get_cpg(state)->remove_inapplicable_ops(applicable_ops);
    }
}

void SuccessorGenerator::generate_applicable_ops(const GlobalState &state,
                                                 const CompliantPathGraph &cpg,
                                                 vector<OperatorID> &applicable_ops) const {
    root->generate_applicable_ops(state, applicable_ops);
    cpg.remove_inapplicable_ops(applicable_ops);
}

void SuccessorGenerator::generate_applicable_ops(
    const LeafState &state, vector<OperatorID> &applicable_ops) const {
    assert(g_factoring);
    root->generate_applicable_ops(state, applicable_ops);
}

void SuccessorGenerator::generate_applicable_ops_ignore_outside_pre(
    const LeafState &state, vector<OperatorID> &applicable_ops) const {
    assert(g_factoring);
    root->generate_applicable_ops_ignore_outside_pre(state, applicable_ops);
}

void SuccessorGenerator::remove_never_applicable_center_ops(LeafFactorID factor){
    root->remove_never_applicable_center_ops(factor);
}
}
