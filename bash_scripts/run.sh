#!/bin/bash
SECONDS=0
set -e        # exit when error
set -o xtrace # print command

GPU=$1

data_path=data
your_experiment_name=1.dtu
config_name=dtu.json
training_steps=15000

# command 1
CUDA_VISIBLE_DEVICES=$GPU python scripts/run.py \
	--scene ${data_path}/transform.json \
	--name ${your_experiment_name} \
	--network ${config_name} \
	--n_steps ${training_steps}
# ...



















set +x; duration=SECONDS; RED='\033[0;31m'; Yellow='\033[1;33m'; Green='\033[0;32m'; NC='\033[0m'; echo -e "RED$((duration / 3600))hNC Yellow$((duration / 60 % 60))mNC Green$((duration % 60))sNC elapsed."
