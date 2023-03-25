SAS_FILE = "output.sas"
OPTIMAL = True

CONFIGS_STRIPS =  [
    # decstar:ds-sss-oss
    (79, ['decstar', '--decoupling', 'lp_general(factoring_time_limit=30, memory_limit=7000, add_cg_sccs=true, strategy=mm_approx, min_flexibility=0.8)', '--search', 'astar(lmcut, pruning=stubborn_sets_decoupled(min_pruning_ratio=0.25, special_case_optimizations=true, use_single_var_ifork_optimization=true), symmetry=symmetry_state_pruning(lex_prices=true, lex_num_states=false, lex_goal_cost=false))']),
    # scorpion:sys-scp-interesting_non_negative-60s-cartesian-single
    (898, ['scorpion', '--search', 'astar(scp_online([projections(sys_scp(max_time=60, max_time_per_restart=6, max_pdb_size=2M, max_collection_size=20M, pattern_type=interesting_non_negative)), cartesian(subtasks=[landmarks(order=random), goals(order=random)], max_states=infinity, max_transitions=1M, max_time=60, pick_flawed_abstract_state=first_on_shortest_path, pick_split=max_refined, tiebreak_split=min_cg, search_strategy=incremental)], saturator=perimstar, max_time=60, max_size=1M, interval=10K, orders=greedy_orders()), pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))']),
    # symk:sym-bd
    (716, ['symk', '--search', 'sym-bd(silent=true)']),
    # decstar:A*-oss-sss-LMc
    (15, ['decstar', '--search', 'astar(lmcut, pruning=stubborn_sets_ec(min_pruning_ratio=0.25), symmetry=symmetry_state_pruning)']),
]

CONFIGS_COND_EFFS = [
    # scorpion:sys-scp-interesting_non_negative-60s
    (547, ['scorpion', '--search', 'astar(scp_online([projections(sys_scp(max_time=60, max_time_per_restart=6, max_pdb_size=2M, max_collection_size=20M, pattern_type=interesting_non_negative, create_complete_transition_system=true), create_complete_transition_system=true)], saturator=perimstar, max_time=60, max_size=1M, interval=10K, orders=greedy_orders()))']),
    # symk:sym-bd
    (1000, ['symk', '--search', 'sym-bd(silent=true)']),
]

CONFIGS_AXIOMS = [
    # symk:sym-bd
    (1513, ['symk', '--search', 'sym-bd(silent=true)']),
    # scorpion:astar-blind
    (1, ['scorpion', '--search', 'astar(blind())']),
]



def get_pddl_features(task):
    has_axioms = False
    has_conditional_effects = False
    with open(task) as f:
        in_op = False
        for line in f:
            line = line.strip()
            if line == "begin_rule":
                has_axioms = True

            if line == "begin_operator":
                in_op = True
            elif line == "end_operator":
                in_op = False
            elif in_op:
                parts = line.split()
                if len(parts) >= 6 and all(p.lstrip('-').isdigit() for p in parts):
                    has_conditional_effects = True
    return has_axioms, has_conditional_effects


HAS_AXIOMS, HAS_CONDITIONAL_EFFECTS = get_pddl_features(SAS_FILE)

print(f"Task has axioms: {HAS_AXIOMS}")
print(f"Task has conditional effects: {HAS_CONDITIONAL_EFFECTS}")

if HAS_AXIOMS:
    CONFIGS = CONFIGS_AXIOMS
elif HAS_CONDITIONAL_EFFECTS:
    CONFIGS = CONFIGS_COND_EFFS
else:
    CONFIGS = CONFIGS_STRIPS
