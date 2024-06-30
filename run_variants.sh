# Pronalaženje zajedničkih varijanti
bcftools isec -n=2 -w1 output_vcf_gatk.sorted.vcf.gz output_vcf_freebayes.sorted.vcf.gz -Oz -o common_variants.vcf.gz

# Pronalaženje varijanti jedinstvenih za GATK
bcftools isec -n=1 -w1 output_vcf_gatk.sorted.vcf.gz output_vcf_freebayes.sorted.vcf.gz -Oz -o gatk_unique_variants.vcf.gz

# Pronalaženje varijanti jedinstvenih za FreeBayes
bcftools isec -n=1 -w1 output_vcf_freebayes.sorted.vcf.gz output_vcf_gatk.sorted.vcf.gz -Oz -o freebayes_unique_variants.vcf.gz
