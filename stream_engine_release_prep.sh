#!/bin/bash

export DATE=20200813
export HASH=4433e5c202d0c17ad0b7177e51d401786456fc31

# Create directory for previous configs if it does not exist

if [[ ! -d /home/asadev/prevconfigs ]];then
        mkdir /home/asadev/prevconfigs
fi

# Make archive copies of the three (3) stream_engine configuration files prior to the deployment.

    /bin/cp -v /home/asadev/miniconda2/envs/engine/stream_engine/gunicorn_config.py /home/asadev/prevconfigs/gunicorn_config.py
    /bin/cp -v /home/asadev/miniconda2/envs/engine/stream_engine/config/default.py /home/asadev/prevconfigs/default.py
    /bin/cp -v /home/asadev/miniconda2/envs/engine/stream_engine/config/local.py /home/asadev/prevconfigs/local.py

# Perform a backup of the conda engine environment, to facilitate a rollback if needed.

#   /bin/tar --create --verbose --bzip2 --file /home/asadev/miniconda2/envs/engine.backup.$DATE'_'$HASH.bz2 /home/asadev/miniconda2/envs/engine

# Record the installed versions of mi-instrument, ion-functions, ingest_engine, and stream_engine, to facilitate a rollback if needed.

    /home/asadev/miniconda2/condabin/conda list -n engine -f "(mi-instrument|ion-functions|ingest_engine|stream_engine)" > /home/asadev/swmoduleversions_$DATE'_'$HASH
