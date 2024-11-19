
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





# 
# 
# 
# library(googlesheets4)
# library(rsurveycto)
# library(googledrive)
# library(tidyverse)
# library(collapse)
# 
# 
# ids <- 'gage_endline_cr_survey'
# 
# if(file.exists("scto_auth.txt")) {
#   auth <- scto_auth("scto_auth.txt")
# }
# 
# if(file.exists("LATERITE_PRIVATEDONOTSHARE.pem")){
#   private_key <- "LATERITE_PRIVATEDONOTSHARE.pem"
# }
# 
# if(file.exists("shiny-test-442113-e1c012072f54.json")){
#   gs_token <- "shiny-test-442113-e1c012072f54.json"
# } else {gs_token <- Sys.getenv('GSHEET_TOKEN')}
# 
# drive_auth(path = gs_token)
# gs4_auth(path = gs_token)  
# 
# 
# drive_ls()
# 
# df <- scto_read(auth = auth, ids = ids, private_key = private_key)
# 
# x <- qsu(as.numeric(df$cs_crage)) %>% 
#   as.data.frame()
# 
# write_csv(x, "test.csv")
# new_dr <- drive_mkdir("1212", path = as_id("1qNFn3FBrCBIgsYtAHt8t_lJ86iqA3rrq"))
# folder_id <- as.character(new_dr[new_dr$name == "1212"]$id)
# drive_df <- drive_upload("test.csv", path = as_id(folder_id))
# drive_browse(drive_df)
# 
# full_url <- "https://docs.google.com/spreadsheets/d/1Tidd9I47LoqERPTRtRAbfo_dD09YMU6hYxkFM-x3Y7A/edit?pli=1&gid=0#gid=0"
# sheet_id <- "1Tidd9I47LoqERPTRtRAbfo_dD09YMU6hYxkFM-x3Y7A"
# 
# time_now <- format(Sys.time(), "%H_%M")
# sheet_name <- paste0("Data_", time_now)
# 
# write_sheet(x, ss = sheet_id, sheet = sheet_name)
# 
# 
# 
