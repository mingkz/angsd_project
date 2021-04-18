#!/bin/bash
spack load fastqc
cd fastq

for d in */; do
  cd $d
  seqs=$(ls *.fastq)
  fastqc --extract $seqs
  cd ..
done

