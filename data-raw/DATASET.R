## code to prepare `DATASET` dataset goes here
library(tidyverse)
library(readxl)

ref_agproducts <- read_excel("ref_agproducts.xlsx")
ref_price_moc <- read_excel("ref_price_moc.xlsx")

usethis::use_data(ref_price_moc, overwrite = TRUE)
