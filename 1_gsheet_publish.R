
library(googlesheets4)



gs4_auth(path = Sys.getenv('GSHEET_TOKEN'))  #github 

x <- round(rnorm(15, 0, 15), 2)
y <- sample(c("ETH", "RW", "BE"), 15, T)
df <- data.frame(country = y, mean = x)

write_sheet(df, ss = "https://docs.google.com/spreadsheets/d/1Tidd9I47LoqERPTRtRAbfo_dD09YMU6hYxkFM-x3Y7A/edit?pli=1&gid=0#gid=0", sheet = "Data2")



