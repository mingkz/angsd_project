#!/bin/bash

spack load qorts@1.2.42
QORTS_LOC=`spack location -i qorts`

for SAMPLE in SL_1 SL_2 SL_3 TP_1 TP_2 TP_3
do
java -Xmx4G -jar ${QORTS_LOC}/bin/QoRTs.jar QC --singleEnded --generatePdfReport \
   ./bam/${SAMPLE}.bam \
   --stranded \
   ./gencode.vM11.annotation.gtf \
   $SAMPLE
done
