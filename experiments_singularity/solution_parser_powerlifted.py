from common_parser import CommonParser


def add_coverage(content, props):
    props["coverage"] = 1 if ("cost" in props) else 0


def reduce_to_min(list_name, single_name):
    def reduce_to_minimum(content, props):
        values = props.get(list_name, [])
        if values:
            props[single_name] = min(values)
    return reduce_to_minimum


def main():
    parser = CommonParser()
    parser.add_pattern(
        "cost", r"Total plan cost: (\d+)\n", type=int)
    parser.add_function(add_coverage)
    parser.parse()


main()
