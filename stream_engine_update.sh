#!/bin/bash

source ~/miniconda2/etc/profile.d/conda.sh
conda update -y conda
conda install -y -n engine ion-functions=2.4.4 mi-instrument=0.9.3 stream_engine=1.12.0 -c ooi -c defaults -c conda-forge
