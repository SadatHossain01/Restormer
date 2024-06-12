#!/usr/bin/env bash

CONFIG=$1
# Using torchrun instead of torch.distributed.launch
torchrun --nproc_per_node=1 --master_port=4321 train.py -opt $CONFIG --launcher pytorch
