#!/bin/bash

CUDA_VISIBLE_DEVICES=0,3 accelerate launch -m --num_processes 2 --mixed_precision=bf16 train.main --tmpdir /media/hdd2/processed_dataset/eagle_dataset/sharegpt_0_67999_mufp16 \
--configpath train/wizardlm_7B_config.json \
--outdir /media/hdd2/eagle_experiments/wizardlm7b \
--cpdir /media/hdd2/eagle_experiments/wizardlm7b \
--basepath /media/hdd2/hf_model/Storage/WizardLM_WizardLM-7B-V1.0