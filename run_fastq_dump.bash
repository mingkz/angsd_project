#!/bin/bash -l

#SBATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --job-name=to_fastq
#SBATCH --time=12:40:00
#SBATCH --mem=64G

./to_fastq.sh
