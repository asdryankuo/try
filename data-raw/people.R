## code to prepare `people` dataset goes here

usethis::use_data(people, overwrite = TRUE)

library(data.table)
library(dplyr)

people <- fread("./data-raw/people.csv")
people <- people %>% filter(age > 20)

usethis::use_data(people, overwrite = TRUE)
