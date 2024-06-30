#!/bin/bash

set -e
set -o pipefail


REF_GENOME=~/data/human_g1k_v37_decoy.fasta
BAM_FILE=~/data/C835.HCC1143.2.converted.realigned.base_recalibrated.bam
OUTPUT_VCF_FB=~/data/output_vcf_freebayes.vcf

freebayes -f $REF_GENOME $BAM_FILE > $OUTPUT_VCF_FB


