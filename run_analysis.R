###
#
# Script to acquire, transform, and write data from the UCI HAR Dataset
#
# For completion of requirements for:
#   Coursera, Getting and Cleaning Data, Data Science Signature Track
#
# By Scott B. Bradley, June 18 2014
#
# Script is executed upon sourcing, and directly acquires the source data
# by download. Transformed data is written to accelerometer_data.txt.
#
# For details of data transforms, see the README and Codebook files.
# 
###

FILE_URL <- "http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
ZIP_DEST <- "HAR_Dataset.zip"
DIR <- "UCI HAR Dataset"
OUTFILE <- "accelerometer_data.txt"

catln <- function(s) {
    cat(paste(s, "\n", sep=""))
}

## Get the data archive

getHARData <- function() {
    catln(paste("Downloading the data file:", FILE_URL))
    download.file(FILE_URL, ZIP_DEST)
    catln(paste("Unzipping data archive:", ZIP_DEST))
    unzip(ZIP_DEST)
}

## Load the raw data

loadHARData <- function() {
    catln("Loading raw data")

    fn <- "test/X_test.txt"
    catln(fn)
    x_test <- read.table(paste(DIR, fn, sep="/"), sep="")

    fn <- "test/y_test.txt"
    catln(fn)
    y_test <- read.table(paste(DIR, fn, sep="/"))

    fn <- "test/subject_test.txt"
    catln(fn)
    subject_test <- read.table(paste(DIR, fn, sep="/"))

    fn <- "train/X_train.txt"
    catln(fn)
    x_train <- read.table(paste(DIR, fn, sep="/"), sep="")

    fn <- "train/y_train.txt"
    catln(fn)
    y_train <- read.table(paste(DIR, fn, sep="/"))

    fn <- "train/subject_train.txt"
    catln(fn)
    subject_train <- read.table(paste(DIR, fn, sep="/"))

    fn <- "activity_labels.txt"
    catln(fn)
    activities <- read.table(paste(DIR, fn, sep="/"))

    fn <- "features.txt"
    catln(fn)
    features <- read.table(paste(DIR, fn, sep="/"))
}

## Data manipulations

transformHARData <- function() {
    catln("Re-organizing data")
    data <- rbind(cbind(subject_train, y_train, x_train), cbind(subject_test, y_test, x_test))
    colnames(activities) <- c("ActivityID", "Activity")
    colnames(data) <- c(c("ActivityID", "Subject"), as.vector(features$V2))
    data <- merge(activities, data, by.x=1, by.y=1)
    
    data <- data[c(2, grep("mean|Mean|std", names))]
    data <- aggregate(data[3:87], by=list(data$Activity, data$Subject), FUN=mean)
    colnames(data) <- c("Activity", "Subject", colnames(data)[3:87])
}

## Write transformed data to file

writeHARData <- function() {
    catln(paste("Writing data file:", OUTFILE))
    write.table(data, file=OUTFILE)
}

getHARData()
loadHARData()
transformHARData()
writeHARData()
