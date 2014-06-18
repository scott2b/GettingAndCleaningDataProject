# Executing run_analysis.R
========================

Set the working directory to the path where run_analysis.R is located
(Hint: on Unix-like systems, use pwd command to get the path for the current location)

  > setwd(<location of run_analysis.R>)

Source the script (Note - the script will execute automatically upon sourcing):

  > source("run_analysis.R")

You should see output like the following:

Downloading the data file: http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
trying URL 'http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip'
Content type 'application/zip' length 62556944 bytes (59.7 Mb)
opened URL
==================================================
downloaded 59.7 Mb

Unzipping data archive: HAR_Dataset.zip
Loading raw data
test/X_test.txt
test/y_test.txt
test/subject_test.txt
train/X_train.txt
train/y_train.txt
train/subject_train.txt
activity_labels.txt
features.txt
Re-organizing data
Writing data file: accelerometer_data.txt
> 


# Loading the Data
================

The above script writes the transformed data to the file: accelerometer_data.txt

To load the data:

  > mydata <- read.table("accelerometer_data.txt")

The resulting data will look like the following:

  > head(mydata)

> head(mydata)
            Activity Subject tBodyAcc.mean...X tBodyAcc.mean...Y tBodyAcc.mean...Z tBodyAcc.std...X tBodyAcc.std...Y
1             LAYING       1         0.2836589       -0.01689542        -0.1103032       -0.2965387       0.16421388
2            SITTING       1         0.2785820       -0.01483995        -0.1114031       -0.4408300      -0.07882674
3           STANDING       1         0.2778423       -0.01728503        -0.1077418       -0.2940985       0.07674840
4            WALKING       1         0.2773308       -0.01738382        -0.1111481       -0.2837403       0.11446134
5 WALKING_DOWNSTAIRS       1         0.2755675       -0.01717678        -0.1126749       -0.3603567      -0.06991407
6   WALKING_UPSTAIRS       1         0.2764266       -0.01859492 

... and so on ...

Data includes the aggregate means of accelerometer data points by activity type (WALKING, STANDING, etc.) and subject (ie. user). For more information, see the Codebook.md file.
