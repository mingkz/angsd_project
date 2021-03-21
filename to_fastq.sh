#!/bin/bash

all_sra=$(ls SRR*)

for file in $all_sra
do
  sratoolkit.2.10.9-ubuntu64/bin/fastq-dump $file -O fastq/LP/
done

