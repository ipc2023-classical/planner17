#include "sym_variables.h"

#include "debug_macros.h"
#include "../globals.h"
#include "opt_order.h"
#include "sym_util.h"
#include "sym_decoupled_manager.h"

#ifdef USE_CUDD
#include <cudd.h>
#include <cuddInt.h>
#endif

#include <fstream>
#include <iostream>
#include <sstream>
#include <string>


using namespace std;

namespace symbolic {

#ifdef USE_CUDD

SymVariables::SymVariables(const SymDecoupledManagerOptions &opts) :
                    cudd_init_nodes(opts.cudd_init_nodes),
                    cudd_init_cache_size(opts.cudd_init_cache_size),
                    cudd_init_available_memory(opts.cudd_init_available_memory),
                    gamer_ordering(opts.gamer_ordering) {
}

SymVariables::SymVariables(const Options &opts) :
                    cudd_init_nodes(opts.get<int>("cudd_init_nodes")),
                    cudd_init_cache_size(opts.get<int>("cudd_init_cache_size")),
                    cudd_init_available_memory(opts.get<int>("cudd_init_available_memory")),
                    gamer_ordering(opts.get<bool>("gamer_ordering")) {
}

void SymVariables::init() {
    if(g_factoring) {
        fd_vars.resize(g_leaves.size());
        if (gamer_ordering) {
            var_orders = InfluenceGraph::compute_factored_gamer_ordering();
        } else {
            var_orders = g_leaves;
        }
        cout << "Sym variable order by factor: ";
        for (const auto & var_order : var_orders) {
            cout << "(";
            for (int v : var_order) {
                cout << " " << v;
            }
            cout << ") " ;
        }
        cout << endl;


        bdd_index_pre = vector<vector<int>>(g_variable_domain.size());
        bdd_index_eff = vector<vector<int>>(g_variable_domain.size());
        numBDDVarsByFactor.resize(g_leaves.size());

        numBDDVars = 0;
        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor) {
            numBDDVarsByFactor[factor] =init_factor_vars(factor, var_orders[factor]);
            numBDDVars = max(numBDDVars, numBDDVarsByFactor[factor]);
        }

        int numBDDVarsManager = numBDDVars*2;

        cout << "Num variables: " << g_variable_domain.size() << " => " << numBDDVars << endl;

        //Initialize manager
        cout << "Initialize Symbolic Manager(" << numBDDVarsManager << ", "
                << cudd_init_nodes / numBDDVarsManager << ", "
                << cudd_init_cache_size << ", "
                << cudd_init_available_memory << ")" << endl;
        _manager = unique_ptr<Cudd> (new Cudd(numBDDVarsManager, 0,
                cudd_init_nodes / numBDDVarsManager,
                cudd_init_cache_size,
                cudd_init_available_memory));

        _manager->setHandler(exceptionError);
        _manager->setTimeoutHandler(exceptionError);
        // TODO: _manager->setNodesExceededHandler(exceptionError);

        binState.resize(numBDDVarsManager, 0);

        cout << "Generating binary variables" << endl;
        //Generate binary_variables
        for (int i = 0; i < numBDDVarsManager; i++) {
            variables.push_back(_manager->bddVar(i));
        }

        int num_fd_vars = g_variable_domain.size();
        preconditionBDDs.resize(num_fd_vars);
        effectBDDs.resize(num_fd_vars);
        biimpBDDs.resize(num_fd_vars);
        validValues.resize(num_fd_vars);
        validBDD = oneBDD();
        validBDDsFactor.resize(g_leaves.size(), oneBDD());
        //Generate predicate (precondition (s) and effect (s')) BDDs
        for (LeafFactorID factor(0); factor < g_leaves.size(); ++factor) {
            for (int var : var_orders[factor]) {

                for (int j = 0; j < g_variable_domain[var]; j++) {
                    preconditionBDDs[var].push_back(createPreconditionBDD(var, j));
                    effectBDDs[var].push_back(createEffectBDD(var, j));
                }
                validValues[var] = zeroBDD();
                for (int j = 0; j < g_variable_domain[var]; j++) {
                    validValues[var] += preconditionBDDs[var][j];
                }
                validBDDsFactor[factor] *= validValues[var];
                biimpBDDs[var] = createBiimplicationBDD(bdd_index_pre[var], bdd_index_eff[var]);
            }
        }

        cout << "Symbolic Variables... Done." << endl;

    } else{

        vector <int> var_order;
        if (gamer_ordering) {
            InfluenceGraph::compute_gamer_ordering(var_order);
        } else {
            for (size_t i = 0; i < g_variable_domain.size(); ++i) {
                var_order.push_back(i);
            }
        }
        cout << "Sym variable order: ";
        for (int v : var_order)
            cout << v << " ";
        cout << endl;

        init(var_order);


    }
}

