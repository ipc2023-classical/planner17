#ifndef SYMBOLIC_SOLUTION_BOUND_H
#define SYMBOLIC_SOLUTION_BOUND_H

#include "sym_solution.h"

namespace symbolic {

#ifdef USE_CUDD

class SolutionBound {
    int lower_bound;
    SymSolution solution;

public: 
    SolutionBound ();

    void new_solution(const SymSolution &sol);
    void setLowerBound(int lower);

    int getUpperBound() const {
        if(solution.solved()) return solution.getCost();
        else return std::numeric_limits<int>::max();
    }
    int getLowerBound() const {
        return lower_bound;
    }

    bool solved() const {
        return getLowerBound() >= getUpperBound();
    }

    const SymSolution * get_solution () const {
        return &solution;
    }

};

#endif

}



#endif
