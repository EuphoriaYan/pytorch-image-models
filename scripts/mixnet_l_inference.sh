#!/bin/bash

export CUDA_VISIBLE_DEVICES=0
export CUDA_LAUNCH_BLOCKING=1

python inference.py \
imagenet/test/ \
--model mixnet_l \
--checkpoint output/train/20200825-225511-mixnet_l-224/model_best.pth.tar \
-b 128 \
-j 8 \
--num-classes 20000 \
--class-map vocab.txt \
--topk 10 \
