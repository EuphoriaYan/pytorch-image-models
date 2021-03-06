#!/bin/bash

export CUDA_VISIBLE_DEVICES=0
export CUDA_LAUNCH_BLOCKING=1

python validate.py \
imagenet/test/ \
--model mixnet_l \
--checkpoint output/train/20200825-225511-mixnet_l-224/model_best.pth.tar \
-b 128 \
-j 8 \
--amp \
--num-classes 20000 \
--class-map vocab.txt \
