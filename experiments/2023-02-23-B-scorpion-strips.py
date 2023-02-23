#! /usr/bin/env python

from pathlib import Path
import shutil

from downward import suites
from downward.cached_revision import CachedFastDownwardRevision
from downward.experiment import (
    _DownwardAlgorithm,
    _get_solver_resource_name,
    FastDownwardRun,
)
from lab.experiment import Experiment, get_default_data_dir

import project


REPO = project.get_repo_base()
PLANNER = REPO / "planners" / "scorpion"
BENCHMARKS_DIR = REPO / "benchmarks"
SCP_LOGIN = "nsc"
REMOTE_REPOS_DIR = "/proj/dfsplan/users/x_jense/"
#SUITE = ["depot:p01.pddl", "grid:prob01.pddl", "gripper:prob01.pddl"]
SUITE = ["miconic-strips:0-p01.pddl"]
REVISION_CACHE = Path(get_default_data_dir()) / "revision-cache"
if project.REMOTE:
    ENV = project.BaselSlurmEnvironment(email="jendrik.seipp@liu.se", memory_per_cpu="9G", partition="infai_2")
    SUITE = project.SUITE_STRIPS
else:
    ENV = project.LocalEnvironment(processes=2)

CONFIGS = [
    ("scorpion", ["--search", "astar(scp_online(["
        "projections(sys_scp(max_time=60, max_time_per_restart=6)), "
        "cartesian()], "
        "saturator=perimstar, max_time=60, interval=10K, orders=greedy_orders()), "
        "pruning=limited_pruning(pruning=atom_centric_stubborn_sets(), min_required_pruning_ratio=0.2))"]),
]
BUILD_OPTIONS = []
DRIVER_OPTIONS = [
    "--validate",
    # Higher time limits probably don't make sense since we're building sequential portfolios.
    # Maybe we can go higher for the ADL experiment, though, since there are fewer configurations.
    "--overall-time-limit", "10m",
    # Same memory limit as in competition.
    "--overall-memory-limit", "8G",
]
# Pairs of revision identifier and revision nick.
REVS = [
    ("TODO", ""),
]
ATTRIBUTES = [
    "error",
    "run_dir",
    #"search_start_time",
    #"search_start_memory",
    #"score_total_time",
    "total_time",
    "coverage",
    #"expansions_until_last_jump",
    #"memory",
]

exp = Experiment(environment=ENV)
for rev, rev_nick in REVS:
    cached_rev = CachedFastDownwardRevision(PLANNER, rev, BUILD_OPTIONS)
    cached_rev.cache(REVISION_CACHE)
    cache_path = REVISION_CACHE / cached_rev.name
    dest_path = Path(f"code-{cached_rev.name}")
    exp.add_resource("", cache_path, dest_path)
    # Overwrite the script to set an environment variable.
    exp.add_resource(
        _get_solver_resource_name(cached_rev),
        cache_path / "fast-downward.py",
        dest_path / "fast-downward.py",
    )
    for config_nick, config in CONFIGS:
        algo_name = f"{rev_nick}:{config_nick}" if rev_nick else config_nick

        for task in suites.build_suite(BENCHMARKS_DIR, SUITE):
            algo = _DownwardAlgorithm(
                algo_name,
                cached_rev,
                DRIVER_OPTIONS,
                config,
            )
            run = FastDownwardRun(exp, algo, task)
            exp.add_run(run)

exp.add_parser(project.FastDownwardExperiment.EXITCODE_PARSER)
#exp.add_parser(project.FastDownwardExperiment.TRANSLATOR_PARSER)
exp.add_parser(project.FastDownwardExperiment.SINGLE_SEARCH_PARSER)
exp.add_parser(project.DIR / "parser.py")
#exp.add_parser(project.FastDownwardExperiment.PLANNER_PARSER)

exp.add_step("build", exp.build)
exp.add_step("start", exp.start_runs)
exp.add_fetcher(name="fetch")

if not project.REMOTE:
    exp.add_step("remove-eval-dir", shutil.rmtree, exp.eval_dir, ignore_errors=True)
    project.add_scp_step(exp, SCP_LOGIN, REMOTE_REPOS_DIR)

project.add_absolute_report(
    exp,
    attributes=ATTRIBUTES,
)

exp.run_steps()
