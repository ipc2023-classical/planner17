import os
import project

from downward.experiment import FastDownwardExperiment
from downward import suites
from lab.environments import TetralithEnvironment, LocalEnvironment
from lab.experiment import Experiment
from lab.reports import Attribute


USER = project.User(
    scp_login="x_simst@tetralith.nsc.liu.se",
    project_handle="snic2022-5-341",
    remote_repo="/proj/snic2022-5-341/users/x_simst/",
    email="simon.stahlberg@liu.se",
)

ALGO_NAME = "powerlifted-bfs"
PLANNER = project.POWER_LIFTED
SUITE = project.SUITE_STRIPS

######

REPO = project.get_repo_base()
if project.REMOTE:
    BENCHMARKS_DIR = project.PDDL_BENCHMARK_DIR
    ENV = TetralithEnvironment(
        memory_per_cpu="9G",
        email="simon.stahlberg@liu.se",
        extra_options=f"#SBATCH -A {USER.project_handle}")
else:
    BENCHMARKS_DIR = REPO / "benchmarks" / "pddl"
    ENV = LocalEnvironment(processes=2)
    SUITE = ["gripper-strips:0-p01.pddl", "gripper-strips:0-p02.pddl", "miconic-strips:0-p01.pddl"]


exp = Experiment(environment=ENV)
exp.add_step("build", exp.build)
exp.add_step("start", exp.start_runs)
exp.add_fetcher(name="fetch")

exp.add_parser(FastDownwardExperiment.EXITCODE_PARSER)
exp.add_parser("solution_parser_powerlifted.py")
exp.add_resource("planner_image", PLANNER, symlink=True)
exp.add_resource("", "common_parser.py")
exp.add_resource("", "solution_parser_powerlifted.py")

for generator in ["yannakakis", "clique_bk", "clique_kckp", "automatic"]:
    for state in ["sparse", "extensional"]:
        for task in suites.build_suite(BENCHMARKS_DIR, SUITE):
            domain_name = task.domain
            problem_name = task.problem[:-5]
            run = exp.add_run()
            run.add_resource("domain", task.domain_file, symlink=True)
            run.add_resource("problem", task.problem_file, symlink=True)
            run.add_command(
                "run_planner",
                project.get_bind_cmd() +
                ["{planner_image}"] +
                ["-d", "{domain}", "-i", "{problem}"] +
                ["--state", state] +
                ["-s", "bfs", "-g", generator],
                time_limit=int(0.5*3600),
                memory_limit=int(8*1024)
            )
            project.set_run_properties(
                run, "{}_s-{}_g-{}".format(ALGO_NAME, state, generator), domain_name, problem_name, "ipc2023-classical", "", "")

ATTRIBUTES = [
    "cost",
    "coverage",
    "error",
    "run_dir",
    "unsolvable",
    Attribute("f_bound", min_wins=False)
]

project.add_absolute_report(
    exp,
    attributes=ATTRIBUTES
)

exp.add_parse_again_step()

exp.run_steps()
