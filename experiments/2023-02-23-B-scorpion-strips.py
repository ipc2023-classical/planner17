#! /usr/bin/env python

from dataclasses import dataclass
from pathlib import Path
import shutil
import subprocess
import sys

from downward import suites
from downward.experiment import (
    _DownwardAlgorithm,
    _get_solver_resource_name,
    FastDownwardRun,
)
from lab.cached_revision import get_global_rev
from lab.experiment import Experiment

import project


REPO = project.get_repo_base()
PLANNER = REPO / "planners" / "scorpion"
BENCHMARKS_DIR = REPO / "benchmarks" / "pddl"  # TODO: use SAS+ versions directly
SCP_LOGIN = "nsc"
REMOTE_REPOS_DIR = "/proj/dfsplan/users/x_jense/"
#SUITE = ["depot:p01.pddl", "grid:prob01.pddl", "gripper:prob01.pddl"]
SUITE = ["miconic-strips:0-p01.pddl"]
if project.REMOTE:
    ENV = project.BaselSlurmEnvironment(email="jendrik.seipp@liu.se", memory_per_cpu="9G", partition="infai_2")
    SUITE = project.SUITE_STRIPS
else:
    ENV = project.LocalEnvironment(processes=2)

SYS_SCP_MAX_TIME = 60 if project.REMOTE else 1
CONFIGS = [
    ("scorpion", ["--search", "astar(scp_online(["
        f"projections(sys_scp(max_time={SYS_SCP_MAX_TIME}, max_time_per_restart=6)), "
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

subprocess.run([sys.executable, "build.py"] + BUILD_OPTIONS, cwd=PLANNER)

exp = Experiment(environment=ENV)

@dataclass
class MockCachedRevision:
    name: str
    repo: str
    local_rev: str
    global_rev: str
    build_options: list[str]

rev = "ipc2023-classical"
cached_rev = MockCachedRevision(
    name="scorpion", repo=str(PLANNER), local_rev=rev, global_rev=get_global_rev(REPO, rev=rev), build_options=BUILD_OPTIONS)

exp.add_resource("", PLANNER / "driver", "code/driver")
exp.add_resource(_get_solver_resource_name(cached_rev), PLANNER / "fast-downward.py", "code/fast-downward.py")
exp.add_resource("", PLANNER / "builds" / "release" / "bin", "code/builds/release/bin")

for config_nick, config in CONFIGS:

    for task in suites.build_suite(BENCHMARKS_DIR, SUITE):
        algo = _DownwardAlgorithm(
            f"{cached_rev.name}:{config_nick}",
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
