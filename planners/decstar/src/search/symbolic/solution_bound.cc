#include "solution_bound.h"

namespace symbolic {

#ifdef USE_CUDD

SolutionBound::SolutionBound() :
	        lower_bound(0) {
}

void SolutionBound::new_solution(const SymSolution & sol) {
    if(!solution.solved() ||
            sol.getCost() < solution.getCost()){
        solution = sol;
    }
}

void SolutionBound::setLowerBound(int lower) {
    lower_bound = std::min(getUpperBound(), std::max(lower, lower_bound));
}

#endif

}
