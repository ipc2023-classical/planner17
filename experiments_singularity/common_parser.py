from lab.parser import Parser
import logging
import re


class CommonParser(Parser):
    def add_difference(self, diff, val1, val2):
        def diff_func(content, props):
            if props.get(val1) is None or props.get(val2) is None:
                diff_val = None
            else:
                diff_val = props.get(val1) - props.get(val2)
            props[diff] = diff_val

        self.add_function(diff_func)

    def _get_flags(self, flags_string):
        flags = 0
        for char in flags_string:
            flags |= getattr(re, char)
        return flags

    def add_repeated_pattern(
        self, name, regex, file="run.log", required=False, type=int, flags=""
    ):
        flags += "M"

        def find_all_occurences(content, props):
            matches = re.findall(regex, content, flags=self._get_flags(flags))
            if required and not matches:
                logging.error("Pattern {0} not found in file {1}".format(regex, file))
            props[name] = [type(m) for m in matches]

        self.add_function(find_all_occurences, file=file)

    def add_pattern(
        self, name, regex, file="run.log", required=False, type=int, flags="M"
    ):
        Parser.add_pattern(
            self, name, regex, file=file, required=required, type=type, flags=flags
        )

    def add_bottom_up_pattern(
        self, name, regex, file="run.log", required=False, type=int, flags=""
    ):
        def search_from_bottom(content, props):
            reversed_content = "\n".join(reversed(content.splitlines()))
            match = re.search(regex, reversed_content, flags=self._get_flags(flags))
            if required and not match:
                logging.error("Pattern {0} not found in file {1}".format(regex, file))
            if match:
                props[name] = type(match.group(1))

        self.add_function(search_from_bottom, file=file)
