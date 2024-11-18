#!/bin/bash
#SBATCH -c 10
#SBATCH -w mauao
#SBATCH --gres=gpu:1
#SBATCH --job-name=mimir
#SBATCH --tasks-per-node=1
#SBATCH --output=%x-%j.out
#SBATCH --time=10:00:00



export MIMIR_DATA_SOURCE="/nfs-share/pa511/llm_memorisation/mia/mimir/source"
export export MIMIR_CACHE_PATH="nfs-share/pa511/llm_memorisation/mia/mimir/cache"

poetry run python run.py --config configs/ne.json