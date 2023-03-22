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

DOMAINS_WITH_AXIOMS = {
    'airport-adl', 'assembly-adl', 'miconic-fulladl-adl', 'openstacks-adl',
     'optical-telegraphs-adl', 'philosophers-adl', 'psr-large-adl', 'psr-middle-adl', 'trucks-adl'
}

def domain_has_axioms(run):
    return run["domain"] in DOMAINS_WITH_AXIOMS

def ignore_hmax(run):
    return run["algorithm"] != "scorpion:astar-hmax"

exp = Experiment()
exp.add_step(
    "remove-combined-properties", project.remove_properties, Path(exp.eval_dir)
)

for expname in [
    "2023-03-06-B-blind-hmax-adl-30m",
    "2023-03-07-B-symk-adl-30m",
]:
    project.fetch_algorithms(exp, expname, filters=[project.strip_properties])

project.add_absolute_report(
    exp,
    attributes=ATTRIBUTES,
    filter=[opt_filter.store_cost, opt_filter.check_optimality, domain_has_axioms, ignore_hmax],
    name=f"{exp.name}-full",
)

properties_hardest = Path(exp.eval_dir) / "properties-hardest.json"
exp.add_report(
    project.Hardest30Report(filter=[domain_has_axioms, ignore_hmax]),
    outfile=properties_hardest,
    name="keep-only-30-hardest-tasks",
)
exp.add_step("compress-properties", project.compress, properties_hardest)
# project.add_absolute_report(exp, attributes=ATTRIBUTES, name=f"{exp.name}-hardest")

exp.run_steps()
