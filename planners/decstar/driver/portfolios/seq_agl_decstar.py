OPTIMAL = True

CONFIGS = [
    (60, ["--decoupling",
           "ifork(search_type=sat, max_leaf_size=10000)",
           "--heuristic",
           "hff=ff(cost_type=one)",
           "--search",
           "lazy_greedy([hff], "
           "      cost_type=one,"
           "      preferred=[hff])"]),
    (60, ["--decoupling",
           "fork(search_type=sat, pruning=cost_frontier(irrelevance=TRANSITIONS), max_leaf_size=10000)",
           "--heuristic",
           "hff=ff(cost_type=one)",
           "--search",
           "lazy_greedy([hff], "
           "      cost_type=one,"
           "      preferred=[hff])"]),
    (120, ["--decoupling",
           "lp_general(search_type=sat, factoring_time_limit=30, memory_limit=7500, add_cg_sccs=true, strategy=mm_approx, min_flexibility=0.8)",
           "--heuristic",
           "hff=ff(cost_type=one)",
           "--search",
           "lazy_greedy([hff],"
           "            preferred=[hff], cost_type=one,"
           "            symmetry=symmetry_state_pruning(lex_prices=false, lex_num_states=false, lex_goal_cost=false))"]),
    (60,  ["--heuristic",
           "hff=ff(cost_type=one)",
           "--search",
           "lazy_greedy([hff],"
           "            preferred=[hff],"
           "            cost_type=one)"]),
     ]
