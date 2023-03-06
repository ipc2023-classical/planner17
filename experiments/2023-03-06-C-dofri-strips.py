#! /usr/bin/env python

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
from collections import namedtuple
from pathlib import Path

import project

### Specify the user, benchmark suite, planner and configs ###

USER = project.User(
    scp_login="x_pauho@tetralith.nsc.liu.se",
    project_handle="snic2022-5-341",
    remote_repo="/proj/snic2022-5-341/users/x_pauho/",
    email="paul.hoft@liu.se",
)

PLANNER_NAME = "dofri"
SUITE = project.SUITE_STRIPS
SYS_SCP_MAX_TIME = 100 if project.REMOTE else 5
OFFLINE_ORDER_TIME = 240

ABSTRACTIONS = (
    f"projections(sys_scp(max_time={SYS_SCP_MAX_TIME},"
    " max_time_per_restart=10)),cartesian()"
)

SPhOConfig = namedtuple("SPhOConfig", "strategy cache debug")

CONFIGS = [
    (
        spho_config.strategy,
        [
            "--search",
            f"astar(operatorcounting([pho_abstraction_constraints([{ABSTRACTIONS}],strategy={spho_config.strategy})],cache_lp={spho_config.cache},debug_cache={spho_config.debug}))",
        ],
    )
    for spho_config in [
        SPhOConfig("tuple", True, False),
        SPhOConfig("max_cluster", True, False),
        SPhOConfig("range_sa", True, False),
        SPhOConfig("percent_sa", True, False),
    ]
] + [
    ("pho_online", ["--search", f"astar(pho_online([{ABSTRACTIONS}],interval=10K))"]),
    (
        "pho_offline",
        [
            "--search",
            f"astar(pho_offline([{ABSTRACTIONS}],max_time={OFFLINE_ORDER_TIME}))",
        ],
    ),
]


###############################################################

REPO = project.get_repo_base()
PLANNER = REPO / "planners" / PLANNER_NAME
SCP_LOGIN = USER.scp_login
REMOTE_REPOS_DIR = USER.remote_repo

if project.REMOTE:
    BENCHMARKS_DIR = project.SAS_BENCHMARK_DIR
    ENV = project.TetralithEnvironment(
        memory_per_cpu="9G",
        email=USER.email,
        extra_options=f"#SBATCH -A {USER.project_handle}",
    )
else:
    BENCHMARKS_DIR = REPO / "benchmarks" / "sas"
    ENV = project.LocalEnvironment(processes=5)
    SUITE = [
        "gripper-strips:0-p01.sas",
        "airport-adl:0-p01-airport1-p1.sas",
    ]

BUILD_OPTIONS = []
DRIVER_OPTIONS = [
    "--validate",
    # Higher time limits probably don't make sense since we're building sequential portfolios.
    # Maybe we can go higher for the ADL experiment, though, since there are fewer configurations.
    "--overall-time-limit",
    "30m",
    # Same memory limit as in competition.
    "--overall-memory-limit",
    "8G",
]
ATTRIBUTES = [
    "error",
    "run_dir",
    # "search_start_time",
    # "search_start_memory",
    # "score_total_time",
    "total_time",
    "coverage",
    # "expansions_until_last_jump",
    # "memory",
]

subprocess.run([sys.executable, "build.py"] + BUILD_OPTIONS, cwd=PLANNER)

exp = Experiment(environment=ENV)

rev = "ipc2023-classical"
cached_rev = project.MockCachedRevision(
    name=PLANNER_NAME,
    repo=str(PLANNER),
    local_rev=rev,
    global_rev=get_global_rev(REPO, rev=rev),
    build_options=BUILD_OPTIONS,
)

exp.add_resource("", PLANNER / "driver", "code/driver")
exp.add_resource(
    _get_solver_resource_name(cached_rev),
    PLANNER / "fast-downward.py",
    "code/fast-downward.py",
)
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
exp.add_parser(project.FastDownwardExperiment.SINGLE_SEARCH_PARSER)
exp.add_parser(project.DIR / "parser.py")

exp.add_step("build", exp.build)
exp.add_step("start", exp.start_runs)
exp.add_fetcher(name="fetch")
exp.add_step("compress-properties", project.compress_properties, Path(exp.eval_dir))

if not project.REMOTE:
    exp.add_step("remove-eval-dir", shutil.rmtree, exp.eval_dir, ignore_errors=True)
    project.add_scp_step(exp, SCP_LOGIN, REMOTE_REPOS_DIR)

project.add_absolute_report(
    exp,
    attributes=ATTRIBUTES,
)

exp.run_steps()
