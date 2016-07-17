#!/bin/bash

echo Starting Docker...
docker pull dnola/hyperband_cifar
NV_GPU=0 nvidia-docker run -t -v $(pwd)/results/:/hyperband/results dnola/hyperband_cifar &> output_0.txt & echo -e ''