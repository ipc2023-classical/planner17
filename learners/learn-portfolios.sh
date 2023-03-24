#! /bin/bash

set -euo pipefail

STRIPS_DATA=../experiments/data/01-opt-strips-eval/properties-hardest.json.xz
COND_EFF_DATA=../experiments/data/02-opt-adl-eval/properties-hardest.json.xz
AXIOMS_DATA=../experiments/data/03-opt-axioms-eval/properties-hardest.json.xz

#./batch-stonesoup.sh ${STRIPS_DATA} opt 1800 | tee batch-stonesoup-opt-strips.txt
#./stonesoup.py --track opt ${STRIPS_DATA} 90 | tee stonesoup-opt-strips.txt

#./batch-stonesoup.sh ${COND_EFF_DATA} opt 1800 | tee batch-stonesoup-opt-cond-effs.txt
./stonesoup.py --track opt ${COND_EFF_DATA} 140 | tee stonesoup-opt-cond-effs.txt

#./batch-stonesoup.sh ${AXIOMS_DATA} opt 1800 | tee batch-stonesoup-opt-axioms.txt
#./stonesoup.py --track opt ${AXIOMS_DATA} 220 | tee stonesoup-opt-axioms.txt
