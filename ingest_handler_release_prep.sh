#!/bin/bash

export DATE=20191205
export HASH=e730bd34b99359aeb7fcab6e09bba0756fa33470

# Make archive copies of the 2 ingest_engine and 3 ingest_handler configuration files prior to the deployment.

    /bin/cp -v /home/asadev/miniconda2/envs/engine2/ingest_engine/gunicorn_config.py /home/asadev/miniconda2/envs/engine2/ingest_engine/gunicorn_config.py.PRE-$DATE'_'$HASH
    /bin/cp -v /home/asadev/miniconda2/envs/engine2/ingest_engine/config.py /home/asadev/miniconda2/envs/engine2/ingest_engine/config.py.PRE-$DATE'_'$HASH
    /bin/cp -v /home/asadev/miniconda2/envs/engine2/ingest_engine/engine/ingestion_handler/playback_config.yml /home/asadev/miniconda2/envs/engine2/ingest_engine/engine/ingestion_handler/playback_config.yml.PRE-$DATE'_'$HASH
    /bin/cp -v /home/asadev/miniconda2/envs/engine2/ingest_engine/engine/ingestion_handler/recovered_config.yml /home/asadev/miniconda2/envs/engine2/ingest_engine/engine/ingestion_handler/recovered_config.yml.PRE-$DATE'_'$HASH
    /bin/cp -v /home/asadev/miniconda2/envs/engine2/ingest_engine/engine/ingestion_handler/telemetered_config.yml /home/asadev/miniconda2/envs/engine2/ingest_engine/engine/ingestion_handler/telemetered_config.yml.PRE-$DATE'_'$HASH

# Perform a backup of the conda engine2 environment, to facilitate a rollback if needed.

    /bin/tar --create --verbose --bzip2 --file /home/asadev/miniconda2/envs/engine2.backup.$DATE'_'$HASH.bz2 /home/asadev/miniconda2/envs/engine2

# Record the installed versions of mi-instrument, ion-functions, ingest_engine, and stream_engine, to facilitate a rollback if needed.

    /home/asadev/miniconda2/condabin/conda list -n engine2 -f "(mi-instrument|ion-functions|ingest_engine|stream_engine)" > /home/asadev/swmoduleversions_$DATE'_'$HASH
