#!/bin/bash

spack load subread
input_files=$(ls ./bam/*.bam)
gtf='./gencode.vM11.annotation.gtf'

featureCounts -a $gtf -f -T 20 -O -s 2 -F 'GTF' -g 'gene_id' $input_files -o fc_gene.txt