//Constructor that makes use of global variables to initialize the symbolic_search structures
int SymVariables::init_factor_vars(LeafFactorID factor, const vector <int> &var_order_factor) {
    cout << "Initializing Symbolic Variables" << endl;

    //Initialize binary representation of variables.
    int numBDDVarsFactor = 0;
    //for each variable in the ordering, set the associated binary variables
    int _numBDDVars = 0;// numBDDVars;
    for (int var : var_order_factor) {
        int var_len = ceil(log2(g_variable_domain[var]));
        numBDDVarsFactor += var_len;
        for (int j = 0; j < var_len; j++) {
            bdd_index_pre[var].push_back(_numBDDVars);
            bdd_index_eff[var].push_back(_numBDDVars + 1);
            fd_vars[factor].push_back(var);
            fd_vars[factor].push_back(var);
            _numBDDVars += 2;
        }
    }
    return numBDDVarsFactor;
}


//Constructor that makes use of global variables to initialize the symbolic_search structures
void SymVariables::init(const vector <int> &v_order) {
    cout << "Initializing Symbolic Variables" << endl;
    var_order = vector<int>(v_order);
    int num_fd_vars = var_order.size();

    //Initialize binary representation of variables.
    numBDDVars = 0;
    bdd_index_pre = vector<vector<int>>(v_order.size());
    bdd_index_eff = vector<vector<int>>(v_order.size());

    //for each variable in the ordering, set the associated binary variables
    int _numBDDVars = 0;// numBDDVars;
    for (int var : var_order) {
        int var_len = ceil(log2(g_variable_domain[var]));
        numBDDVars += var_len;
        for (int j = 0; j < var_len; j++) {
            bdd_index_pre[var].push_back(_numBDDVars);
            bdd_index_eff[var].push_back(_numBDDVars + 1);
            _numBDDVars += 2;
        }
    }
    cout << "Num variables: " << var_order.size() << " => " << numBDDVars << endl;

    //Initialize manager
    cout << "Initialize Symbolic Manager(" << _numBDDVars << ", "
            << cudd_init_nodes / _numBDDVars << ", "
            << cudd_init_cache_size << ", "
            << cudd_init_available_memory << ")" << endl;
    _manager = unique_ptr<Cudd> (new Cudd(_numBDDVars, 0,
            cudd_init_nodes / _numBDDVars,
            cudd_init_cache_size,
            cudd_init_available_memory));

    /*  auto exceptionError = [this] (string message)
      {
        cerr << message << endl;
        this->_manager->UnsetTimeLimit();
        throw BDDError();
        }*/

    _manager->setHandler(exceptionError);
    _manager->setTimeoutHandler(exceptionError);
    // TODO: _manager->setNodesExceededHandler(exceptionError);

    cout << "Generating binary variables" << endl;
    //Generate binary_variables
    for (int i = 0; i < _numBDDVars; i++) {
        variables.push_back(_manager->bddVar(i));
    }

    DEBUG_MSG(cout << "Generating predicate BDDs: " << num_fd_vars << endl;);
    preconditionBDDs.resize(num_fd_vars);
    effectBDDs.resize(num_fd_vars);
    biimpBDDs.resize(num_fd_vars);
    validValues.resize(num_fd_vars);
    validBDD = oneBDD();
    //Generate predicate (precondition (s) and effect (s')) BDDs
    for (int var : var_order) {
        for (int j = 0; j < g_variable_domain[var]; j++) {
            preconditionBDDs[var].push_back(createPreconditionBDD(var, j));
            effectBDDs[var].push_back(createEffectBDD(var, j));
        }
        validValues[var] = zeroBDD();
        for (int j = 0; j < g_variable_domain[var]; j++) {
            validValues[var] += preconditionBDDs[var][j];
        }
        validBDD *= validValues[var];
        biimpBDDs[var] = createBiimplicationBDD(bdd_index_pre[var], bdd_index_eff[var]);
    }

    binState.resize(_numBDDVars, 0);
    cout << "Symbolic Variables... Done." << endl;

    // for(size_t i = 0; i < g_variable_domain.size(); i++){
    //  for(int j = 0; j < g_variable_domain[i]; j++){
    //      cout << "Var-val: " << i << "-" << j << endl;
    //      preconditionBDDs[i][j].print(1,2);
    //      effectBDDs[i][j].print(1,2);
    //  }
    // }
}

