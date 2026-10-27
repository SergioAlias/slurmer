#!/usr/bin/env bash
#SBATCH --job-name=step1
#SBATCH --output=step1_%j.log
#SBATCH --time=00:05:00
#SBATCH --ntasks=1

echo "Step 1 started at $(date)"
echo "Current Conda environment: $CONDA_DEFAULT_ENV"
sleep 5
echo "Step 1 finished"
