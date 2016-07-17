#!/bin/bash

echo Starting Docker...
docker pull dnola/hyperband_cifar
sudo nvidia-docker volume setup
NV_GPU=0 nvidia-docker run -t -v $(pwd)/results/:/hyperband/results dnola/hyperband_cifar &> output_0.txt & echo -e '' &
NV_GPU=1 nvidia-docker run -t -v $(pwd)/results/:/hyperband/results dnola/hyperband_cifar &> output_1.txt & echo -e '' &