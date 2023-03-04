SAS_FILE = "output.sas"
OPTIMAL = True

# TODO: Fill in real planners and configs.
CONFIGS_STRIPS = [
    (542, ['scorpion', '--search', 'astar(lmcut())']),
]

CONFIGS_COND_EFFS = [
    (229, ['odin', '--search', 'astar(hmax())']),
]

CONFIGS_AXIOMS = [
    (1800, ['symk', '--search', 'astar(blind())']),
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
                    print(f"Task has at least one conditional effect: {line}")
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