BDD SymVariables::getStateBDD(const GlobalState &state) const {
    assert(!var_order.empty());
    BDD res = _manager->bddOne();
    for (int i = var_order.size() - 1; i >= 0; i--) {
        res = res * preconditionBDDs[var_order[i]][state[var_order[i]]];
    }
    return res;
}

BDD SymVariables::getStateBDD(const vector<int> &state) const {
    assert(!var_order.empty());
    BDD res = _manager->bddOne();
    for (int i = var_order.size() - 1; i >= 0; i--) {
        res = res * preconditionBDDs[var_order[i]][state[var_order[i]]];
    }
    return res;
}

// GlobalState SymVariables::getStateFrom(const BDD & bdd) const {
//   vector <int> vals;
//   BDD current = bdd;
//   for(int var = 0; var < g_variable_domain.size(); var++){
//     for(int val = 0; val < g_variable_domain[var]; val++){
//       BDD aux = current*preconditionBDDs[var][val];
//       if(!aux.IsZero()){
//      current = aux;
//      vals.push_back(val);
//      break;
//       }
//     }
//   }
//   return GlobalState(vals);
// }


BDD SymVariables::getPartialStateBDD(const vector<pair<int, int>> &state) const {
    assert(!g_factoring);
    BDD res = validBDD;
    for (int i = state.size() - 1; i >= 0; i--) {
        // if(find(var_order.begin(), var_order.end(),
        //               state[i].first) != var_order.end()) {
        res = res * preconditionBDDs[state[i].first][state[i].second];
        //}
    }
    return res;
}

BDD SymVariables::getPartialStateBDD(LeafFactorID factor, const vector<pair<int, int>> &state) const {
    assert(g_factoring);
    BDD res = validBDDsFactor[factor];
    for (int i = state.size() - 1; i >= 0; i--) {
        assert(g_belongs_to_factor[state[i].first] == factor);
        // if(find(var_order.begin(), var_order.end(),
        //               state[i].first) != var_order.end()) {
        res = res * preconditionBDDs[state[i].first][state[i].second];
        //}
    }
    return res;
}

bool SymVariables::isIn(const GlobalState &state, const BDD &bdd) const {
    BDD sBDD = getStateBDD(state);
    return !empty_intersection(sBDD, bdd);
}

double SymVariables::numStates(const BDD &bdd) const {
    return bdd.CountMinterm(numBDDVars);
}

double SymVariables::numStates(const BDD &bdd, int factor) const {
    return bdd.CountMinterm(numBDDVarsByFactor[factor]);
}

double SymVariables::numStates() const {
    return numStates(validBDD);
}

double SymVariables::numStates(const Bucket &bucket) const {
    double sum = 0;
    for (const BDD &bdd : bucket) {
        sum += numStates(bdd);
    }
    return sum;
}

double SymVariables::numStates(const Bucket &bucket, int factor) const {
    double sum = 0;
    for (const BDD &bdd : bucket) {
        sum += numStates(bdd, factor);
    }
    return sum;
}


BDD SymVariables::generateBDDVar(const vector<int> &_bddVars, int value) const {
    BDD res = _manager->bddOne();
    for (int v :  _bddVars) {
        if (value % 2) { //Check if the binary variable is asserted or negated
            res = res * variables[v];
        } else {
            res = res * (!variables[v]);
        }
        value /= 2;
    }
    return res;
}

BDD SymVariables::createBiimplicationBDD(const vector<int> &vars, const vector<int> &vars2) const {
    BDD res = _manager->bddOne();
    for (size_t i = 0; i < vars.size(); i++) {
        res *= variables[vars[i]].Xnor(variables[vars2[i]]);
    }
    return res;
}

vector <BDD> SymVariables::getBDDVars(const vector <int> &vars, const vector<vector<int>> &v_index) const {
    vector<BDD> res;
    for (int v : vars) {
        for (int bddv : v_index[v]) {
            res.push_back(variables[bddv]);
        }
    }
    return res;
}



