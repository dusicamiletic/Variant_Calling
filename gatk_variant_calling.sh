#!/bin/bash

set -e
set -o pipefail 

GATK_JAR="/home/dusicamiletic/data/gatk-4.5.0.0/gatk-package-4.5.0.0-local.jar"

ref_genome=~/data/human_g1k_v37_decoy.fasta
bam_file=~/data/C835.HCC1143.2.converted.realigned.base_recalibrated.bam
output_vcf=output_vcf_gatk.vcf

java -jar "$GATK_JAR" HaplotypeCaller \
-R $ref_genome \
-I $bam_file \
-O $output_vcf


