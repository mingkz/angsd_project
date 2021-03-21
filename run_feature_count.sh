#!/bin/bash

spack load subread
input_files=$(ls ./bam/*.bam)
gtf='/home/nib4003/ANGSD_2021_hw/final_project/gencode.vM25.primary_assembly.annotation.gtf'

featureCounts -a $gtf -f -O -F 'GTF' -g 'gene_id' $input_files -o fc_gene.txt