BDD SymVariables::getCube(int var, const vector<vector<int>> &v_index) const {
    BDD res = oneBDD();
    for (int bddv : v_index[var]) {
        res *= variables[bddv];
    }
    return res;
}

BDD SymVariables::getCube(const set <int> &vars, const vector<vector<int>> &v_index) const {
    BDD res = oneBDD();
    for (int v : vars) {
        for (int bddv : v_index[v]) {
            res *= variables[bddv];
        }
    }
    return res;
}


void
exceptionError(string /*message*/) {
    //cout << message << endl;
    throw BDDError();
}


void SymVariables::print() {
    ofstream file("variables.txt");

    for (int v : var_order) {
        file << "vars: ";
        for (int j : bdd_index_pre[v])
            cout << j << " ";
        file << endl;
        for (auto fact : g_fact_names[v])
            file << fact << endl;
    }
}

void SymVariables::print_options() const {
    cout << "CUDD Init: nodes=" << cudd_init_nodes <<
            " cache=" << cudd_init_cache_size <<
            " max_memory=" << cudd_init_available_memory <<
            " ordering: " << (gamer_ordering ? "gamer" : "fd") << endl;
}

void SymVariables::add_options_to_parser(OptionParser &parser) {
    // const vector<string> VariableOrderValues {
    //  "CG_GOAL_LEVEL", "CG_GOAL_RANDOM",
    //      "GOAL_CG_LEVEL", "RANDOM",
    //      "LEVEL", "REVERSE_LEVEL"};

    // parser.add_enum_option("var_order", VariableOrderValues,
    //                     "variable ordering for the symbolic manager", "REVERSE_LEVEL");


    parser.add_option<int> ("cudd_init_nodes", "Initial number of nodes in the cudd manager.",
            "16000000");

    parser.add_option<int> ("cudd_init_cache_size",
            "Initial number of cache entries in the cudd manager.", "16000000");

    parser.add_option<int> ("cudd_init_available_memory",
            "Total available memory for the cudd manager.", "0");
    parser.add_option<bool> ("gamer_ordering", "Use Gamer ordering optimization", "true");
}




void SymVariables::put_facts (int fd_var,
        const vector<Assignment> & current_assignment,
        vector<vector<bool> > & facts, int pos,
        int fact_value, int value_pos) const {
    if(current_assignment[pos] != Assignment::ONE ) {
        if(pos == pos_fd_var(fd_var) + 2*(num_bdd_vars(fd_var) - 1)) {
            //cout << "PUT: " << fd_var << " " << fact_value << endl;
            facts[fd_var][fact_value] = true;
        } else {
            put_facts(fd_var, current_assignment, facts, pos + 2, fact_value, value_pos * 2);
        }
    }

    if(current_assignment[pos] != Assignment::ZERO ) {
        if(pos == pos_fd_var(fd_var) + 2*(num_bdd_vars(fd_var) - 1)) {
            //cout << "PUT: " << fd_var << " " << (fact_value + value_pos) << endl;
            facts[fd_var][fact_value + value_pos] = true;
        } else {
            put_facts(fd_var, current_assignment, facts, pos + 2, fact_value + value_pos, value_pos *2);
        }
    }
}

