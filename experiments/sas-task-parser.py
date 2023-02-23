#! /usr/bin/env python

from lab.parser import Parser


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


def check_adl_features(content, props):
    props["has_axioms"] = "begin_rule" in content
    props["has_conditional_effects"] = has_conditional_effects(content)


def main():
    parser = Parser()
    parser.add_function(check_adl_features, file="output.sas")
    parser.parse()


if __name__ == "__main__":
    main()
