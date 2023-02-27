library(dplyr)

### For making list of dataframes for Go categories

my_go_files <- list.files(pattern = "\\.csv$")

go_list <- lapply(my_go_files, read.csv)

# importing dataframes with DE genes- Pmm2 set. Similarly import for Stt set
### Pmm2 is done for the re-analyzed dataset. Stt is remaining
pmm2_de<-as.data.frame(pmm2_DE_all_list)

stt_d_wt_5 <- as.data.frame(read_excel("C:/Users/smokashi/Desktop/Pmm2_RNAseq/Stt_DE_gene_list.xlsx", sheet = "stt_d_wt__5"))
stt_d_wt_6<-as.data.frame(read_excel("C:/Users/smokashi/Desktop/Pmm2_RNAseq/Stt_DE_gene_list.xlsx", sheet = "stt_d_wt_6"))
stt_d_a_5<-as.data.frame(read_excel("C:/Users/smokashi/Desktop/Pmm2_RNAseq/Stt_DE_gene_list.xlsx", sheet = "stt_d_a_5"))
stt_d_a_6<-as.data.frame(read_excel("C:/Users/smokashi/Desktop/Pmm2_RNAseq/Stt_DE_gene_list.xlsx", sheet = "stt_d_a_6"))
stt_d_b_5<-as.data.frame(read_excel("C:/Users/smokashi/Desktop/Pmm2_RNAseq/Stt_DE_gene_list.xlsx", sheet = "stt_d_b_5"))
stt_d_b_6<-as.data.frame(read_excel("C:/Users/smokashi/Desktop/Pmm2_RNAseq/Stt_DE_gene_list.xlsx", sheet = "stt_d_b_6"))

## the singles stt had very few DE genes. 

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

###full join for Stt set

go1_stt_1<-full_join(go_list[[1]],stt_d_wt_5 , by="Gene_name")
go1_stt_2<-full_join(go1_stt_1, stt_d_wt_6, by="Gene_name")
go1_stt_3<-full_join(go1_stt_2, stt_d_a_5, by="Gene_name")
go1_stt_4<-full_join(go1_stt_3, stt_d_a_6, by="Gene_name")
go1_stt_5<-full_join(go1_stt_4, stt_d_b_5, by="Gene_name")
go1_stt_6<-full_join(go1_stt_5, stt_d_b_6, by="Gene_name")
go1_stt<-go1_stt_6
write.csv(go1_stt,file="go1_stt.csv")

go2_stt_1<-full_join(go_list[[2]],stt_d_wt_5 , by="Gene_name")
go2_stt_2<-full_join(go2_stt_1, stt_d_wt_6, by="Gene_name")
go2_stt_3<-full_join(go2_stt_2, stt_d_a_5, by="Gene_name")
go2_stt_4<-full_join(go2_stt_3, stt_d_a_6, by="Gene_name")
go2_stt_5<-full_join(go2_stt_4, stt_d_b_5, by="Gene_name")
go2_stt_6<-full_join(go2_stt_5, stt_d_b_6, by="Gene_name")
go2_stt<-go2_stt_6
write.csv(go2_stt,file="go2_stt.csv")

go3_stt_1<-full_join(go_list[[3]],stt_d_wt_5 , by="Gene_name")
go3_stt_2<-full_join(go3_stt_1, stt_d_wt_6, by="Gene_name")
go3_stt_3<-full_join(go3_stt_2, stt_d_a_5, by="Gene_name")
go3_stt_4<-full_join(go3_stt_3, stt_d_a_6, by="Gene_name")
go3_stt_5<-full_join(go3_stt_4, stt_d_b_5, by="Gene_name")
go3_stt_6<-full_join(go3_stt_5, stt_d_b_6, by="Gene_name")
go3_stt<-go3_stt_6
write.csv(go3_stt,file="go3_stt.csv")

