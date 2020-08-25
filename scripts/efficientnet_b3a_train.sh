#!/bin/bash

export CUDA_VISIBLE_DEVICES=0
export CUDA_LAUNCH_BLOCKING=1

NUM_PROC=1

python -m torch.distributed.launch --nproc_per_node=$NUM_PROC train.py \
imagenet/ \
--model efficientnet_b3a \
-b 128 \
--sched step \
--epochs 200 \
--decay-epochs 2.4 \
--decay-rate .97 \
--opt rmsproptf \
--opt-eps .001 \
-j 8 \
--warmup-lr 1e-6 \
--weight-decay 1e-5 \
--drop 0.3 \
--drop-connect 0.2 \
--model-ema \
--model-ema-decay 0.9999 \
--aa rand-m9-mstd0.5 \
--remode pixel \
--reprob 0.2 \
--amp \
--lr .016 \
--num-classes 20000 \
