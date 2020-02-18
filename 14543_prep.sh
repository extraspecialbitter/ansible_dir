#!/bin/bash

# Source conda profile

source ~/miniconda2/etc/profile.d/conda.sh

# Remove the old engine conda virtual environment

conda remove --name engine --all -y

# Create a new engine virtual environment using packages from engine2

conda create -n engine mi-instrument ion-functions ingest_engine stream_engine beautifulsoup4 cachetools cassandra-driver concurrentloghandler curl cycler deprecated flask geoalchemy2 gunicorn hdf4 hdf5 intel-openmp libcurl libnetcdf matplotlib mkl modestimage msgpack-python netcdf4 ooi-data pbr psutil pyparsing simplejson subprocess32 wrapt xarray=0.9.2 -c ooi -c defaults -c conda-forge -y
