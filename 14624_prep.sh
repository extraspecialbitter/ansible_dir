#!/bin/bash

# Source conda profile

source ~/miniconda2/etc/profile.d/conda.sh

# Save old stream engine logs from engine2

# mv /home/asadev/miniconda2/envs/engine2/stream_engine/logs/ /home/asadev/miniconda2/envs/engine/stream_engine/old_logs

# Remove the old engine conda virtual environment

conda remove --name engine2 --all -y
