OPTIMAL = True

CONFIGS = [
    (300, ["--decoupling",
           "fork(search_type=asda, pruning=cost_frontier(irrelevance=TRANSITIONS), max_leaf_size=1000000)",
           "--search",
           "astar(lmcut, " 
           "      pruning_heuristic=lmcut(search_type=STAR),"
           "      pruning=stubborn_sets_decoupled(min_pruning_ratio=0.3, special_case_optimizations=true))"]),
    (800, ["--decoupling",
           "lp_general(factoring_time_limit=30, memory_limit=7500, add_cg_sccs=true, strategy=mm_approx, min_flexibility=0.8)",
           "--search",
           "astar(lmcut,"
           "      pruning=stubborn_sets_decoupled(min_pruning_ratio=0.25, special_case_optimizations=true, use_single_var_ifork_optimization=true),"
           "      symmetry=symmetry_state_pruning(lex_prices=true, lex_num_states=false, lex_goal_cost=false))"]),
    (300, ["--search",
           "astar(lmcut,"
           "      pruning=stubborn_sets_ec(min_pruning_ratio=0.25),"
           "      symmetry=symmetry_state_pruning)"]),
    (400, ["--search",
           "astar(blind)"])
     ]
