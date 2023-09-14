#!/bin/bash

accelerate launch finetune.py \
    --model ../modelStore/Llama-2-70B-fp16 \
    --output-dir ../modelStore/yarn/yarn-70b-64k

accelerate launch finetune.py \
    --output-dir ../modelStore/yarn/yarn-70b-128k \
    --model ../modelStore/yarn/yarn-70b-64k \
    --max-train-steps 200 \
    --yarn-factor 32 \
    --seed 31337