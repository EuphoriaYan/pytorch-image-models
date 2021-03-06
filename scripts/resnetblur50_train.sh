#!/bin/bash

export CUDA_VISIBLE_DEVICES=0
export CUDA_LAUNCH_BLOCKING=1

NUM_PROC=1

python -m torch.distributed.launch --nproc_per_node=$NUM_PROC train.py \
imagenet/ \
--model resnetblur50 \
--pretrained \
--lr 0.1 \
--warmup-epochs 5 \
--epochs 200 \
--weight-decay 1e-4 \
--sched cosine \
--reprob 0.4 \
--remode pixel \
-b 112 \
--num-classes 20000 \
--class-map vocab.txt \
