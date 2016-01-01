
setwd("C:/Users/Jay/Desktop/hospital-data")
list.files()

best <- function(state, outcome) {
        ## 1) Read outcome data
        ## 2) Check that state and outcome are valid
        ## 3) Return hospital name in that state with lowest 30-day death
        ##    rate
        
        # read the data file
        directory <- "./outcome-of-care-measures.csv"
        
        data <- read.csv(directory, colClasses="character")
        
        # change data type from character to numeric
        data[, 11] <- as.numeric(data[, 11]) # heart attack
        data[, 17] <- as.numeric(data[, 17]) # heart failure
        data[, 23] <- as.numeric(data[, 23]) # pneumonia
        
        #set vars
        
        valid_outcomes <- c("heart attack", "heart failure", "pneumonia")
        
}