void SymVariables::get_BDD_facts(LeafFactorID factor, DdNode * bdd, int current_fd_var,
        vector<Assignment> & current_assignment,
        vector<vector<bool> > & facts,
        unordered_set<DdNode *> & cache) const {

    DdNode * one =  _manager->bddOne().getNode();
    if (bdd == one) {
        if(current_fd_var != -1) {
            put_facts (current_fd_var, current_assignment, facts);
        }

        for(auto it = (current_fd_var == -1 ? var_orders[factor].begin() :
                std::find (var_orders[factor].begin(), var_orders[factor].end(), current_fd_var) + 1);
                it != var_orders[factor].end();  ++it) {
            int v = *it;
            //cout << "All facts of " << v << " to true" << endl;
            fill(facts[v].begin(), facts[v].end(), true);
        }
        return;
    }
    DdNode *zero = Cudd_Not(one);
    if (bdd == zero) {
        return;
    }

    /* Find splitting variable. Here we can skip the use of cuddI,
     ** because the operands are known to be non-constant.
     */
    DdNode * F = Cudd_Regular(bdd);
    int bdd_var = _manager->ReadPerm(F->index);
    int fd_var = fd_vars[factor][bdd_var];
    //cout << bdd_var << " -> " << fd_var << endl;

    if(fd_var != current_fd_var) {
        if(current_fd_var != -1) {
            put_facts (current_fd_var, current_assignment, facts);
        }
        for(auto it = (current_fd_var == -1 ? var_orders[factor].begin() :
                std::find (var_orders[factor].begin(), var_orders[factor].end(), current_fd_var) + 1);
                it != std::find (var_orders[factor].begin(), var_orders[factor].end(), fd_var);  ++it) {
            int v = *it;
            //cout << "All facts of " << v << " to true" << endl;
            fill(facts[v].begin(), facts[v].end(), true);
        }


        if (cache.count(bdd)) {
            return;
        }
        cache.insert(bdd);
    }

    DdNode * nodeT = cuddT(F);
    DdNode * nodeF = cuddE(F);
    if (Cudd_IsComplement(bdd)) {
        nodeT = Cudd_Not(nodeT);
        nodeF = Cudd_Not(nodeF);
    }

    current_assignment[bdd_var] = Assignment::ONE;
    get_BDD_facts(factor, nodeT, fd_var, current_assignment, facts, cache);

    current_assignment[bdd_var] = Assignment::ZERO;
    get_BDD_facts(factor, nodeF, fd_var, current_assignment, facts, cache);

    current_assignment[bdd_var] = Assignment::BOTH;
}



const vector<vector<bool>> & SymVariables::get_BDD_facts(LeafFactorID factor, const BDD &bdd) const {
    unordered_set<DdNode *> cache;
    vector<Assignment> assignment (numBDDVars*2, Assignment::BOTH);

    if (tmp_facts.empty()) {
        tmp_facts.resize(g_variable_domain.size());
        for (size_t v = 0; v < g_variable_domain.size(); ++v) {
            tmp_facts[v].resize(g_variable_domain[v], false);
        }
    } else {

        for (auto & f : tmp_facts) {
            fill(f.begin(), f.end(), false);
        }
    }
    get_BDD_facts(factor, bdd.getNode(), -1, assignment, tmp_facts, cache);

    return tmp_facts;
}

void SymVariables::put_facts(int fd_var,
        const std::vector<Assignment> &current_assignment,
        std::vector<std::vector<int> > &facts, int price_value) const {
    // for (size_t i = 0 ; i < current_assignment.size(); ++i) {
    //  int pos = i;
    //  if (pos % 2 == 1) continue;
    //  if(current_assignment[pos] == Assignment::ONE) {
    //      cout << "1";
    //  }  else     if(current_assignment[pos] == Assignment::ZERO) {
    //      cout << "0";

    //  } else {
    //      cout << "X";
    //  }
    // }
    // cout << endl;
    // for (int i = 0 ; i <num_bdd_vars(fd_var); ++i) {
    //  int pos = pos_fd_var(fd_var) + i*2;
    //  if(current_assignment[pos] == Assignment::ONE) {
    //      cout << "1";
    //  }  else     if(current_assignment[pos] == Assignment::ZERO) {
    //      cout << "0";

    //  } else {
    //      cout << "X";
    //  }
    // }
    // cout << endl;

    put_facts(fd_var, current_assignment, facts, pos_fd_var(fd_var), 0, 1, price_value);
}

void SymVariables::put_facts(int fd_var,
        const vector<Assignment> & current_assignment,
        vector<vector<int> > & facts, int pos,
        int fact_value, int value_pos, int price_value) const {
    if(current_assignment[pos] != Assignment::ONE ) {
        if(pos == pos_fd_var(fd_var) + 2*(num_bdd_vars(fd_var) - 1)) {
            //cout << "PUT: " << fd_var << " " << fact_value << endl;
            if((size_t)fact_value < facts[fd_var].size()) {
                facts[fd_var][fact_value] = min(facts[fd_var][fact_value], price_value);
            }
        } else {
            put_facts(fd_var, current_assignment, facts, pos + 2, fact_value, value_pos * 2, price_value);
        }
    }

    if(current_assignment[pos] != Assignment::ZERO ) {
        if(pos == pos_fd_var(fd_var) + 2*(num_bdd_vars(fd_var) - 1)) {
            if((size_t)(fact_value + value_pos) < facts[fd_var].size()) {
                facts[fd_var][fact_value + value_pos] = min(facts[fd_var][fact_value + value_pos], price_value);
            }
        } else {
            put_facts(fd_var, current_assignment, facts, pos + 2, fact_value + value_pos, value_pos *2, price_value);
        }
    }
}

