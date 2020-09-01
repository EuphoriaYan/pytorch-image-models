#!/bin/bash

export CUDA_VISIBLE_DEVICES=0
export CUDA_LAUNCH_BLOCKING=1

python -m torch.distributed.launch validate.py \
imagenet/test/ \
--model resnetblur50 \
--checkpoint output/train/20200825-225519-resnetblur50-224/model_best.pth.tar \
-b 112 \
-j 8 \
--amp \
--num-classes 20000 \
--class-map vocab.txt \
