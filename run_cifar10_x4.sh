#!/bin/bash

NV_GPU=0 nvidia-docker run -it -v $(pwd)/results/:/hyperband/results dnola/hyperband_cifar > output_0.txt &