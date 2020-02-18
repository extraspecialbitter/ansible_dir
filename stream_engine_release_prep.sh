#!/bin/bash

export DATE=20200130
export HASH=e730bd34b99359aeb7fcab6e09bba0756fa33470

# Make archive copies of the three (3) stream_engine configuration files prior to the deployment.

    /bin/cp -v /home/asadev/miniconda2/envs/engine2/stream_engine/gunicorn_config.py /home/asadev/miniconda2/envs/engine2/stream_engine/gunicorn_config.py.PRE-$DATE'_'$HASH
    /bin/cp -v /home/asadev/miniconda2/envs/engine2/stream_engine/config/default.py /home/asadev/miniconda2/envs/engine2/stream_engine/config/default.py.PRE-$DATE'_'$HASH
    /bin/cp -v /home/asadev/miniconda2/envs/engine2/stream_engine/config/local.py /home/asadev/miniconda2/envs/engine2/stream_engine/config/local.py.PRE-$DATE'_'$HASH

# Perform a backup of the conda engine environment, to facilitate a rollback if needed.

    /bin/tar --create --verbose --bzip2 --file /home/asadev/miniconda2/envs/engine2.backup.$DATE'_'$HASH.bz2 /home/asadev/miniconda2/envs/engine2

# Record the installed versions of mi-instrument, ion-functions, ingest_engine, and stream_engine, to facilitate a rollback if needed.

    /home/asadev/miniconda2/condabin/conda list -n engine2 -f "(mi-instrument|ion-functions|ingest_engine|stream_engine)" > /home/asadev/swmoduleversions_$DATE'_'$HASH
