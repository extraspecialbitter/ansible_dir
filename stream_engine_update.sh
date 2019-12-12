#!/bin/bash

source ~/miniconda2/etc/profile.d/conda.sh
conda update -y conda
conda install -y -n engine2 ingest_engine=1.4.2 mi-instrument=0.9.2 stream_engine=1.11.0 -c ooi
