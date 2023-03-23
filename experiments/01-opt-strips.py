#! /usr/bin/env python

from pathlib import Path

from lab.experiment import Experiment

import project
from check_relative_optimality import OptimalityFiter


DIR = Path(__file__).resolve().parent
REPO = project.get_repo_base()
BENCHMARKS_DIR = REPO / "benchmarks"
assert BENCHMARKS_DIR.exists(), BENCHMARKS_DIR

opt_filter = OptimalityFiter()
ATTRIBUTES = [
    "error",
    "coverage",
    "cost",
    "memory",
    "total_time",
    opt_filter.get_attribute(),
]

exp = Experiment()
exp.add_step(
    "remove-combined-properties", project.remove_properties, Path(exp.eval_dir)
)


for expname in [
    "2023-02-23-B-scorpion-strips",
    #"2023-02-23-D-scorpion-plus-bjolp-strips",  # Oudated: uses slow lmcount implementation.
    "2023-02-23-E-bjolp-fast-strips",

    "2023-03-04-B-odin-strips-30m",
    "2023-03-05-B-decstar-strips",
    "2023-03-06-A-blind-hmax-strips-30m",
    "2023-03-06-C-dofri-strips",
    "2023-03-07-A-symk-strips-30m",
    "2023-03-22-astar-oss-sss-lmcut",
]:
    project.fetch_algorithms(exp, expname, filters=[project.strip_properties])

project.add_absolute_report(
    exp,
    attributes=ATTRIBUTES,
    filter=[opt_filter.store_cost, opt_filter.check_optimality],
    name=f"{exp.name}-full",
)

properties_hardest = Path(exp.eval_dir) / "properties-hardest.json"
exp.add_report(
    project.Hardest30Report(),
    outfile=properties_hardest,
    name="keep-only-30-hardest-tasks",
)
exp.add_step("compress-properties", project.compress, properties_hardest)
# project.add_absolute_report(exp, attributes=ATTRIBUTES, name=f"{exp.name}-hardest")

project.add_scatter_plot_reports(exp, [("scorpion:sys-scp-interesting_non_negative-60s-cartesian-single", "symk:sym-bd")], attributes=["memory"])

exp.run_steps()
