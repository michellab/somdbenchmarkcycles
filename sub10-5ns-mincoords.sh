#!/bin/bash
#SBATCH -o somd-array-gpu-%A.%a.out
#SBATCH -p main
#SBATCH -n 1
#SBATCH --gres=gpu:1
#SBATCH --time 24:00:00

echo "CUDA DEVICES:" $CUDA_VISIBLE_DEVICES

mkdir 10cycles-5ns-mincoords
cd 10cycles-5ns-mincoords

export OPENMM_PLUGIN_DIR=/home/julien/sire.app/lib/plugins/

srun ~/sire.app/bin/somd-freenrg -C ../sim10-5ns-mincoords.cfg -l 0.50 -p CUDA
cd ..


