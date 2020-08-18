#!/bin/bash

export DATE=20200813
export HASH=4433e5c202d0c17ad0b7177e51d401786456fc31

# Create directory for previous configs if it does not exist

if [[ ! -d /home/asadev/prevconfigs ]];then
        mkdir /home/asadev/prevconfigs
fi

# Make archive copies of the 2 ingest_engine and 3 ingest_handler configuration files prior to the deployment.

    /bin/cp -v /home/asadev/miniconda2/envs/engine/ingest_engine/gunicorn_config.py /home/asadev/prevconfigs
    /bin/cp -v /home/asadev/miniconda2/envs/engine/ingest_engine/config.py /home/asadev/prevconfigs
    /bin/cp -v /home/asadev/miniconda2/envs/engine/ingest_engine/engine/ingestion_handler/playback_config.yml /home/asadev/prevconfigs
    /bin/cp -v /home/asadev/miniconda2/envs/engine/ingest_engine/engine/ingestion_handler/recovered_config.yml /home/asadev/prevconfigs
    /bin/cp -v /home/asadev/miniconda2/envs/engine/ingest_engine/engine/ingestion_handler/telemetered_config.yml /home/asadev/prevconfigs

# Perform a backup of the conda engine environment, to facilitate a rollback if needed.

#   /bin/tar --create --verbose --bzip2 --file /home/asadev/miniconda2/envs/engine.backup.$DATE'_'$HASH.bz2 /home/asadev/miniconda2/envs/engine

# Record the installed versions of mi-instrument, ion-functions, ingest_engine, and stream_engine, to facilitate a rollback if needed.

    /home/asadev/miniconda2/condabin/conda list -n engine -f "(mi-instrument|ion-functions|ingest_engine|stream_engine)" > /home/asadev/swmoduleversions_$DATE'_'$HASH
