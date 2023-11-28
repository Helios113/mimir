#!/bin/bash
version=unified_mia_v5_wikiMIA_exp_test

for subset in "wikimia"
do
    for model in "pythia-1.4b-deduped" "pythia-160m-deduped" "pythia-2.8b-deduped" "pythia-6.9b-deduped" "pythia-12b-deduped"
    do
        python run.py \
            --config configs/single_gpu_mi.json \
            --base_model "EleutherAI/${model}" \
            --revision step99000 \
            --specific_source ${subset} \
            --output_name $version \
            --baselines_only true \
            --special_mia true
    done
done