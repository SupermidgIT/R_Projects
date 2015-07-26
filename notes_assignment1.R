### Assignment 1 Tutorial

dataset_url <- "http://s3.amazonaws.com/practice_assignment/diet_data.zip"
download.file(dataset_url, "diet_data.zip")
unzip("diet_data.zip", exdir = "diet_data")

list.files("diet_data")
files <- list.files("diet_data")
files


andy <- read.csv("diet_data/Andy.csv")
head(andy)

str(andy)
summary(andy)
names(andy)

dim(andy)

length(andy$Day)

### So what if we wanted to create one big data frame with everybody's data in it? We'd do that with rbind and a loop.


dat <- data.frame()

## for Loop that combines rows from all the files
for (i in 1:5) {
  dat <- rbind(dat, read.csv(files_full[i]))
}

### Structure
str(dat)



weightmedian <- function(directory, day) {
  files_list <- list.files(directory, full.names=TRUE)
  dat <- data.frame()
  for (i in 1:5) {
    dat <- rbind(dat, read.csv(files_list[i]))
  }
  dat_subset <- dat[which(dat[, "Day"] == day),]
  median(dat_subset[, "Weight"], na.rm=TRUE)
  
}