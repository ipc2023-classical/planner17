#! /bin/bash

set -euo pipefail

cd $(dirname "$0")

RECIPE="Apptainer.ragnarok"
IMAGE="ragnarok.img"
BENCHMARKS_DIR=benchmarks/pddl

TMPDIR="/tmp/apptainer-rundir"
DOMAIN="${TMPDIR}/domain.pddl"
PROBLEM="${TMPDIR}/problem.pddl"
PLANFILE="${TMPDIR}/my_sas_plan"

printf "\n\n**********************************************************************\n\n\n"
echo "Recipe: ${RECIPE}"
if [[ -e ${IMAGE} ]]; then
    echo "Image ${IMAGE} exists -> will test it now."
else
    echo "Image ${IMAGE} does not exist -> will create and test it now."
    pushd $(dirname ${RECIPE})
    apptainer build ${IMAGE} ${RECIPE}
    popd
fi

function test_image {
    domain=${1}
    problem=${2}
    rm -rf ${TMPDIR}
    mkdir ${TMPDIR}
    cp ${BENCHMARKS_DIR}/${domain} ${DOMAIN}
    cp ${BENCHMARKS_DIR}/${problem} ${PROBLEM}

    ./${IMAGE} ${DOMAIN} ${PROBLEM} ${PLANFILE}
    validate ${DOMAIN} ${PROBLEM} ${PLANFILE}
}

printf "\n\n**********************************************************************\n\n\n"
echo "Testing image at ${IMAGE} with STRIPS task (no decoupling):"
test_image miconic-strips/{domain-,}2-s1-0.pddl

printf "\n\n**********************************************************************\n\n\n"
echo "Testing image at ${IMAGE} with STRIPS task (with decoupling):"
test_image nomystery-strips/{domain-,}0-p01.pddl

printf "\n\n**********************************************************************\n\n\n"
echo "Testing image at ${IMAGE} with conditional effects task:"
test_image briefcaseworld-adl/{domain-,}0-p002.pddl

printf "\n\n**********************************************************************\n\n\n"
echo "Testing image at ${IMAGE} with axioms effects task:"
test_image miconic-fulladl-adl/{domain-,}0-f1-1.pddl
