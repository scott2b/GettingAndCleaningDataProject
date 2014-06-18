# Summary

Data includes the aggregate means of accelerometer data points by activity type (WALKING, STANDING, etc.) and subject (ie. user).

# Data transformations

The following transformations are performed on the raw data set:

 * Testing and training data (subjects, activity IDs, and accelerometer data) are combined into a single data set
 * Activity IDs are converted to Activity name labels
 * The data set is reduced to columns that contain mean or std in their name
 * Data is aggregated by Activity and Subject, and reduced to a single mean data point for each feature.

    
# Data details

## Activity types

 * WALKING
 * WALKING_UPSTAIRS
 * WALKING_DOWNSTAIRS
 * SITTING
 * STANDING
 * LAYING

## Features (i.e. accelerometer data points)

Features are accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ time domain signals captured at a 50Hz rate and filtered.

Fast Fourier Transform (FFT) was applied to some signals to produce frequency-domain data.

 * 't' prefix indicates time domain (seconds)
 * 'f' prefix indicates frequency domain (Hz)

The following features were captured. For more details on specific features, see the features_info.txt file in the raw data archive.

 * tBodyAcc.mean...X
 * tBodyAcc.mean...Y
 * tBodyAcc.mean...Z
 * tBodyAcc.std...X
 * tBodyAcc.std...Y
 * tBodyAcc.correlation...Y.Z
 * tGravityAcc.mean...X                
 * tGravityAcc.mean...Y
 * tGravityAcc.mean...Z
 * tGravityAcc.std...X
 * tGravityAcc.std...Y
 * tGravityAcc.correlation...Y.Z
 * tBodyAccJerk.mean...X
 * tBodyAccJerk.mean...Y
 * tBodyAccJerk.mean...Z
 * tBodyAccJerk.std...X
 * tBodyAccJerk.std...Y
 * tBodyAccJerk.correlation...Y.Z
 * tBodyGyro.mean...X
 * tBodyGyro.mean...Y
 * tBodyGyro.mean...Z
 * tBodyGyro.std...X                   
 * tBodyGyro.std...Y
 * tBodyGyro.correlation...Y.Z
 * tBodyGyroJerk.mean...X              
 * tBodyGyroJerk.mean...Y
 * tBodyGyroJerk.mean...Z
 * tBodyGyroJerk.std...X               
 * tBodyGyroJerk.std...Y
 * tBodyGyroJerk.correlation...Y.Z
 * tBodyAccMag.mean..
 * tBodyAccMag.arCoeff..4
 * tGravityAccMag.mean..
 * tGravityAccMag.arCoeff..4           
 * tBodyAccJerkMag.mean..
 * tBodyAccJerkMag.arCoeff..4
 * tBodyGyroMag.mean..
 * tBodyGyroMag.arCoeff..4
 * tBodyGyroJerkMag.mean..
 * tBodyGyroJerkMag.arCoeff..4
 * fBodyAcc.mean...X
 * fBodyAcc.mean...Y
 * fBodyAcc.mean...Z
 * fBodyAcc.std...X
 * fBodyAcc.std...Y
 * fBodyAcc.maxInds.Z
 * fBodyAcc.meanFreq...X
 * fBodyAcc.meanFreq...Y
 * fBodyAcc.bandsEnergy...25.48.2
 * fBodyAccJerk.mean...X
 * fBodyAccJerk.mean...Y
 * fBodyAccJerk.mean...Z               
 * fBodyAccJerk.std...X
 * fBodyAccJerk.std...Y
 * fBodyAccJerk.maxInds.Z              
 * fBodyAccJerk.meanFreq...X
 * fBodyAccJerk.meanFreq...Y
 * fBodyAccJerk.bandsEnergy...25.48.2  
 * fBodyGyro.mean...X
 * fBodyGyro.mean...Y
 * fBodyGyro.mean...Z                  
 * fBodyGyro.std...X
 * fBodyGyro.std...Y
 * fBodyGyro.maxInds.Z                 
 * fBodyGyro.meanFreq...X
 * fBodyGyro.meanFreq...Y
 * fBodyGyro.bandsEnergy...25.48.2     
 * fBodyAccMag.mean..
 * fBodyAccMag.maxInds
 * fBodyAccMag.kurtosis..              
 * fBodyBodyAccJerkMag.mean..
 * fBodyBodyAccJerkMag.maxInds
 * fBodyBodyAccJerkMag.kurtosis..      
 * fBodyBodyGyroMag.mean..
 * fBodyBodyGyroMag.maxInds
 * fBodyBodyGyroMag.kurtosis..         
 * fBodyBodyGyroJerkMag.mean..
 * fBodyBodyGyroJerkMag.maxInds
 * fBodyBodyGyroJerkMag.kurtosis..     
 * angle.tBodyAccMean.gravity.
 * angle.tBodyAccJerkMean..gravityMean.
 * angle.tBodyGyroMean.gravityMean.    
 * angle.tBodyGyroJerkMean.gravityMean.
 * angle.X.gravityMean.
 * angle.Y.gravityMean. 