int SymVariables::get_ADD_fact_prices(LeafFactorID factor, DdNode *bdd, int current_fd_var,
        vector<Assignment> & current_assignment,
        vector<vector<int> > & facts, vector<int> & all_below,
        unordered_map<DdNode *, int> & cache) const {

    if (cuddIsConstant(bdd)) {
        int price_value = cuddV(bdd);
        if (price_value < 0) {
            price_value = std::numeric_limits<int>::max();
        }

        if(current_fd_var != -1 && price_value < all_below[current_fd_var]) {
            put_facts (current_fd_var, current_assignment, facts, price_value);
        }

        for(auto it = (current_fd_var == -1 ? var_orders[factor].begin() :
                std::find (var_orders[factor].begin(), var_orders[factor].end(), current_fd_var) + 1);
                it != var_orders[factor].end();  ++it) {
            int v = *it;
            if(price_value < all_below[v]) {
                all_below[v] = price_value;
                //cout << "All facts of " << v << " to " << price_value << endl;
                for(int & val: facts[v]) {
                    val = min(val, price_value);
                }
            }
        }
        return price_value;
    }

    /* Find splitting variable. Here we can skip the use of cuddI,
     ** because the operands are known to be non-constant.
     */
    DdNode * F = Cudd_Regular(bdd);
    int bdd_var = _manager->ReadPerm(F->index);
    int fd_var = fd_vars[factor][bdd_var];


    int price_value;
    if (cache.count(bdd)) {
        price_value = cache[bdd];
    } else {

        DdNode * nodeT = cuddT(F);
        DdNode * nodeF = cuddE(F);
        // if (Cudd_IsComplement(bdd)) {
        //  nodeT = Cudd_Not(nodeT);
        //  nodeF = Cudd_Not(nodeF);
        // }

        current_assignment[bdd_var] = Assignment::ONE;
        int price1 = get_ADD_fact_prices(factor, nodeT, fd_var, current_assignment, facts, all_below, cache);

        current_assignment[bdd_var] = Assignment::ZERO;
        int price2 = get_ADD_fact_prices(factor, nodeF, fd_var, current_assignment, facts, all_below, cache);

        current_assignment[bdd_var] = Assignment::BOTH;
        price_value = min(price1, price2);
    }

    if (fd_var != current_fd_var) {
        if (current_fd_var != -1  && price_value < all_below[current_fd_var]) {
            put_facts (current_fd_var, current_assignment, facts, price_value);
        }
        for(auto it = (current_fd_var == -1 ? var_orders[factor].begin() :
                std::find (var_orders[factor].begin(), var_orders[factor].end(), current_fd_var) + 1);
                it != std::find (var_orders[factor].begin(), var_orders[factor].end(), fd_var);  ++it) {
            int v = *it;

            if(all_below[v] > price_value) {
                //cout << "All facts of " << v << " to " << price_value << endl;
                all_below[v] = price_value;
                for(int & val: facts[v]) {
                    val = min(val, price_value);
                }
            }
        }

        cache[bdd] = price_value;
    }

    return price_value;

}

void SymVariables::get_ADD_fact_prices(LeafFactorID factor, const ADD &bdd,
        vector<vector<int>> & res_fact_prices) const {
    unordered_map<DdNode *, int> cache;
    vector<Assignment> assignment (numBDDVars*2, Assignment::BOTH);
    vector<int> all_below(g_variable_domain.size(), std::numeric_limits<int>::max());

    if (res_fact_prices.empty()) {
        res_fact_prices.resize(g_variable_domain.size());
        for (size_t v = 0; v < g_variable_domain.size(); ++v) {
            res_fact_prices[v].resize(g_variable_domain[v], std::numeric_limits<int>::max());
        }
    } else {
        // for (auto & f : res_fact_prices) {
        //     fill(f.begin(), f.end(), std::numeric_limits<int>::max());
        // }
    }
    get_ADD_fact_prices(factor, bdd.getNode(), -1, assignment, res_fact_prices, all_below, cache);
}

#endif

}

