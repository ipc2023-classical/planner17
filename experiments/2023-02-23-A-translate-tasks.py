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
BENCHMARKS_DIR = REPO / "benchmarks"
SCP_LOGIN = "nsc"
REMOTE_REPOS_DIR = "/proj/dfsplan/users/x_jense"
#SUITE = ["assembly-adl:0-prob01.pddl"]
SUITE = project.SUITE_STRIPS_AND_ADL
REVISION_CACHE = Path(get_default_data_dir()) / "revision-cache"
if project.REMOTE:
    ENV = project.TetralithEnvironment(email="my.name@liu.se", memory_per_cpu="9G")
else:
    ENV = project.LocalEnvironment(processes=8)

CONFIGS = [
    ("translate", []),
]
BUILD_OPTIONS = []
DRIVER_OPTIONS = [
    #"--validate",
    "--overall-time-limit", "30m",
    # Same memory limit as in competition.
    "--overall-memory-limit", "8G",
    "--translate",
]
# Pairs of revision identifier and revision nick.
REVS = [
    ("TODO", ""),
]

ATTRIBUTES = [
    "error",
    "run_dir",
    "translator_memory",
    "translator_time_done",
]

exp = Experiment(environment=ENV)
for rev, rev_nick in REVS:
    cached_rev = CachedFastDownwardRevision(REPO, rev, BUILD_OPTIONS)
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
exp.add_parser(project.FastDownwardExperiment.TRANSLATOR_PARSER)
#exp.add_parser(project.FastDownwardExperiment.SINGLE_SEARCH_PARSER)
exp.add_parser(project.DIR / "sas-task-parser.py")
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
