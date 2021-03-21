#!/bin/bash

spack load samtools@1.9%gcc@6.3.0

all_bams=$(ls ./bam/*.bam)

for bam in $all_bams
do
  samtools index $bam -b
done
