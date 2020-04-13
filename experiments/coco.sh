#!/bin/bash

CUDA_VISIBLE_DEVICES=2 python trainval_net.py \
    --dataset coco --net res50 \
    --bs 4 \
    --cuda --g 2 --seen 3 --mGPUs
