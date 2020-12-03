#' @title get_moc_price
#' @description get a price data from moc opendata
#' @param product_id a product id
#' @param from_date starting date , Default: '2020-01-01'
#' @param to_date end date, Default: Sys.Date()
#' @param meta a , Default: FALSE
#' @return a price data in data.frame
#' @details 
#' @examples 
#' \dontrun{
#' if(interactive()){
# '  price_R11002 <- get_moc_price("R11002")
#'  }
#' }
#' @rdname get_moc_price
#' @export 
get_moc_price <- function(product_id, 
                          from_date = "2020-01-01", 
                          to_date = Sys.Date(),
                          meta = FALSE
                         ) {
  # initiate get object
  res <- httr::GET(
    "https://dataapi.moc.go.th/gis-product-prices?",
    query = list(
      product_id = product_id,
      from_date = from_date,
      to_date = to_date
    )
  )
  
  # transform from json to list
  res <- res %>%
    httr::content("text") %>%
    jsonlite::fromJSON()
  
  # create data frame
  data <- res$price_list %>%
    dplyr::mutate(
      product_id = res$product_id,
      date = as.Date(date)
    ) %>%
    dplyr::select(date, product_id, everything())
  
  # retrive metadata
  if(meta == TRUE) {
    meta <- res
    meta$price_list <- NULL
    meta$price_min_avg <- NULL
    meta$price_max_avg <- NULL
    attr(data, "meta") <- meta
  }
  
  return(data)
}