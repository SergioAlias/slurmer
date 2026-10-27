#!/usr/bin/env bash
#SBATCH --job-name=step2
#SBATCH --output=step2_%j.log
#SBATCH --time=00:05:00
#SBATCH --ntasks=1

echo "Step 2 started at $(date)"
echo "Current Conda environment: $CONDA_DEFAULT_ENV"
sleep 5
echo "Step 2 finished"
