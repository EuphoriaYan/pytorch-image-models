#!/bin/bash

export CUDA_VISIBLE_DEVICES=0
export CUDA_LAUNCH_BLOCKING=1

python inference.py \
imagenet/test/ \
--model efficientnet_b2 \
--checkpoint output/train/20200827-162415-efficientnet_b2-260/model_best.pth.tar \
-b 128 \
-j 8 \
--num-classes 20000 \
--class-map vocab.txt \
