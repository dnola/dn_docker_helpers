#!/bin/bash

NV_GPU=0 nvidia-docker run -e -it -v $(pwd):/hyperband/ dnola/hyperband_cifar > output_0.txt