go4_stt_1<-full_join(go_list[[4]],stt_d_wt_5 , by="Gene_name")
go4_stt_2<-full_join(go4_stt_1, stt_d_wt_6, by="Gene_name")
go4_stt_3<-full_join(go4_stt_2, stt_d_a_5, by="Gene_name")
go4_stt_4<-full_join(go4_stt_3, stt_d_a_6, by="Gene_name")
go4_stt_5<-full_join(go4_stt_4, stt_d_b_5, by="Gene_name")
go4_stt_6<-full_join(go4_stt_5, stt_d_b_6, by="Gene_name")
go4_stt<-go4_stt_6
write.csv(go4_stt,file="go4_stt.csv")

go5_stt_1<-full_join(go_list[[5]],stt_d_wt_5 , by="Gene_name")
go5_stt_2<-full_join(go5_stt_1, stt_d_wt_6, by="Gene_name")
go5_stt_3<-full_join(go5_stt_2, stt_d_a_5, by="Gene_name")
go5_stt_4<-full_join(go5_stt_3, stt_d_a_6, by="Gene_name")
go5_stt_5<-full_join(go5_stt_4, stt_d_b_5, by="Gene_name")
go5_stt_6<-full_join(go5_stt_5, stt_d_b_6, by="Gene_name")
go5_stt<-go5_stt_6
write.csv(go5_stt,file="go5_stt.csv")

go6_stt_1<-full_join(go_list[[6]],stt_d_wt_5 , by="Gene_name")
go6_stt_2<-full_join(go6_stt_1, stt_d_wt_6, by="Gene_name")
go6_stt_3<-full_join(go6_stt_2, stt_d_a_5, by="Gene_name")
go6_stt_4<-full_join(go6_stt_3, stt_d_a_6, by="Gene_name")
go6_stt_5<-full_join(go6_stt_4, stt_d_b_5, by="Gene_name")
go6_stt_6<-full_join(go6_stt_5, stt_d_b_6, by="Gene_name")
go6_stt<-go6_stt_6
write.csv(go6_stt,file="go6_stt.csv")

go7_stt_1<-full_join(go_list[[7]],stt_d_wt_5 , by="Gene_name")
go7_stt_2<-full_join(go7_stt_1, stt_d_wt_6, by="Gene_name")
go7_stt_3<-full_join(go7_stt_2, stt_d_a_5, by="Gene_name")
go7_stt_4<-full_join(go7_stt_3, stt_d_a_6, by="Gene_name")
go7_stt_5<-full_join(go7_stt_4, stt_d_b_5, by="Gene_name")
go7_stt_6<-full_join(go7_stt_5, stt_d_b_6, by="Gene_name")
go7_stt<-go7_stt_6
write.csv(go7_stt,file="go7_stt.csv")

go8_stt_1<-full_join(go_list[[8]],stt_d_wt_5 , by="Gene_name")
go8_stt_2<-full_join(go8_stt_1, stt_d_wt_6, by="Gene_name")
go8_stt_3<-full_join(go8_stt_2, stt_d_a_5, by="Gene_name")
go8_stt_4<-full_join(go8_stt_3, stt_d_a_6, by="Gene_name")
go8_stt_5<-full_join(go8_stt_4, stt_d_b_5, by="Gene_name")
go8_stt_6<-full_join(go8_stt_5, stt_d_b_6, by="Gene_name")
go8_stt<-go8_stt_6
write.csv(go8_stt,file="go8_stt.csv")

go9_stt_1<-full_join(go_list[[9]],stt_d_wt_5 , by="Gene_name")
go9_stt_2<-full_join(go9_stt_1, stt_d_wt_6, by="Gene_name")
go9_stt_3<-full_join(go9_stt_2, stt_d_a_5, by="Gene_name")
go9_stt_4<-full_join(go9_stt_3, stt_d_a_6, by="Gene_name")
go9_stt_5<-full_join(go9_stt_4, stt_d_b_5, by="Gene_name")
go9_stt_6<-full_join(go9_stt_5, stt_d_b_6, by="Gene_name")
go9_stt<-go9_stt_6
write.csv(go9_stt,file="go9_stt.csv")

