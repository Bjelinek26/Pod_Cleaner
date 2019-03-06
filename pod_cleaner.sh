#!/bin/bash


#master script
#calls working script with error stream
#dumped to /dev/null

cd ~/Podcasts/TWIT/

./pod_clean.sh 2>/dev/null
