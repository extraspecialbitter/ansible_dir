#!/bin/bash

# copy ingest engine logs
if [[ ! -d /home/asadev/prevlogs ]];then
        mkdir /home/asadev/prevlogs
fi

cd ~/miniconda2/envs/engine/ingest_engine/engine/ingestion_handler
ls -l *.log* | awk '$5 > 0 {print "mv",$NF,"~/prevlogs"}'
# ll *.log* | awk '$5 > 0 {print "mv",$NF,"~/prevlogs"}' | bash

