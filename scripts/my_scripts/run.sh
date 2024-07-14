# Other possible dataset values includes [caltech101, food101, dtd, ucf101, oxford_flowers, oxford_pets, fgvc_aircraft, stanford_cars, sun397, eurosat]

cd /home/hqvo2/Projects/MultiMEDal_multimodal_medical/libs/multimodal_prompt_learning/

# seed=1
# trains and evaluates on base classes
# CUDA_VISIBLE_DEVICES=0, bash scripts/maple/base2new_train_maple.sh food101 1
# evaluates on novel classes
# CUDA_VISIBLE_DEVICES=0, bash scripts/maple/base2new_test_maple.sh food101 1



python train.py \
    --root /home/hqvo2/Projects/MultiMEDal_multimodal_medical/libs/multimodal_prompt_learning/data \
    --seed 1 \
    --trainer MaPLe \
    --dataset-config-file configs/datasets/food101.yaml \
    --config-file configs/trainers/MaPLe/vit_b16_c2_ep5_batch4_2ctx.yaml \
    --output-dir output/base2new/train_base/food101/shots_16/MaPLe/vit_b16_c2_ep5_batch4_2ctx/seed1 \
    DATASET.NUM_SHOTS 16 \
    DATASET.SUBSAMPLE_CLASSES base