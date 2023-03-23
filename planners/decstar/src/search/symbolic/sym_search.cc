#include "sym_search.h"

using namespace std;

namespace symbolic {

#ifdef USE_CUDD

SymSearch::SymSearch(const SymParamsSearch &params) :
    mgr(nullptr), p(params) {}

#endif

}
