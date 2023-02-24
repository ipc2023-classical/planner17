#! /usr/bin/env python

from dataclasses import dataclass
from pathlib import Path
import shutil
import subprocess

from downward import suites
from downward.cached_revision import CachedFastDownwardRevision
from downward.experiment import (
    _DownwardAlgorithm,
    _get_solver_resource_name,
    FastDownwardRun,
)

from lab.cached_revision import get_global_rev
from lab.experiment import Experiment, get_default_data_dir
from collect_sas_files import collect_sas_files

import project

USER = project.User(
    scp_login="x_davsp@tetralith.nsc.liu.se",
    project_handle="snic2022-5-341",
    remote_repo="/proj/snic2022-5-341/users/x_davsp/",
    email="david.speck@liu.se",
)

REPO = project.get_repo_base()
PLANNER = REPO / "planners" / "scorpion"
BENCHMARKS_DIR = REPO / "benchmarks" / "pddl"  # TODO: use SAS+ versions directly
SCP_LOGIN = "nsc"
REMOTE_REPOS_DIR = USER.remote_repo
SUITE = project.SUITE_STRIPS_AND_ADL
REVISION_CACHE = Path(get_default_data_dir()) / "revision-cache"
if project.REMOTE:
    ENV = project.TetralithEnvironment(
        memory_per_cpu="9G",
        # email=USER.email,
        extra_options=f"#SBATCH -A {USER.project_handle}")
else:
    ENV = project.LocalEnvironment(processes=8)
    SUITE = ["gripper-strips:0-p01.pddl", "assembly-adl:0-prob01.pddl"]


CONFIGS = [("scorpion-translate-h2", [])]

BUILD_OPTIONS = []
DRIVER_OPTIONS = [
    # "--validate",
    "--overall-time-limit", "30m",
    # Same memory limit as in competition.
    "--overall-memory-limit", "8G",
    "--translate",
    "--transform-task", "preprocess-h2"
]

exp = Experiment(environment=ENV)

exp.add_step("build_planner", subprocess.call, [PLANNER / "build.py"] + BUILD_OPTIONS)
# subprocess.run([sys.executable, "build.py"] + BUILD_OPTIONS, cwd=PLANNER)



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
exp.add_resource(_get_solver_resource_name(cached_rev),
                 PLANNER / "fast-downward.py", "code/fast-downward.py")
exp.add_resource("", PLANNER / "builds" / "release" /
                 "bin", "code/builds/release/bin")

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
exp.add_parser(project.FastDownwardExperiment.TRANSLATOR_PARSER)
# exp.add_parser(project.FastDownwardExperiment.SINGLE_SEARCH_PARSER)
exp.add_parser(project.DIR / "sas-task-parser.py")
# exp.add_parser(project.FastDownwardExperiment.PLANNER_PARSER)

exp.add_step("build", exp.build)
exp.add_step("start", exp.start_runs)
exp.add_fetcher(name="fetch")

if not project.REMOTE:
    exp.add_step("remove-eval-dir", shutil.rmtree,
                 exp.eval_dir, ignore_errors=True)
    project.add_scp_step(exp, SCP_LOGIN, REMOTE_REPOS_DIR)

ATTRIBUTES = [
    "error",
    "run_dir",
    "translator_memory",
    "translator_time_done",
]

project.add_absolute_report(
    exp,
    attributes=ATTRIBUTES,
)

exp.add_step("collect_sas_files", collect_sas_files, exp)

exp.run_steps()
