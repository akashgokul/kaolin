#!/bin/bash
# Job name:
#SBATCH --job-name=scan2cad_p2
#
# Account:
#SBATCH --account=fc_vivelab
#
# Partition:
#SBATCH --partition=savio2_gpu
#
# Request one node:
#SBATCH --nodes=1
#
# Request cores (24, for example)
#SBATCH --ntasks-per-node=1
#
#Request GPUs
#SBATCH --gres=gpu:1
#
#Request CPU
#SBATCH --cpus-per-task=4
#
# Wall clock limit:
#SBATCH --time=72:00:00
#
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=akashgokul@berkeley.edu
## Command(s) to run (example):
module load python
module load cuda/10.1
source activate /global/scratch/akashgokul/kaolin_run
python3 pointcloud_classification_scan2cad.py --run_number p2_invtf_2 --batch-size 64 --epochs 500
