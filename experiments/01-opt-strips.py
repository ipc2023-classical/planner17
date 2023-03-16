#! /usr/bin/env python

from pathlib import Path

from lab.experiment import Experiment

import project


DIR = Path(__file__).resolve().parent
REPO = project.get_repo_base()
BENCHMARKS_DIR = REPO / "benchmarks"
assert BENCHMARKS_DIR.exists(), BENCHMARKS_DIR
ATTRIBUTES = [
    "error",
    "coverage",
    "cost",
    "memory",
    "total_time",
]

exp = Experiment()
exp.add_step("remove-combined-properties", project.remove_properties, Path(exp.eval_dir))

for expname in [
    "2023-03-04-B-odin-strips-30m",
    "2023-03-05-B-decstar-strips",
    "2023-03-06-A-blind-hmax-strips-30m",
    "2023-03-06-C-dofri-strips",
    "2023-03-07-A-symk-strips-30m",
]:
    project.fetch_algorithms(exp, expname, filters=[project.strip_properties])

project.add_absolute_report(
    exp, attributes=ATTRIBUTES, name=f"{exp.name}-full"
)

exp.add_report(project.Hardest30Report(), outfile="properties-hardest.json", name="keep-only-30-hardest-tasks")
#exp.add_step("compress-properties", project.compress_properties, Path(exp.eval_dir))
#project.add_absolute_report(exp, attributes=ATTRIBUTES, name=f"{exp.name}-hardest")

exp.run_steps()
