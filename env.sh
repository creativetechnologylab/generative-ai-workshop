#!/bin/bash

conda create --name gen-ai python=3.10 -y
conda activate gen-ai
/home/$USER/miniforge3/envs/gen-ai/bin/pip install -r requirements.txt
