#!/bin/bash
IFS='/'
# run the evaluation
for file in MOT16_eval/TrackEval/data/trackers/mot_challenge/MOT16-train/ch_yolov5m_deep_sort/data/*.txt; do
    echo $file
    read -a strarr <<<"$file"
    echo ${strarr[8]} 
    python MOT16_eval/TrackEval/scripts/run_mot_challenge.py --BENCHMARK MOT16 \
    --TRACKERS_TO_EVAL ch_yolov5m_deep_sort --SPLIT_TO_EVAL train --METRICS CLEAR Identity \
    --USE_PARALLEL False --NUM_PARALLEL_CORES 1 --TRACKER_EVAL_NAME ${strarr[8]} --SAVE_CSV_NAME ${strarr[8]}
done
