#!/bin/bash

echo Starting Docker...
NV_GPU=0 nvidia-docker run -t -v $(pwd)/results/:/hyperband/results dnola/hyperband_cifar >>output_1.txt 2>&1 & echo -e ''