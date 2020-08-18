#!/bin/bash

# copy ingest engine logs
if [[ ! -d /home/asadev/prevlogs ]];then
        mkdir /home/asadev/prevlogs
fi

cd ~/miniconda2/envs/engine/ingest_engine/engine/ingestion_handler
ls -l *.log* | awk '$5 > 0 {print "mv",$NF,"~/prevlogs"}'
ls -l *.log* | awk '$5 > 0 {print "mv",$NF,"~/prevlogs"}' | bash

# set up conda environment
source ~/miniconda2/etc/profile.d/conda.sh
conda update -y conda
conda update -y conda

# remove and recreate engine virtual environment
cd ~/ooi-config
git fetch origin
git rebase origin/master
conda remove -y --name engine --all
conda env create -f anaconda_env/engine.yml

# install conda update(s)
conda install -y -n engine ingest_engine=1.4.2 stream_engine=1.16.0 -c ooi -c defaults -c conda-forge
conda list -n engine -f "(mi-instrument|ion-functions|ingest_engine|stream_engine)"
