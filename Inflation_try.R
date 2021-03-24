library("rvest")
url <- "https://www.usinflationcalculator.com/inflation/consumer-price-index-and-annual-percent-changes-from-1913-to-2008/"
inflation_source <- url %>%
  html() %>%
  html_nodes(xpath='//*[@id="post-17"]/div/div[1]/table') %>%
  html_table()
inflation_source <- inflation_source[[1]]
head(inflation_source)
