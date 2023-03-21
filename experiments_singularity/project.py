from collections import namedtuple
from dataclasses import dataclass
from downward.reports.absolute import AbsoluteReport
import getpass
from lab import tools
from lab.cached_revision import get_global_rev
from pathlib import Path
import platform
import os
import re
import shutil
import subprocess
import sys


@dataclass
class MockCachedRevision:
    name: str
    repo: str
    local_rev: str
    global_rev: str
    build_options: list[str]


# general help variables
DIR = Path(__file__).resolve().parent
NODE = platform.node()
REMOTE = re.match(r"tetralith\d+\.nsc\.liu\.se|n\d+", NODE)
EXP_NAME = Path(__file__).stem


# store user logins for scp
# remote repo is the location of this repo
User = namedtuple(
    "User", ["scp_login", "project_handle", "email", "remote_repo"])

sstahl = User(
    scp_login="x_simst@tetralith.nsc.liu.se",
    project_handle="snic2022-5-341",
    remote_repo="/proj/snic2022-5-341/users/x_simst/",
    email="simon.stahlberg@liu.se",
)

# allows multi to one mapping
USERS = {"x_simst": sstahl}

USER = USERS.get(getpass.getuser())


def get_repo_base() -> Path:
    """Get base directory of the repository, as an absolute path.

    Search upwards in the directory tree from the main script until a
    directory with a subdirectory named ".git" is found.

    Abort if the repo base cannot be found."""
    path = Path(tools.get_script_path())
    while path.parent != path:
        if (path / ".git").is_dir():
            return path
        path = path.parent
    sys.exit("repo base could not be found")


# planners
PLANNER_REPO = get_repo_base() / "planners"
POWER_LIFTED = "/home/simon/powerlifted.sif"

def get_bind_cmd():
    cmd = ["apptainer", "run"]
    if REMOTE:
        return cmd + ["--bind", "/proj:/proj/"]
    return cmd

PDDL_BENCHMARK_DIR = os.path.join(DIR, "benchmarks", "pddl")

SUITE_STRIPS = ['agricola-strips', 'airport-strips', 'barman-strips', 'blocksworld-strips', 'childsnack-strips', 'data-network-strips', 'depots-strips', 'driverlog-strips', 'elevators-strips', 'ferry-strips', 'floortile-strips', 'freecell-strips', 'ged-strips', 'goldminer-strips', 'grid-strips', 'gripper-strips', 'hanoi-strips', 'hiking-strips', 'logistics-strips', 'miconic-strips', 'movie-strips', 'mprime-strips', 'mystery-strips', 'no-mprime-strips', 'no-mystery-strips', 'nomystery-strips', 'npuzzle-strips', 'openstacks-strips', 'organic-synthesis-split-strips', 'organic-synthesis-strips', 'parcprinter-strips', 'parking-strips', 'pathways-strips', 'pegsol-strips', 'petri-net-alignment-strips', 'pipesworld-notankage-strips', 'pipesworld-tankage-strips', 'psr-small-strips', 'rovers-strips', 'satellite-strips', 'scanalyzer-strips', 'snake-strips', 'sokoban-strips', 'spanner-strips', 'spider-strips', 'storage-strips', 'termes-strips', 'tetris-strips', 'thoughtful-strips', 'tidybot-strips', 'tpp-strips', 'transport-strips', 'trucks-strips', 'visitall-strips', 'woodworking-strips', 'zenotravel-strips']

DEFAULT_TABLE_ATTRIBUTES = [
    "cost",
    "coverage",
    "error",
    "evaluations",
    "expansions",
    "expansions_until_last_jump",
    "generated",
    "initial_h_value",
    "memory",
    "planner_memory",
    "planner_time",
    "quality",
    "run_dir",
    "score_evaluations",
    "score_expansions",
    "score_generated",
    "score_memory",
    "score_search_time",
    "score_total_time",
    "search_time",
    "total_time",
]


def remove_file(path: Path):
    try:
        path.unlink()
    except FileNotFoundError:
        pass


def _get_exp_dir_relative_to_repo():
    repo_name = get_repo_base().name
    script = Path(tools.get_script_path())
    script_dir = script.parent
    rel_script_dir = script_dir.relative_to(get_repo_base())
    expname = script.stem
    return repo_name / rel_script_dir / "data" / expname


def add_scp_step(exp):
    remote_exp = Path(USER.remote_repo) / _get_exp_dir_relative_to_repo()
    exp.add_step(
        "scp-eval-dir",
        subprocess.call,
        [
            "scp",
            "-r",  # Copy recursively.
            "-C",  # Compress files.
            f"{USER.scp_login}:{USER.remote_repo / remote_exp}-eval",
            f"{exp.path}-eval",
        ],
    )


def fetch_algorithm(exp, expname, algo, *, new_algo=None):
    """Fetch (and possibly rename) a single algorithm from *expname*."""
    new_algo = new_algo or algo

    def rename_and_filter(run):
        if run["algorithm"] == algo:
            run["algorithm"] = new_algo
            run["id"][0] = new_algo
            return run
        return False

    exp.add_fetcher(
        f"data/{expname}-eval",
        filter=rename_and_filter,
        name=f"fetch-{new_algo}-from-{expname}",
        merge=True,
    )


def add_absolute_report(exp, *, name=None, outfile=None, **kwargs):
    report = AbsoluteReport(**kwargs)
    if name and not outfile:
        outfile = f"{name}.{report.output_format}"
    elif outfile and not name:
        name = Path(outfile).name
    elif not name and not outfile:
        name = f"{exp.name}-abs"
        outfile = f"{name}.{report.output_format}"

    if not Path(outfile).is_absolute():
        outfile = Path(exp.eval_dir) / outfile

    if not REMOTE:
        exp.add_step("remove-eval-dir", shutil.rmtree,
                     exp.eval_dir, ignore_errors=True)
        # add_scp_step(exp)

    exp.add_report(report, name=name, outfile=outfile)
    exp.add_step(f"open-{name}", subprocess.call, ["xdg-open", outfile])


def get_state_size(domain, problem):
    sizes = re.findall(r"(\d+)x(\d+)X(\d+)x(\d+)", domain)
    assert len(sizes) == 1
    sizes = sizes[0]
    assert len(sizes) == 4
    return int(sizes[0]) * int(sizes[0]) * int(sizes[1]) * int(sizes[1]) * int(sizes[3]) * int(sizes[3])

def get_textbook_bound(domain, problem):
    sizes = re.findall(r"(\d+)x(\d+)X(\d+)x(\d+)", domain)
    assert len(sizes) == 1
    sizes = sizes[0]
    assert len(sizes) == 4
    return int(sizes[0]) * int(sizes[1]) * int(sizes[3])

def get_state_variables(domain):
    return list(range(get_state_size(domain, "")))


def set_run_properties(run, algo_name, domain_name, problem_name, local_rev, driver_options, component_options):
    run.set_property("algorithm", algo_name)
    run.set_property("domain", domain_name)
    run.set_property("problem", problem_name)
    run.set_property("local_revision", local_rev)
    run.set_property("global_revision", get_global_rev(
        get_repo_base(), rev=local_rev))
    run.set_property("driver_options", driver_options)
    run.set_property("component_options", component_options)

    run.set_property("id", [algo_name, domain_name, problem_name])
