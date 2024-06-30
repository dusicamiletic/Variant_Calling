#!/bin/bash

#definisem putanje

reference_fasta=~/data/human_g1k_v37_decoy.fasta
input_vcf_gatk=~/data/output_vcf_gatk.vcf
input_vcf_freebayes=~/data/output_vcf_freebayes.vcf


#normalizacija i sortiranje
bcftools norm -f $reference_fasta $input_vcf_gatk -Oz -o ${input_vcf_gatk%.vcf}.norm.vcf.gz
bcftools sort ${input_vcf_gatk%.vcf}.norm.vcf.gz -Oz -o ${input_vcf_gatk%.vcf}.sorted.vcf.gz

#normalizacija i sortitanje
bcftools norm -f $reference_fasta $input_vcf_freebayes -Oz -o ${input_vcf_freebayes%.vcf}.norm.vcf.gz
bcftools sort ${input_vcf_freebayes%.vcf}.norm.vcf.gz -Oz -o ${input_vcf_freebayes%.vcf}.sorted.vcf.gz


# Indexiranje VCF fajlova
bcftools index ${input_vcf_gatk%.vcf}.sorted.vcf.gz
bcftools index ${input_vcf_freebayes%.vcf}.sorted.vcf.gz
