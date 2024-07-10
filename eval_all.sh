#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <config> <root_dir>"
    exit 1
fi

# Configuration file
CONFIG=$1

# Checkpoints root directory
ROOT_DIR=$2

NUM_CHECKPOINTS=5

# Get the list of checkpoint files, sorted by modification time, and take the last $NUM_CHECKPOINTS files
CHECKPOINTS=$(ls $ROOT_DIR/epoch_*.pth.tar | sort -t _ -k2,2 -k3,3n | tail -n $NUM_CHECKPOINTS)

for CHECKPOINT in $CHECKPOINTS
do
    echo "Running eval.py with checkpoint $CHECKPOINT"
    python3 eval.py $CONFIG $CHECKPOINT
done



