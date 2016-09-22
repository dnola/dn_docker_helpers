#!/bin/bash

echo Starting Docker...
docker pull dnola/hyperband_mrbi
sudo nvidia-docker volume setup
sudo apt -y upgrade docker
NV_GPU=0 nvidia-docker run --log-driver none -t -v $(pwd)/results/:/hyperband/results dnola/hyperband_mrbi &> output_0.txt & echo -e '' &
NV_GPU=1 nvidia-docker run --log-driver none -t -v $(pwd)/results/:/hyperband/results dnola/hyperband_mrbi &> output_1.txt & echo -e '' &
NV_GPU=2 nvidia-docker run --log-driver none -t -v $(pwd)/results/:/hyperband/results dnola/hyperband_mrbi &> output_2.txt & echo -e '' &
