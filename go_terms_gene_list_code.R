library(dplyr)

### For making list of dataframes for Go categories

my_go_files <- list.files(pattern = "\\.csv$")

go_list <- lapply(my_go_files, read.csv)

# importing dataframes with DE genes- Pmm2 set. 
### Pmm2 is done for the re-analyzed dataset.
pmm2_de<-as.data.frame(pmm2_DE_all_list)

# merging the GO term gene list with the DE gene list. Which genes in each GO category are DE in each DE list?

# for Pmm2 set. For each GO category; make columns with logFC and FDR values from the DE list tables

go1_pmm2<-inner_join(go_list[[1]], pmm2_de, by="Gene_name")
write.csv(go1_pmm2,file="go1_pmm2.csv")

go2_pmm2<-full_join(go_list[[2]], pmm2_de, by="Gene_name")
write.csv(go2_pmm2,file="go2_pmm2.csv")

go3_pmm2<-full_join(go_list[[3]], pmm2_de, by="Gene_name")
write.csv(go3_pmm2,file="go3_pmm2.csv")

go4_pmm2<-full_join(go_list[[4]], pmm2_de, by="Gene_name")
write.csv(go4_pmm2,file="go4_pmm2.csv")

go5_pmm2<-full_join(go_list[[5]], pmm2_de, by="Gene_name")
write.csv(go5_pmm2,file="go5_pmm2.csv")

go6_pmm2<-full_join(go_list[[6]], pmm2_de, by="Gene_name")
write.csv(go6_pmm2,file="go6_pmm2.csv")

go7_pmm2<-full_join(go_list[[7]], pmm2_de, by="Gene_name")
write.csv(go7_pmm2,file="go7_pmm2.csv")

go8_pmm2<-full_join(go_list[[8]], pmm2_de, by="Gene_name")
write.csv(go8_pmm2,file="go8_pmm2.csv")

go9_pmm2<-full_join(go_list[[9]], pmm2_de, by="Gene_name")
write.csv(go9_pmm2,file="go9_pmm2.csv")

go10_pmm2<-full_join(go_list[[10]], pmm2_de, by="Gene_name")
write.csv(go10_pmm2,file="go10_pmm2.csv")

go11_pmm2<-full_join(go_list[[11]], pmm2_de, by="Gene_name")
write.csv(go11_pmm2,file="go11_pmm2.csv")

go12_pmm2<-full_join(go_list[[12]], pmm2_de, by="Gene_name")
write.csv(go12_pmm2,file="go12_pmm2.csv")

go13_pmm2<-full_join(go_list[[13]], pmm2_de, by="Gene_name")
write.csv(go13_pmm2,file="go13_pmm2.csv")

go14_pmm2<-full_join(go_list[[14]], pmm2_de, by="Gene_name")
write.csv(go14_pmm2,file="go14_pmm2.csv")

go15_pmm2<-full_join(go_list[[15]], pmm2_de, by="Gene_name")
write.csv(go15_pmm2,file="go15_pmm2.csv")

go16_pmm2<-full_join(go_list[[16]], pmm2_de, by="Gene_name")
write.csv(go16_pmm2,file="go16_pmm2.csv")

go17_pmm2<-full_join(go_list[[17]], pmm2_de, by="Gene_name")
write.csv(go17_pmm2,file="go17_pmm2.csv")
