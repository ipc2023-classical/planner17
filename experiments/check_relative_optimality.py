from collections import defaultdict
from lab.reports import Attribute
import sys


class OptimalityFiter:
    def __init__(self):
        self.cov_per_alg = defaultdict(list)

    def _get_key(self, run):
        return (run["domain"], run["problem"])

    def store_cost(self, run):
        cost = run.get("cost")
        if cost is not None:
            self.cov_per_alg[self._get_key(run)].append(cost)
        return True

    def check_optimality(self, run):
        cost = run.get("cost")
        if cost is not None:
            run["cost-ok"] = all(
                [c == cost for c in self.cov_per_alg[self._get_key(run)]]
            )
        return run

    def get_attribute(self):
        return Attribute("cost-ok", absolute=True, min_wins=None, function=all)
