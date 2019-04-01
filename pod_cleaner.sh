#!/bin/bash


#master script
#calls working script with error stream
#dumped to /dev/null

cd ~/Podcasts/TWIT/

shopt -s nocaseglob

. pod_clean.sh 2>/dev/null
