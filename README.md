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
  
  
  
#ARACNe
rm(list = ls())

rda_files <- list.files(pattern = "net.interactome.rda", recursive = TRUE)
tissue_names <- gsub('/net.interactome.rda','',rda_files)

for(file in rda_files){
  assign(gsub('/net.interactome.rda','',file), get(load(file)) )
}
save(AdiposeSub,AdiposeVis,file = 'tpm_count_Xena.All_61_ARACNE.rda')

save(AdiposeSub,AdiposeVis,Adrenal,ArteryAor,ArteryCor,ArteryTib,BrainCau,BrainCer,
     BrainCerHem,BrainCor,BrainFroCor,BrainNuc,Breast,CellsEBV,CellsTra,ColonSig,
     ColonTra,EsophagusGasJun,EsophagusMuc,EsophagusMus,HeartAtrApp,HeartLefVen,
     Liver,Lung,Muscle,Nerve,Pancreas,Pituitary,Prostate,SkinNotSun,SkinSunExp,
     Spleen,Stomach,tcga_blca,tcga_brca,tcga_cesc,tcga_coad,tcga_esca,tcga_gbm,
     tcga_hnsc,tcga_kirp,tcga_laml,tcga_lgg,tcga_lihc,tcga_luad,tcga_lusc,tcga_ov,
     tcga_paad,tcga_pcpg,tcga_prad,tcga_read,tcga_sarc,tcga_skcm,tcga_stad,tcga_tgct,
     tcga_thca,tcga_thym,tcga_ucec,Testis,Thyroid,WholeBlood,
     file = 'tpm_count_xena.All_61_ARACNE.rda')

