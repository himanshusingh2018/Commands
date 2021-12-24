# Commands
BiocManager::install("biomaRt")
require(biomaRt)

ensembl <- useMart("ENSEMBL_MART_SNP", dataset = "hsapiens_snp")

rsids <- c("rs2639606", "rs75264089")

a <- getBM(attributes=c(
  "refsnp_id", "chr_name", "chrom_start", "chrom_end",
  "allele", "clinical_significance", "sift_score",
  "synonym_name", "ensembl_gene_stable_id"),
  filters="snp_filter", values=rsids,
  mart=ensembl, uniqueRows=TRUE) 
