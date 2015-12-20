
pollutantmean <- function(directory, pollutant, id = 1:332) {
  directory <- paste(directory, "/", sep = "")
  all_files <- as.character( list.files(directory) )
  file_paths <- paste(directory, all_files, sep="" )
  mean_vector <- c()

  for(i in id) {
    current_file <- read.csv(file_paths[i])
    head(current_file)
    pollutant
    na_removed <- current_file[!is.na(current_file[, pollutant]), pollutant]
    mean_vector <- c(mean_vector, na_removed)
  }
  result <- mean(mean_vector)
  return(result)
}