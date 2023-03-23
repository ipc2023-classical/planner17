#ifndef SYMBOLIC_SYM_SOLUTION_H
#define SYMBOLIC_SYM_SOLUTION_H

#include "sym_variables.h"
#include <vector>

namespace symbolic {

#ifdef USE_CUDD

class SymSolution {
    int g, h;
    BDD cut;
public:
    SymSolution() : g(-1), h(-1) {} // No solution yet

    SymSolution(int cost, BDD S) : g(cost), h(0), cut(S) {}

    SymSolution(int g_val, int h_val, BDD S) : g(g_val), h(h_val), cut(S) {}

    inline bool solved() const {
        return g + h >= 0;
    }

    inline int getCost() const {
        return g + h;
    }

    const BDD & getCut() const {
        return cut;
    }

    int getH() const {
        return h;
    }

    int getG() const {
        return g;
    }

};

#endif

}
#endif