go10_stt_1<-full_join(go_list[[10]],stt_d_wt_5 , by="Gene_name")
go10_stt_2<-full_join(go10_stt_1, stt_d_wt_6, by="Gene_name")
go10_stt_3<-full_join(go10_stt_2, stt_d_a_5, by="Gene_name")
go10_stt_4<-full_join(go10_stt_3, stt_d_a_6, by="Gene_name")
go10_stt_5<-full_join(go10_stt_4, stt_d_b_5, by="Gene_name")
go10_stt_6<-full_join(go10_stt_5, stt_d_b_6, by="Gene_name")
go10_stt<-go10_stt_6
write.csv(go10_stt,file="go10_stt.csv")

go11_stt_1<-full_join(go_list[[11]],stt_d_wt_5 , by="Gene_name")
go11_stt_2<-full_join(go11_stt_1, stt_d_wt_6, by="Gene_name")
go11_stt_3<-full_join(go11_stt_2, stt_d_a_5, by="Gene_name")
go11_stt_4<-full_join(go11_stt_3, stt_d_a_6, by="Gene_name")
go11_stt_5<-full_join(go11_stt_4, stt_d_b_5, by="Gene_name")
go11_stt_6<-full_join(go11_stt_5, stt_d_b_6, by="Gene_name")
go11_stt<-go11_stt_6
write.csv(go11_stt,file="go11_stt.csv")

go12_stt_1<-full_join(go_list[[12]],stt_d_wt_5 , by="Gene_name")
go12_stt_2<-full_join(go12_stt_1, stt_d_wt_6, by="Gene_name")
go12_stt_3<-full_join(go12_stt_2, stt_d_a_5, by="Gene_name")
go12_stt_4<-full_join(go12_stt_3, stt_d_a_6, by="Gene_name")
go12_stt_5<-full_join(go12_stt_4, stt_d_b_5, by="Gene_name")
go12_stt_6<-full_join(go12_stt_5, stt_d_b_6, by="Gene_name")
go12_stt<-go12_stt_6
write.csv(go12_stt,file="go12_stt.csv")

go13_stt_1<-full_join(go_list[[13]],stt_d_wt_5 , by="Gene_name")
go13_stt_2<-full_join(go13_stt_1, stt_d_wt_6, by="Gene_name")
go13_stt_3<-full_join(go13_stt_2, stt_d_a_5, by="Gene_name")
go13_stt_4<-full_join(go13_stt_3, stt_d_a_6, by="Gene_name")
go13_stt_5<-full_join(go13_stt_4, stt_d_b_5, by="Gene_name")
go13_stt_6<-full_join(go13_stt_5, stt_d_b_6, by="Gene_name")
go13_stt<-go13_stt_6
write.csv(go13_stt,file="go13_stt.csv")

go14_stt_1<-full_join(go_list[[14]],stt_d_wt_5 , by="Gene_name")
go14_stt_2<-full_join(go14_stt_1, stt_d_wt_6, by="Gene_name")
go14_stt_3<-full_join(go14_stt_2, stt_d_a_5, by="Gene_name")
go14_stt_4<-full_join(go14_stt_3, stt_d_a_6, by="Gene_name")
go14_stt_5<-full_join(go14_stt_4, stt_d_b_5, by="Gene_name")
go14_stt_6<-full_join(go14_stt_5, stt_d_b_6, by="Gene_name")
go14_stt<-go14_stt_6
write.csv(go14_stt,file="go14_stt.csv")

go15_stt_1<-full_join(go_list[[15]],stt_d_wt_5 , by="Gene_name")
go15_stt_2<-full_join(go15_stt_1, stt_d_wt_6, by="Gene_name")
go15_stt_3<-full_join(go15_stt_2, stt_d_a_5, by="Gene_name")
go15_stt_4<-full_join(go15_stt_3, stt_d_a_6, by="Gene_name")
go15_stt_5<-full_join(go15_stt_4, stt_d_b_5, by="Gene_name")
go15_stt_6<-full_join(go15_stt_5, stt_d_b_6, by="Gene_name")
go15_stt<-go15_stt_6
write.csv(go15_stt,file="go15_stt.csv")





