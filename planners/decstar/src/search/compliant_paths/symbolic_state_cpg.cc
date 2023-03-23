#include "symbolic_state_cpg.h"

#include "cpg_storage.h"
#include "cudd_cpg.h"
#include "../symbolic/sym_pricing_function.h"
#include "../symbolic/sym_pricing_function_sat.h"


using namespace std;


unique_ptr<CompliantPathGraph> SymbolicStateCPG::get_init_state_cpg() {
    if (g_factoring->get_search_type() == SAT || g_factoring->get_search_type() == UNSAT){
        return CuddCPG<symbolic::SymPricingFunctionSAT>::get_init_state_cpg();
    } else {
        return CuddCPG<symbolic::SymPricingFunction>::get_init_state_cpg();
    }
}

void SymbolicStateCPG::fill_in_leaf_actions(vector<OperatorID> &ops, vector<StateID> &states) {
    if (g_factoring->get_search_type() == SAT || g_factoring->get_search_type() == UNSAT){
        return CuddCPG<symbolic::SymPricingFunctionSAT>::fill_in_leaf_actions(ops, states);
    } else {
        return CuddCPG<symbolic::SymPricingFunction>::fill_in_leaf_actions(ops, states);
    }
}

void SymbolicStateCPG::print_statistics() {
    if (g_factoring->get_search_type() == SAT || g_factoring->get_search_type() == UNSAT){
        return CuddCPG<symbolic::SymPricingFunctionSAT>::print_statistics();
    } else {
        return CuddCPG<symbolic::SymPricingFunction>::print_statistics();
    }
}
