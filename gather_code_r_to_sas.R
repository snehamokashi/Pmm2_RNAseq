
norm_data<-as.data.frame(norm_counts_forSAS)
library(tidyr)
library(dplyr)
norm_data_df<-as.data.frame(norm_data)
norm_data_sas_pmm2<-gather(norm_data_df,key="Sample",value="norm_counts", 2:16)
View(norm_data_sas_pmm2)
write.csv(norm_data_sas_pmm2,file="norm_counts_pmm2_sas_2_24_23.csv")
