#!/bin/bash
SECONDS=0
set -e        # exit when error
set -o xtrace # print command

cp /data/wlsgur4011/DataCollection/neus2_data.zip ./
unzip neus2_data.zip


















set +x; duration=SECONDS; RED='\033[0;31m'; Yellow='\033[1;33m'; Green='\033[0;32m'; NC='\033[0m'; echo -e "RED$((duration / 3600))hNC Yellow$((duration / 60 % 60))mNC Green$((duration % 60))sNC elapsed."
