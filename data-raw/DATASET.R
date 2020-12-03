## code to prepare `DATASET` dataset goes here
library(tidyverse)
library(readxl)

ref_agproducts <- read_excel("ref_agproducts.xlsx")

usethis::use_data(ref_agproducts, overwrite = TRUE)
