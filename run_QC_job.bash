#!/bin/bash -l

#SBATCH --account=angsd_class
#SBATCH --partition=angsd_class                                                                                         
#SBATCH --nodes=1
#SBATCH --ntasks=16
#SBATCH --job-name=mouse_genome_creation
#SBATCH --time=12:34:00
#SBATCH --mem=35G


./run_QC.sh
