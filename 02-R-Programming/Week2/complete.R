complete <- function(directory, id = 1:332) {
  directory <- "specdata"
  ## 'directory' is a character vector of length 1 indicating
  ## the location of the CSV files
  
  ## 'id' is an integer vector indicating the monitor ID numbers
  ## to be used
  
  ## Return a data frame of the form:
  ## id nobs
  ## 1  117
  ## 2  1041
  ## ...
  ## where 'id' is the monitor ID number and 'nobs' is the
  ## number of complete cases
  counter = c()
  old.dir <- getwd()
  ##setwd(directory)
  ##setwd("specdata")
  all_files <- as.character( list.files(directory) )
  file_paths <- paste(directory, "/", all_files, sep="" )
  count <- c()
  for(i in id){
    current_file <- read.csv(file_paths[i])
    head(current_file)
    counter <- c(counter, nrow(na.omit(current_file)))
  }
  datf <- data.frame(id = id, nobs = counter)
  print(datf)
  setwd(old.dir)
}