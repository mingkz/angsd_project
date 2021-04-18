#!/bin/bash -l

#SBATCH --partition=angsd_class
#SBATCH --nodes=1
#SBATCH --ntasks=10
#SBATCH --job-name=single_align
#SBATCH --time=12:00:00
#SBATCH --mem=35G

spack load star@2.7.0e
./align_single.sh ../fastq/SL/SRR7655997.1.fastq /home/nib4003/ANGSD_2021_hw/final_project/star_mouse_genome_index SL_2
