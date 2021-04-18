#!/bin/bash

fastq_path=$1
index_path=$2
prefix=$3

 STAR --runMode alignReads \
       --runThreadN 16 \
       --genomeDir $index_path \
       --outFileNamePrefix $prefix \
       --readFilesIn $fastq_path \
       --outSAMtype BAM SortedByCoordinate \
       --outSAMattributes 'NH' 'HI' 'AS' 'nM' 'MD'


