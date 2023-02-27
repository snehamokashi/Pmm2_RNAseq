library(biomaRt)
mart_zf <- useEnsembl('ensembl', dataset = 'drerio_gene_ensembl')
# One GO term at a time- filter and then export to csv file 

er_stress<-getBM(mart = mart_zf,filter = "go_parent_name",values = "response to endoplasmic reticulum stress",attributes = c("ensembl_gene_id","external_gene_name"), uniqueRows = TRUE)
write.csv(er_stress,file="er_stress.csv")

er_upr<-getBM(mart = mart_zf,filter = "go_parent_name",values = "endoplasmic reticulum unfolded protein response",attributes = c("ensembl_gene_id","external_gene_name"), uniqueRows = TRUE)
write.csv(er_upr,file="er_upr.csv")

ox_stress<-getBM(mart = mart_zf,filter = "go_parent_name",values = "response to oxidative stress",attributes = c("ensembl_gene_id","external_gene_name"), uniqueRows = TRUE)
write.csv(ox_stress,file="ox_stress.csv")

cell_stress<-getBM(mart = mart_zf,filter = "go_parent_name",values = "cellular response to stress",attributes = c("ensembl_gene_id","external_gene_name"), uniqueRows = TRUE)
write.csv(cell_stress,file="cell_stress.csv")


carb_biosynth<-getBM(mart = mart_zf,filter = "go_parent_name",values = "carbohydrate derivative biosynthetic process",attributes = c("ensembl_gene_id","external_gene_name"), uniqueRows = TRUE)
write.csv(carb_biosynth,file="carb_biosynth.csv")

skel_sys<-getBM(mart = mart_zf,filter = "go_parent_name",values = "skeletal system development",attributes = c("ensembl_gene_id","external_gene_name"), uniqueRows = TRUE)
write.csv(skel_sys,file="skel_sys.csv")

prot_fold<-getBM(mart = mart_zf,filter = "go_parent_name",values = "protein folding",attributes = c("ensembl_gene_id","external_gene_name"), uniqueRows = TRUE)
write.csv(prot_fold,file="prot_fold.csv")

erad<-getBM(mart = mart_zf,filter = "go_parent_name",values = "ERAD pathway",attributes = c("ensembl_gene_id","external_gene_name"), uniqueRows = TRUE)
write.csv(erad,file="erad.csv")


er_upr<-getBM(mart = mart_zf,filter = "go_parent_name",values = "endoplasmic reticulum unfolded protein response",attributes = c("ensembl_gene_id","external_gene_name"), uniqueRows = TRUE)
write.csv(er_upr,file="er_upr.csv")

er_upr<-getBM(mart = mart_zf,filter = "go_parent_name",values = "endoplasmic reticulum unfolded protein response",attributes = c("ensembl_gene_id","external_gene_name"), uniqueRows = TRUE)
write.csv(er_upr,file="er_upr.csv")







