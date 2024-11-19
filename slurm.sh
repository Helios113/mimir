#!/bin/bash
#SBATCH -c 10
#SBATCH -w mauao
#SBATCH --gres=gpu:1
#SBATCH --job-name=mimir
#SBATCH --tasks-per-node=1
#SBATCH --output=%x-%j.out
#SBATCH --time=10:00:00

#cd /nfs-share/mk2296/projects/llm_memorisation/mia/mimir
#source $(poetry env info --path)/bin/activate

export MIMIR_DATA_SOURCE="/nfs-share/mk2296/llm_memorisation/mia/mimir/source"
export export MIMIR_CACHE_PATH="nfs-share/mk2296/llm_memorisation/mia/mimir/cache"

export HF_TOKEN=$(cat /nfs-share/mk2296/.huggingface_token)


poetry run python run.py --config configs/mi.json