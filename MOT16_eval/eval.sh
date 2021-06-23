#!/bin/bash

# run the evaluation
python ~/Yolov5_DeepSort_Pytorch/MOT16_eval/TrackEval/scripts/run_mot_challenge.py --BENCHMARK MOT16 \
 --TRACKERS_TO_EVAL ch_yolov5m_deep_sort --SPLIT_TO_EVAL train --METRICS CLEAR Identity \
 --USE_PARALLEL False --NUM_PARALLEL_CORES 4
