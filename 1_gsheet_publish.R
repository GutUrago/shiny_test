
library(googlesheets4)
gs4_auth(path = Sys.getenv('GSHEET_TOKEN'))  #github 

full_url <- "https://docs.google.com/spreadsheets/d/1Tidd9I47LoqERPTRtRAbfo_dD09YMU6hYxkFM-x3Y7A/edit?pli=1&gid=0#gid=0"
sheet_id <- "1Tidd9I47LoqERPTRtRAbfo_dD09YMU6hYxkFM-x3Y7A"

time_now <- format(Sys.time(), "%H_%M")
sheet_name <- paste0("Data_", time_now)

x <- round(rnorm(15, 0, 15), 2)
y <- sample(c("ETH", "RW", "BE"), 15, T)
df <- data.frame(country = y, mean = x)

write_sheet(df, ss = sheet_id, sheet = sheet_name)



