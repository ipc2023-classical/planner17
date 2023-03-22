# -*- coding: utf-8 -*-
OPTIMAL = True
SAS_FILE = "output.sas"
TRACK = "opt"


def has_conditional_effects(task):
    with open(task) as f:
        in_op = False
        for line in f:
            line = line.strip()
            if line == "begin_operator":
                in_op = True
            elif line == "end_operator":
                in_op = False
            elif in_op:
                parts = line.split()
                if len(parts) >= 6 and all(p.lstrip('-').isdigit() for p in parts):
                    print("Task has at least one conditional effect: {}".format(line))
                    return True
    print("Task has no conditional effects")
    return False


if has_conditional_effects(SAS_FILE):
    CALLSTRING = "astar(stcp_online([projections(sys_scp(max_time=60, max_time_per_restart=6, max_pdb_size=2M, max_collection_size=20M, pattern_type=interesting_general), create_complete_transition_system=true)],saturator=perimstar, max_time=1000, interval=10K, orders=greedy_orders(), max_num_transitions=40000, transform=multiply_out_conditional_effects()))"
else:
    CALLSTRING = "astar(stcp_online([projections(sys_scp(max_time=100, max_time_per_restart=10)), cartesian()],saturator=perimstar, max_time=1000, interval=10K, orders=greedy_orders(), max_num_transitions=40000),pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))"

CONFIGS = [
    (1, ["--search", CALLSTRING]
    )]
