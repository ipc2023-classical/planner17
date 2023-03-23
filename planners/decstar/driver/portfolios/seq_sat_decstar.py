OPTIMAL = False

CONFIGS = [
    (300, ["--decoupling",
           "ifork(search_type=sat, max_leaf_size=100000)",
           "--heuristic",
           "hff=ff(cost_type=one)",
           "--search",
           "lazy_greedy([hff], "
           "      cost_type=one, bound=BOUND,"
           "      preferred=[hff])"]),
    (300, ["--decoupling",
           "fork(search_type=sat, pruning=cost_frontier(irrelevance=TRANSITIONS), max_leaf_size=100000)",
           "--heuristic",
           "hff=ff(cost_type=one)",
           "--search",
           "lazy_greedy([hff], "
           "      cost_type=one, bound=BOUND,"
           "      preferred=[hff])"]),
    (800, ["--decoupling",
           "lp_general(search_type=sat, factoring_time_limit=30, memory_limit=7500, add_cg_sccs=true, strategy=mm_approx, min_flexibility=0.8)",
           "--heuristic",
           "hff=ff(cost_type=one)",
           "--search",
           "lazy_greedy([hff],"
           "            preferred=[hff], bound=BOUND, cost_type=one,"
           "            symmetry=symmetry_state_pruning(lex_prices=false, lex_num_states=false, lex_goal_cost=false))"]),
    (400, [
        "--if-unit-cost",
        "--heuristic", "hff=ff()",
        "--search", """iterated([
                         lazy_greedy([hff],preferred=[hff]),
                         lazy_wastar([hff],preferred=[hff],w=5),
                         lazy_wastar([hff],preferred=[hff],w=3),
                         lazy_wastar([hff],preferred=[hff],w=2),
                         lazy_wastar([hff],preferred=[hff],w=1)
                         ],repeat_last=true,continue_on_fail=true, bound=BOUND)""",
        "--if-non-unit-cost",
        "--heuristic", "hff1=ff(cost_type=one)",
        "--heuristic", "hff2=ff(cost_type=plusone)",
        "--search", """iterated([
                         lazy_greedy([hff1],preferred=[hff1],
                                     cost_type=one,reopen_closed=false),
                         lazy_greedy([hff2],preferred=[hff2],
                                     reopen_closed=false),
                         lazy_wastar([hff2],preferred=[hff2],w=5),
                         lazy_wastar([hff2],preferred=[hff2],w=3),
                         lazy_wastar([hff2],preferred=[hff2],w=2),
                         lazy_wastar([hff2],preferred=[hff2],w=1)
                         ],repeat_last=true,continue_on_fail=true, bound=BOUND)""",
        # Append --always to be on the safe side if we want to append
        # additional options later.
        "--always"])
     ]

ONLY_LAST_CONFIG_IMPROVES = True
