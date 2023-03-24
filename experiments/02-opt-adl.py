#! /usr/bin/env python

from pathlib import Path

from lab.experiment import Experiment

import project
import check_relative_optimality

DIR = Path(__file__).resolve().parent
REPO = project.get_repo_base()
BENCHMARKS_DIR = REPO / "benchmarks"
assert BENCHMARKS_DIR.exists(), BENCHMARKS_DIR
opt_filter = check_relative_optimality.OptimalityFiter()

ATTRIBUTES = [
    "error",
    "coverage",
    "cost",
    "memory",
    "total_time",
    opt_filter.get_attribute(),
]

DOMAINS_WITH_COND_EFFS_WITHOUT_AXIOMS = {
    'briefcaseworld-adl', 'caldera-adl', 'caldera-split-adl', 'cavediving-adl',
    'citycar-adl', 'flashfill-adl', 'fsc-blocks-strips', 'fsc-grid-a-strips',
    'fsc-grid-r-strips', 'fsc-hall-strips', 'fsc-visualmarker-strips',
    'gedp-ds2ndp-adl', 'miconic-simpleadl-adl', 'nurikabe-adl', 'settlers-adl',
    't0-adder-adl', 't0-coins-adl', 't0-comm-adl', 't0-grid-dispose-adl',
    't0-grid-push-adl', 't0-grid-trash-adl', 't0-sortnet-adl', 't0-sortnet-alt-adl',
    't0-uts-adl',
}

def cond_eff_domains(run):
    return run["domain"] in DOMAINS_WITH_COND_EFFS_WITHOUT_AXIOMS

exp = Experiment()
exp.add_step(
    "remove-combined-properties", project.remove_properties, Path(exp.eval_dir)
)

for expname in [
    "2023-02-23-C-scorpion-adl",
    "2023-02-23-G-scorpion-adl-long",
    "2023-03-06-B-blind-hmax-adl-30m",
    "2023-03-07-B-symk-adl-30m",
    "2023-03-17-dofri-adl",
    #"2023-03-17-C-odin-adl",  # Still suboptimal.
]:
    project.fetch_algorithms(exp, expname, filters=[project.strip_properties])

project.add_absolute_report(
    exp,
    attributes=ATTRIBUTES,
    filter=[opt_filter.store_cost, opt_filter.check_optimality, cond_eff_domains],
    name=f"{exp.name}-full",
)

properties_hardest = Path(exp.eval_dir) / "properties-hardest.json"
exp.add_report(
    project.Hardest30Report(filter=[cond_eff_domains]),
    outfile=properties_hardest,
    name="keep-only-30-hardest-tasks",
)
exp.add_step("compress-properties", project.compress, properties_hardest)
# project.add_absolute_report(exp, attributes=ATTRIBUTES, name=f"{exp.name}-hardest")

exp.run_steps()
