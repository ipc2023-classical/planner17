#ifndef SYMBOLIC_CUDD_METHOD_H
#define SYMBOLIC_CUDD_METHOD_H


/*
  All methods that use CUDD specific classes only do something useful
  if the planner is compiled with USE_CUDD. Otherwise, they just print
  an error message and abort.
*/
#ifdef USE_CUDD
#define CUDD_METHOD(X) X;
#else
#define CUDD_METHOD(X) NO_RETURN X { \
        ABORT("CUDD method called but the planner was compiled without CUDD support."); \
}
#endif


#endif
