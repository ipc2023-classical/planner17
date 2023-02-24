import glob
import json
import logging
import os
import shutil


def collect_sas_files(*args, **kwargs):
    assert len(args) == 1
    exp = args[0]
    exp_dir = exp.path
    eval_dir = exp.eval_dir
    sas_file_dir = os.path.join(eval_dir, "sas")

    if os.path.exists(sas_file_dir):
        logging.error(f"Folder {sas_file_dir} exists already!")
        return

    logging.info(f"Writing sas-files to {sas_file_dir}.")
    os.mkdir(sas_file_dir)

    # Find output.sas files
    for f in glob.glob(os.path.join(exp_dir, "runs-*", "*", "output.sas"), recursive=True):
        file_name = os.path.basename(f)
        dir_name = os.path.dirname(f)
        #logging.info(f"Copying {f}...")

        with open(os.path.join(dir_name, "static-properties"), "r") as static_prop_file:
            static_data = json.load(static_prop_file)

        problem = static_data["problem"]
        domain = static_data["domain"]

        assert problem.endswith(".pddl")
        problem_base_name = problem[:-len(".pddl")]

        sas_domain_folder = os.path.join(sas_file_dir, domain)
        if not os.path.exists(sas_domain_folder):
            os.makedirs(sas_domain_folder)
        #logging.info(f"Copying {problem_base_name}.sas...")
        shutil.copy2(f, os.path.join(
            sas_domain_folder, problem_base_name + ".sas"))
