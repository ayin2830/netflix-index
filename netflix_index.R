install.packages("dplyr")
library("dplyr")

install.packages("tidyr")
library("tidyr")

install.packages("lubridate")
library("lubridate")

install.packages('ggplot2')
library("ggplot2")

US_price <- 13.99

netflix_index <- function(x) {
  return((x-13.99)/13.99)
}

nf_index = (combined_ds$Cpm_standard-US_price)/US_price
View(nf_index)

one_year_us =  (13.99 * 12)/(combined_ds$Cpm_standard)

combined_ds <- combined_ds %>% 
  mutate(netflix_index = nf_index*100,for_oneyear_usd = one_year_us)



write.csv(combined_ds,"/Users/yinta/Desktop/netflix_index_upd.csv", row.names = FALSE)


 
