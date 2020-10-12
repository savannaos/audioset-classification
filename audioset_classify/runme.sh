#!/bin/bash

# You can to modify to your own workspace.
WORKSPACE=`pwd`

MODEL_TYPE="decision_level_multi_attention"

# You need to modify the dataset path.
DATA_DIR="/Users/sos/Projects/audio-classifier/audioset-classification/packed_features"

# Train
python3 main.py --data_dir=$DATA_DIR --workspace=$RESULT_DIR --model_type=$MODEL_TYPE train

# Calculate averaged statistics.
#python3 $main.py --data_dir=$DATA_DIR --workspace=$RESULT_DIR --model_type=$MODEL_TYPE get_avg_stats
