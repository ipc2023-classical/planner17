#include "bdd_builder.h"

#include "utils.h"
#include "task_info.h"

#include "../task_utils/task_properties.h"
#include "../utils/logging.h"

#include <math.h>

#include <map>
#include <sstream>

using namespace std;

namespace cost_saturation {

// ____________________________________________________________________________
BddBuilder::BddBuilder(
    std::shared_ptr<TaskInfo> task_info) :
    task_info(task_info),
    mbr(Cudd(0,0)) {
    int num_variables = task_info->get_num_variables();
    int num_bdd_vars = 1;
    vector<int> var_offset;
    var_offset.reserve(num_variables);
    vector<int> var_size;
    var_size.reserve(num_variables);
    var_val_bdds.resize(num_variables);
    // topdown construction of variables
    // TODO: Construction of bdds that represent cartesian sets should depend on this order,
    // i.e., variable with large index should come first.
    for (int var_id = 0; var_id < num_variables; ++var_id) {
    // for (int var_id = num_variables - 1; var_id >= 0; --var_id) {
        int domain_size = task_info->get_domain_size(var_id);
        int req_bdd_vars = static_cast<int>(ceil(log2(domain_size)));
        // Store the var id and the required bdd vars in cudd.
        var_offset.push_back(num_bdd_vars);
        var_size.push_back(req_bdd_vars);
        vector<BDD> val_bdds;
        val_bdds.reserve(domain_size);
        for (int value = 0; value < domain_size; ++value) {
            // compute which variables require to be set to 1 to represent
            // the value in binary. e.g. 3 requires 2 binar variables and 3 = 0b11
            vector<bool> binary;
            binary.reserve(req_bdd_vars);
            int cur_value = value;
            for (int var = 0; var < req_bdd_vars; ++var) {
                if ((cur_value & 1) > 0) {
                    binary.push_back(true);
                } else {
                    binary.push_back(false);
                }
                cur_value = cur_value >> 1;
            }

            BDD result = make_one();
            // the i-th var represents the i-th lowest valued digit in the base 2 encoding.
            for (int var = 0; var < req_bdd_vars; ++var) {
                BDD var_bdd = mbr.bddVar(var + num_bdd_vars);
                var_bdd = binary[var] ? var_bdd : !var_bdd;
                result *= var_bdd;
            }
            val_bdds.push_back(move(result));
        }
        var_val_bdds[var_id] = move(val_bdds);

        // the additional "don't care" values are simply added to the last value.
        int max_domain_size = static_cast<int>(pow(2, req_bdd_vars));
        BDD &last_val_bdd = var_val_bdds[var_id][domain_size - 1];
        for (int value = domain_size; value < max_domain_size; ++value) {
            vector<bool> binary;
            binary.reserve(req_bdd_vars);
            int cur_value = value;
            for (int var = 0; var < req_bdd_vars; ++var) {
                if ((cur_value & 1) > 0) {
                    binary.push_back(true);
                } else {
                    binary.push_back(false);
                }
                cur_value = cur_value >> 1;
            }
            BDD result = make_one();
            for (int var = 0; var < req_bdd_vars; ++var) {
                BDD var_bdd = mbr.bddVar(var + num_bdd_vars);
                var_bdd = binary[var] ? var_bdd : !var_bdd;
                result *= var_bdd;
            }
            last_val_bdd += result;
        }

        num_bdd_vars += req_bdd_vars;
    }
    // cube initialization: "and" of each variable not in the effect of operator
    int num_ops = task_info->get_num_operators();
    op_eff_cube.reserve(num_ops);
    for (int op_id = 0; op_id < num_ops; ++op_id) {
        BDD result = make_one();
        for (int var_id = 0; var_id < num_variables; ++var_id) {
            if (task_info->operator_mentions_variable(op_id, var_id)) {
                for (int bdd_var_id = var_offset[var_id]; bdd_var_id < var_offset[var_id] + var_size[var_id]; ++bdd_var_id) {
                    result *= mbr.bddVar(bdd_var_id);
                }
            }
        }
        op_eff_cube.push_back(move(result));
    }
    // cube initialization: "and" of each variable in the precondition of operator
    op_pre_cube.reserve(num_ops);
    for (int op_id = 0; op_id < num_ops; ++op_id) {
        BDD result = make_one();
        for (int var_id = 0; var_id < num_variables; ++var_id) {
            if (task_info->operator_has_precondition(op_id, var_id)) {
                for (int bdd_var_id = var_offset[var_id]; bdd_var_id < var_offset[var_id] + var_size[var_id]; ++bdd_var_id) {
                    result *= mbr.bddVar(bdd_var_id);
                }
            }
        }
        op_pre_cube.push_back(move(result));
    }
    // preconditions initialization
    preconditions.reserve(num_ops);
    for (int op_id = 0; op_id < num_ops; ++op_id) {
        BDD result = make_one();
        for (int var_id = 0; var_id < num_variables; ++var_id) {
            int pre = task_info->get_precondition_value(op_id, var_id);
            if (pre != UNDEFINED) {
                result *= var_val_bdds[var_id][pre];
            }
        }
        preconditions.push_back(move(result));
    }
    // loops initialization
    loops.reserve(num_ops);
    for (int op_id = 0; op_id < num_ops; ++op_id) {
        BDD result = make_one();
        for (int var_id = 0; var_id < num_variables; ++var_id) {
            int pre = task_info->get_precondition_value(op_id, var_id);
            int post = task_info->get_postcondition_value(op_id, var_id);
            // case 1: The operator has no loop.
            if (pre != post) {
                result = make_zero();
                break;
            // case 2: looping states reduces due to precondition.
            } else if (pre != UNDEFINED && post == UNDEFINED) {
                // we can not abstract away precondition nodes here.
                result *= var_val_bdds[var_id][pre];
            // case 3: looping states reduces due to effect.
            } else if (pre == UNDEFINED && post != UNDEFINED) {
                result *= var_val_bdds[var_id][post];
            }
            // case 4: operator has no precondition and no effect on variable.
            // Hence, no contradiction to looping nor restriction of looping states.
        }
        loops.push_back(move(result));
    }
    // Initialize outgoing
    outgoings.reserve(num_ops);
    for (int op_id = 0; op_id < num_ops; ++op_id) {
        // subtract looping states from precondition
        BDD result = preconditions[op_id] * !loops[op_id];
        outgoings.push_back(move(result));
    }
}

// ____________________________________________________________________________
BDD BddBuilder::make_one() const {
    return mbr.bddOne();
}

// ____________________________________________________________________________
BDD BddBuilder::make_zero() const {
    return mbr.bddZero();
}

// ____________________________________________________________________________
BDD BddBuilder::make_bdd(const int var, const Bitset &bitset) const {
    assert(bitset.count() < bitset.size());
    BDD result = mbr.bddZero();
    for (size_t val = 0; val < bitset.size(); ++val) {
        if (bitset.test(val)) {
           result += var_val_bdds[var][val];
        }
    }
    return result;
}

// ____________________________________________________________________________
BDD BddBuilder::make_bdd(const vector<FactPair> &pattern_state) const {
    BDD result = mbr.bddOne();
    for (const FactPair &fact : pattern_state) {
       result *= var_val_bdds[fact.var][fact.value];
    }
    return result;
}

// ____________________________________________________________________________
BDD BddBuilder::make_bdd(const vector<FactPair> &pattern_state, int op_id) const {
    BDD result = mbr.bddOne();
    for (const FactPair &fact : pattern_state) {
        if (task_info->operator_has_precondition(op_id, fact.var))
            continue;
        result *= var_val_bdds[fact.var][fact.value];
    }
    return result;
}

// ____________________________________________________________________________
vector<bool> BddBuilder::compute_has_loop(const BDD &reachability, const vector<bool> &useless_operators) const {
    vector<bool> has_loop(task_info->get_num_operators(), false);
    for (int op_id = 0; op_id < task_info->get_num_operators(); ++op_id) {
        if (useless_operators[op_id])
            continue;
        if (intersect(loops[op_id], reachability)) {
            has_loop[op_id] = true;
        }
    }
    return has_loop;
}

// ____________________________________________________________________________
vector<bool> BddBuilder::compute_has_outgoing(const BDD &reachability, const vector<bool> &useless_operators) const {
    vector<bool> has_outgoing(task_info->get_num_operators(), false);
    for (int op_id = 0; op_id < task_info->get_num_operators(); ++op_id) {
        if (useless_operators[op_id])
            continue;
        if (intersect(outgoings[op_id], reachability)) {
            has_outgoing[op_id] = true;
        }
    }
    return has_outgoing;
}

// ____________________________________________________________________________
vector<BDD> BddBuilder::make_negative_infinity_bdds(
    const Abstraction &abstraction,
    const vector<int> &h_values,
    const vector<bool> &useless_operators) const {

    // for each unreachable state
    BDD unreachable_bdd = make_zero();
    for (int source_id = 0; source_id < abstraction.get_num_states(); ++source_id) {
        if (h_values[source_id] == INF || h_values[source_id] == -INF) {
            unreachable_bdd += abstraction.make_bdd(source_id);
        }
    }

    // for each transition that enters an unreachable state
    // If the target is a deadend then the -INF was not necessarily subtracted in the previous iteration.
    vector<BDD> unreachable_bdds(task_info->get_num_operators(), make_zero());
    abstraction.for_each_transition(
        [&](const Transition &transition) {
            if (useless_operators[transition.op])
                return;

            int source_id = transition.src;
            int target_id = transition.target;
            if ((h_values[target_id] == INF || h_values[target_id] == -INF) &&
                h_values[source_id] != INF &&
                h_values[source_id] != -INF) {
                unreachable_bdds[transition.op] += abstraction.make_bdd(transition);
            }
        }
    );

    // combine information
    for (int op_id = 0; op_id < task_info->get_num_operators(); ++op_id) {
        if (useless_operators[op_id])
            continue;

        // Restrict the precondition of op_id.
        unreachable_bdds[op_id] += unreachable_bdd.Restrict(preconditions[op_id]);
    }
    return unreachable_bdds;
}


// ____________________________________________________________________________
BDD BddBuilder::make_reachability_bdd(
    const Abstraction &abstraction,
    const vector<bool> &reachability) const {
    BDD result = make_zero();
    for (int state_id = 0; state_id < abstraction.get_num_states(); ++state_id) {
        if (!reachability[state_id])
            continue;
        result += abstraction.make_bdd(state_id);
    }
    return result;
}

// ____________________________________________________________________________
vector<vector<BDD>> BddBuilder::build_state_bdds_by_abstraction(
    const vector<unique_ptr<Abstraction>> &abstractions) const {
    vector<vector<BDD>> state_bdds(abstractions.size());
    utils::g_log << "Building state BDDs." << endl;
    utils::Timer timer;
    timer.resume();
    for (int abstraction_id = 0; abstraction_id < (int)abstractions.size(); ++abstraction_id) {
        const Abstraction &abstraction = *abstractions[abstraction_id];
        state_bdds[abstraction_id].resize(abstraction.get_num_states());
        for (int state_id = 0; state_id < abstraction.get_num_states(); ++state_id) {
            state_bdds[abstraction_id][state_id] = abstraction.make_bdd(state_id);
        }
    }
    cout << "Time for constructing state BDDs: " << timer() << endl;
    utils::g_log << "Finished state BDDs." << endl;
    return state_bdds;
}

// ____________________________________________________________________________
vector<vector<BDD>> BddBuilder::build_transition_bdds_by_abstraction(
    const vector<unique_ptr<Abstraction>> &abstractions) const {
    vector<vector<BDD>> transition_bdds(abstractions.size());
    //utils::g_log << "Building transition BDDs." << endl;
    //utils::Timer construction_timer;
    for (int abstraction_id = 0; abstraction_id < (int)abstractions.size(); ++abstraction_id) {
        const Abstraction &abstraction = *abstractions[abstraction_id];
        transition_bdds[abstraction_id].resize(abstraction.get_num_transitions());
        abstraction.for_each_transition(
            [this, abstraction_id,
            &abstraction, &transition_bdds](const Transition &transition) {
                transition_bdds[abstraction_id][transition.id] = abstraction.make_bdd(transition);
            }
        );
    }
    //cout << "Time for constructing transition BDDs: " << construction_timer << endl;
    //utils::g_log << "Finished transition BDDs." << endl;
    return transition_bdds;
}

// ____________________________________________________________________________
bool BddBuilder::is_applicable(const BDD &context, int op_id) const {
    return intersect(context, preconditions[op_id]);
}

// ____________________________________________________________________________
bool BddBuilder::intersect(const BDD &l, const BDD &r) const {
    return l.Intersect(r) != make_zero();
}

// ____________________________________________________________________________
const BDD &BddBuilder::get_precondition_bdd(int op_id) const {
    return preconditions[op_id];
}

// ____________________________________________________________________________
void BddBuilder::write_dd(const BDD &bdd, const char* filename, int num=0) const {
    stringstream ss;
    ss << filename << "_" << num << ".dot";
    FILE *outfile; // output file pointer for .dot file
    outfile = fopen(ss.str().c_str(),"w");
    DdNode **ddnodearray = (DdNode**)malloc(sizeof(DdNode*)); // initialize the function array
    ddnodearray[0] = bdd.Add().getNode();
    Cudd_DumpDot(mbr.getManager(), 1, ddnodearray, NULL, NULL, outfile); // dump the function to .dot file
    free(ddnodearray);
    fclose (outfile);
}

// ____________________________________________________________________________
void BddBuilder::print_statistics() const {
    cout << "Num dd nodes: " << mbr.ReadNodeCount() << "\n";
}

}
