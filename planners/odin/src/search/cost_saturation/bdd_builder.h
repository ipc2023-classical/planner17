#ifndef TRANSITION_COST_PARTITIONING_BDD_BUILDER_H
#define TRANSITION_COST_PARTITIONING_BDD_BUILDER_H

#include "../algorithms/dynamic_bitset.h"

#include "cudd.h"
#include "cuddObj.hh"

#include "types.h"

using namespace std;

struct FactPair;

namespace cegar {
class SplitTree;
}

using Bitset = dynamic_bitset::DynamicBitset<unsigned short>;

namespace cost_saturation {
class Abstraction;
class TaskInfo;


/**
 * This class is used to build bdds.
 *
 * TODO: move caching of BDDs inside here because this class is also useful
 * in the Operator Cost Partitioning case to construct has_loop and has_outgoing functions.
 */
class BddBuilder {
  private:
    /**
     * Specialized access to task information.
     */
    std::shared_ptr<TaskInfo> task_info;
    /**
     * The forest for storing bdds.
     */
    Cudd mbr;

    /**
     * Precomputed BDDs that are often reused.
     */
    // The bdd corresponding to a given fact pair.
    // TODO: think about flatten this.
    vector<vector<BDD>> var_val_bdds;
    // cube: precondition of each operator
    vector<BDD> op_pre_cube;
    // cube: effect of each operator
    vector<BDD> op_eff_cube;
    // The set of states where the precondition is satisfied.
    vector<BDD> preconditions;

    /**
     * The set of states where each operator induces self loops.
     * It is the function L : O x S -> {0, 1} with L(o, s) = 1
     * iff operator o has a loop in state s.
     */
    vector<BDD> loops;

    /**
     * The set of states where each operator induces state-changing transitions.
     * It is the function T : O x S -> {0, 1} with T(o, s) = 1
     * iff operator o has a state-changing transition in state s.
     */
    vector<BDD> outgoings;

  public:
    /**
     * R6: Moveable and not copyable.
     */
    explicit BddBuilder(std::shared_ptr<TaskInfo> task_info);
    BddBuilder(const BddBuilder &other) = delete;
    BddBuilder& operator=(const BddBuilder &other) = delete;
    BddBuilder(BddBuilder &&other) = default;
    BddBuilder& operator=(BddBuilder &&other) = default;
    ~BddBuilder() = default;

    /**
     * Constructs the constant one.
     */
    BDD make_one() const;

    /**
     * Constructs the constant zero.
     */
    BDD make_zero() const;

    /**
     * Constructs the bdd from a given bitset.
     */
    BDD make_bdd(const int var, const Bitset &bitset) const;

    /**
     * Constructs the bdd for a given pattern state (operator independent)
     */
    BDD make_bdd(const vector<FactPair> &pattern_state) const;

    /**
     * Constructs the bdd for a given pattern state and op_id.
     * The resulting bdd is restricted to variables that are different to the precondition of op_id.
     */
    BDD make_bdd(const vector<FactPair> &pattern_state, int op_id) const;

    /**
     * Computes the has_loop mapping L(R) : O -> {0, 1} as described above.
     * Note: untested.
     */
    vector<bool> compute_has_loop(const BDD &reachability, const vector<bool> &useless_operators) const;

    /**
     * Computes the has_outgoing mapping T(R) : O -> {0, 1} as described above.
     * Note: untested.
     */
    vector<bool> compute_has_outgoing(const BDD &reachability, const vector<bool> &useless_operators) const;

    /**
     * Constructs a bdd for every useful operator that represents all states
     * with (state-changing and looping) transitions that end in useless abstract states.
     * Every resulting bdd is restricted to variables that are different to the precondition of the corresponding operator.
     */
    vector<BDD> make_negative_infinity_bdds(
      const Abstraction &abstraction,
      const vector<int> &h_values,
      const vector<bool> &useless_operators) const;

    /**
     * Construct a BDD that represents all reachable states of the given reachability function.
     * Note: untested.
     */
    BDD make_reachability_bdd(
      const Abstraction &abstraction,
      const vector<bool> &reachability) const;

    /**
     * Constructs a bdd for every state in every abstraction.
     */
    vector<vector<BDD>> build_state_bdds_by_abstraction(
      const vector<unique_ptr<Abstraction>> &abstractions) const;

    /**
     * Constructs operator regression for every state-changing transition in every abstraction.
     */
    vector<vector<BDD>> build_transition_bdds_by_abstraction(
      const vector<unique_ptr<Abstraction>> &abstractions) const;

    /**
     * Returns true iff the operator is applicable for at least one state contained in context.
     */
    bool is_applicable(const BDD &context, int op_id) const;

    /**
     * Returns true iff the intersection is non empty.
     */
    bool intersect(const BDD &l, const BDD &r) const;

    /**
     * Returns the bdd that represents all concrete state where op_id is applicable.
     */
    const BDD &get_precondition_bdd(int op_id) const;

    /**
     * Write the bdd to file.
     */
    void write_dd(const BDD &bdd, const char* filename, int num) const;

    /**
     * Print nicely.
     */
    void print_statistics() const;
};

}

#endif
