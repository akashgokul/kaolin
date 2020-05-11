#!/bin/bash
# Job name:
#SBATCH --job-name=scan2cad_transf6_32
#
# Account:
#SBATCH --account=fc_vivelab
#
# Partition:
#SBATCH --partition=savio2
#
# Request one node:
#SBATCH --nodes=1
#
# Request cores (24, for example)
#SBATCH --ntasks-per-node=2
#
#Request CPU
#SBATCH --cpus-per-task=8
#
# Wall clock limit:
#SBATCH --time=72:00:00
#
#SBATCH --mail-type=END,FAIL
#SBATCH --mail-user=akashgokul@berkeley.edu
## Command(s) to run (example):
module load python
# module load cuda/10.1
source activate /global/scratch/akashgokul/kaolin_run
cd /global/scratch/akashgokul/kaolin
python3 data_preproc.py
cd /global/scratch/akashgokul/kaolin/examples/Classification
python3 pointcloud_classification_scan2cad.py --epochs 100 --run_number transf6_128 --batch-size 128
