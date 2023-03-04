#! /usr/bin/env python

"""
Dispatch calls of the form
['.../dispatch.py', 'scorpion', '--search', 'astar(lmcut())', '--internal-plan-file', 'sas_plan']
to the correct solver.
"""

from pathlib import Path
import subprocess
import sys


REPO = Path(__file__).resolve().parent
PLANNERS = [path.name for path in (REPO / "planners").iterdir()]


def parse_args():
    planner, *config, planfile_option, planfile = sys.argv[1:]
    assert planner in PLANNERS, planner
    assert config
    assert planfile_option == "--internal-plan-file", planfile_option
    return planner, config, planfile


def main():
    planner, config, planfile = parse_args()
    print(f"Planner: {planner}")
    print(f"Search configuration: {config}")
    print(f"Plan file: {planfile}")

    cmd = [sys.executable, str(REPO / "planners" / planner / "fast-downward.py"), "output.sas"] + config
    p = subprocess.run(cmd)
    return p.returncode


if __name__ == "__main__":
    sys.exit(main())
