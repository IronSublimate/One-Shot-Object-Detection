#!/bin/bash

CUDA_VISIBLE_DEVICES=7 
if test "$1" == "train" ; then
    python trainval_net.py --dataset coco --net res50 --bs 4 --cuda  --seen 1 #--mGPUs
elif test "$1" == "test" ; then
    python test_net.py --dataset coco --net res50 --s 1  --checkepoch 10 --p 53248 --cuda --g 1
fi

