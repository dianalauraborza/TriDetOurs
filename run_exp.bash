git checkout master
echo "train.py configs/thumos_i3d_4_layers.yaml --output baseline_4_pyramid_layers"
# python3 train.py configs/thumos_i3d_4_layers.yaml --output baseline_4_pyramid_layers
git checkout ablation_study
echo "train.py configs/thumos_i3d_4_layers.yaml --output ours_4_pyramid_layers"
#python3 train.py configs/thumos_i3d_4_layers.yaml --output ours_4_pyramid_layers