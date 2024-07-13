##!/bin/bash

echo "start training"
CUDA_VISIBLE_DEVICES=$1 python train.py ./configs/anet_tsp.yaml --output anet_46_3GPU
echo "start testing..."
CUDA_VISIBLE_DEVICES=$1 python eval.py ./configs/anet_tsp.yaml ckpt/anet_tsp_anet_46_3GPU/epoch_029.pth.tar
