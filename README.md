# mocdata

<!-- badges: start -->
<!-- badges: end -->

แพคเกจ mocdata ใช้สำหรับดึงข้อมูลราคาสินค้าเกษตรจาก [ข้อมูลเปิดภาครัฐของกระทรวงพาณิชย์](https://data.moc.go.th)
ดูรายละเอียดเพิ่มเติมของ package 
[source code](https://github.com/piyayut-ch/mocdata)
[webpage](https://github.com/piyayut-ch/mocdata)

## Installation

download ได้จาก github repo

``` r
remotes::install_github("piyayut-ch/mocdata")
```

## Example

ตัวอย่างการดึงข้อมูลราคาสินค้าเกษตร

``` r
library(tidyverse)
library(mocdata)

## basic example code
price_R11002 <- get_moc_price("R11002")
head(price_R11002)
```

รายการข้อมูลที่มีสามารถดูได้จาก `ref_price_moc` ตัวอย่างการค้นหาราคาสินค้าข้าว
``` r
ref_price_moc %>%
  filter(commod == "ข้าว") %>%
  head()
```
