
# mocdata

<!-- badges: start -->
<!-- badges: end -->

แพคเกจ mocdata ใช้สำหรับดึงข้อมูลจาก [ข้อมูลเปิดภาครัฐของกระทรวงพาณิชย์](https://data.moc.go.th)

## Installation

download ได้จาก github repo

``` r
remotes::install_github("piyayut-ch/mocdata")
```

## Example

ตัวอย่างการดึงข้อมูลราคาสินค้าเกษตร

``` r
library(mocdata)
## basic example code
price_R11002 <- get_moc_price("R11002")
head(price_R11002)
```

