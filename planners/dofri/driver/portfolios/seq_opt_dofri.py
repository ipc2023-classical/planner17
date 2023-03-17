OPTIMAL = True

SAS_FILE = "output.sas"


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
    # ,cartesian(max_time=200,verbosity=silent)]"
    ABSTRACTIONS = "[projections(sys_scp(max_time=20, max_time_per_restart=10),create_complete_transition_system=true)]"
else:
    ABSTRACTIONS = "[projections(sys_scp(max_time=20, max_time_per_restart=10)),cartesian(max_time=200,verbosity=silent)]"


CONFIGS = [
    (1, ["--search", f"astar(operatorcounting([pho_abstraction_constraints({ABSTRACTIONS},strategy=max_cluster)],cache_lp=true),verbosity=silent)"]
     )]
