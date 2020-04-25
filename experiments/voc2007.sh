#!/bin/bash

CUDA_VISIBLE_DEVICES=7 
if test "$1" == "train" ; then
    python trainval_net.py --dataset pascal_voc --net res50 --bs 4 --cuda  --seen 1 #--mGPUs
elif test "$1" == "test" ; then
    python test_net.py --dataset pascal_voc --net res50 --s 1  --checkepoch 20 --p 1097 --cuda --g 2
fi

