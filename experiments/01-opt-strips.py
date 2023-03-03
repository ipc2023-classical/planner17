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
    "run_dir",
    "coverage",
    "cost",
    "memory",
    "total_time",
]

exp = Experiment()
exp.add_step("remove-combined-properties", project.remove_properties, Path(exp.eval_dir))

project.fetch_algorithms(exp, "2023-02-28-A-blind-hmax-strips", filters=[project.strip_properties])
project.fetch_algorithms(exp, "2023-03-01-B-symk-strips", filters=[project.strip_properties])

project.add_absolute_report(
    exp, attributes=ATTRIBUTES, name=f"{exp.name}-full"
)

exp.add_report(project.Hardest30Report(), outfile="properties", name="keep-only-hardest-tasks-in-properties")
exp.add_step("compress-properties", project.compress_properties, Path(exp.eval_dir))

project.add_absolute_report(
    exp, attributes=ATTRIBUTES, name=f"{exp.name}-hardest"
)

exp.run_steps()
