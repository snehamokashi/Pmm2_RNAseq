library(dplyr)
library(limma)
library(edgeR)

# importing counts file
combined_counts<-as.data.frame(combined_counts_6dpf)

rownames(combined_counts)<-combined_counts$Geneid
combined_counts$Geneid<-NULL
combined_counts$length<-NULL
# creating DGEList object
counts.DGEList <- DGEList(counts = combined_counts,
                          genes = rownames(combined_counts))

# filtering lowly expressed genes
counts.keep <- filterByExpr(counts.DGEList)
summary(counts.keep)
counts.DGEList <- counts.DGEList[counts.keep, , keep.lib.sizes = FALSE]
dim(counts.DGEList)
counts.DGEList$samples$norm.factors
counts.DGEList <- calcNormFactors(counts.DGEList)
counts.DGEList$samples

plotMDS(counts.DGEList)

group <- c(rep("WT",4),rep("Hom",5))
group<-factor(group)
design <- model.matrix(~0+group)
colnames(design)<-levels(group)

dge<-estimateDisp(counts.DGEList,design,robust = TRUE)
#Change the fit to any other available options. The number of DGE does change significantly based on the model fit.
fit <- glmFit(dge,design,robust=TRUE)
gof(fit, plot = T)
#Change contasts based on the comparison you would like to make. This will be the first comparison.
Hom_vs_WT <-makeContrasts(Hom-WT,levels=design)
res <- glmLRT(fit,contrast = Hom_vs_WT)
is.de<-decideTestsDGE(res)
summary(is.de)
volcplot<-plotMD(res,status = is.de,values=c(1,-1),col=c("blue","red"),legend="topright", main="Pmm2: Mutant vs WT 6dpf", bg.pch=1, hl.pch=20)
volcplot

#Set topTags n to the full set to get all gene (statistically significant or otherwise). TopTags uses BH FDR correction by default.
Hom_vs_WT_output <- topTags(res,n=19960)
write.csv(Hom_vs_WT_output,file="Hom_vs_WT_Pmm2_6dpf_2_23_23.csv")

#Heatmap visualziation based on the top DGE from this comparison. Heatmap also does hierarchical clustering of samples based on this set of genes.
logCPM <- cpm(dge, prior.count=2, log=TRUE)
rownames(logCPM)<-rownames(dge$genes)
o<-order(res$table$PValue)
logCPM<-logCPM[o[1:50],]
coolmap(logCPM,margins=c(7,7),lhei=c(1,6),lwid=c(1,3))

