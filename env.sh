#!/bin/bash

conda create --name gen-ai python=3.10 -y
conda activate gen-ai
pip install -r requirements.txt
