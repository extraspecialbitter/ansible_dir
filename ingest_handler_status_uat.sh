#!/bin/bash

if [ $# -lt 1 ]; then
   echo "Usage: $0 <stop|start|status>"
   exit 1
elif [[ $1 != "start" && $1 != "stop" && $! && "status" ]]; then
   echo "Usage: $0 <stop|start|status>"
   exit 2
fi
arg=$1

source ~/miniconda2/etc/profile.d/conda.sh
conda activate engine2
cd /home/asadev/miniconda2/envs/engine2/ingest_engine/engine/ingestion_handler
/home/asadev/miniconda2/envs/engine2/bin/manage-ingest-handler ${arg} telemetered
/home/asadev/miniconda2/envs/engine2/bin/manage-ingest-handler ${arg} recovered
/home/asadev/miniconda2/envs/engine2/bin/manage-ingest-handler ${arg} playback
conda deactivate
