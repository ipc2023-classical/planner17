#! /bin/bash

set -euo pipefail

STRIPS_DATA=../experiments/data/01-opt-strips-eval/properties-hardest.json.xz

#./batch-stonesoup.sh ${STRIPS_DATA} opt 1800 | tee batch-stonesoup-opt-strips.txt
./stonesoup.py --track opt ${STRIPS_DATA} 90 | tee stonesoup-opt-strips.txt
./greedy.py ${STRIPS_DATA} --track opt | tee greedy-opt-strips.txt

#./stonesoup.py --track opt ../experiments/data/02-opt-configs-cond-effs-eval/properties.xz 120 | tee stonesoup-opt-cond-effs.txt
#./greedy.py ../experiments/ipc2023/data/02-opt-configs-cond-effs-eval/properties.xz --track opt | tee greedy-opt-cond-effs.txt
