#!/bin/bash
CONDA_BASE=$(conda info --base)
source "$CONDA_BASE/etc/profile.d/conda.sh"

conda activate qwensft
# 7B sft yes or no
llamafactory-cli train examples/train_lora/qwen2.5vl_7B_lora_sft.yaml
# 7b bbox or no
llamafactory-cli train examples/train_lora/qwen2.5vl_7B_lora_sft_bbox.yaml
# 3B sft yes or no
llamafactory-cli train examples/train_lora/qwen2.5vl_3B_lora_sft.yaml
# 3b bbox or no
llamafactory-cli train examples/train_lora/qwen2.5vl_3B_lora_sft_bbox.yaml