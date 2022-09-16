---
title: "Code book"
author: "Ji"
date: "2022-09-16"
output: html_document
---
The original data is downloaded from:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

## Feature Selection

The first feature is one of the 5 activity names listed below:
LAYING
SITTING
STANDING
WALKING
WALKING_DOWNSTAIRS
WALKING_UPSTAIRS

The second feature is the subject id from 1-30.

The 3-81 features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 
mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

A complete list of variables of each feature vector is listed below:

"1" "tBodyAcc-mean()-X"<br>
"2" "tBodyAcc-mean()-Y"<br>
"3" "tBodyAcc-mean()-Z"<br>
"4" "tBodyAcc-std()-X"<br>
"5" "tBodyAcc-std()-Y"<br>
"6" "tBodyAcc-std()-Z"<br>
"7" "tGravityAcc-mean()-X"<br>
"8" "tGravityAcc-mean()-Y"<br>
"9" "tGravityAcc-mean()-Z"<br>
"10" "tGravityAcc-std()-X"<br>
"11" "tGravityAcc-std()-Y"<br>
"12" "tGravityAcc-std()-Z"<br>
"13" "tBodyAccJerk-mean()-X"<br>
"14" "tBodyAccJerk-mean()-Y"<br>
"15" "tBodyAccJerk-mean()-Z"<br>
"16" "tBodyAccJerk-std()-X"<br>
"17" "tBodyAccJerk-std()-Y"<br>
"18" "tBodyAccJerk-std()-Z"<br>
"19" "tBodyGyro-mean()-X"<br>
"20" "tBodyGyro-mean()-Y"<br>
"21" "tBodyGyro-mean()-Z"<br>
"22" "tBodyGyro-std()-X"<br>
"23" "tBodyGyro-std()-Y"<br>
"24" "tBodyGyro-std()-Z"<br>
"25" "tBodyGyroJerk-mean()-X"<br>
"26" "tBodyGyroJerk-mean()-Y"<br>
"27" "tBodyGyroJerk-mean()-Z"<br>
"28" "tBodyGyroJerk-std()-X"<br>
"29" "tBodyGyroJerk-std()-Y"<br>
"30" "tBodyGyroJerk-std()-Z"<br>
"31" "tBodyAccMag-mean()"<br>
"32" "tBodyAccMag-std()"<br>
"33" "tGravityAccMag-mean()"<br>
"34" "tGravityAccMag-std()"<br>
"35" "tBodyAccJerkMag-mean()"<br>
"36" "tBodyAccJerkMag-std()"<br>
"37" "tBodyGyroMag-mean()"<br>
"38" "tBodyGyroMag-std()"<br>
"39" "tBodyGyroJerkMag-mean()"<br>
"40" "tBodyGyroJerkMag-std()"<br>
"41" "fBodyAcc-mean()-X"<br>
"42" "fBodyAcc-mean()-Y"<br>
"43" "fBodyAcc-mean()-Z"<br>
"44" "fBodyAcc-std()-X"<br>
"45" "fBodyAcc-std()-Y"<br>
"46" "fBodyAcc-std()-Z"<br>
"47" "fBodyAcc-meanFreq()-X"<br>
"48" "fBodyAcc-meanFreq()-Y"<br>
"49" "fBodyAcc-meanFreq()-Z"<br>
"50" "fBodyAccJerk-mean()-X"<br>
"51" "fBodyAccJerk-mean()-Y"<br>
"52" "fBodyAccJerk-mean()-Z"<br>
"53" "fBodyAccJerk-std()-X"<br>
"54" "fBodyAccJerk-std()-Y"<br>
"55" "fBodyAccJerk-std()-Z"<br>
"56" "fBodyAccJerk-meanFreq()-X"<br>
"57" "fBodyAccJerk-meanFreq()-Y"<br>
"58" "fBodyAccJerk-meanFreq()-Z"<br>
"59" "fBodyGyro-mean()-X"<br>
"60" "fBodyGyro-mean()-Y"<br>
"61" "fBodyGyro-mean()-Z"<br>
"62" "fBodyGyro-std()-X"<br>
"63" "fBodyGyro-std()-Y"<br>
"64" "fBodyGyro-std()-Z"<br>
"65" "fBodyGyro-meanFreq()-X"<br>
"66" "fBodyGyro-meanFreq()-Y"<br>
"67" "fBodyGyro-meanFreq()-Z"<br>
"68" "fBodyAccMag-mean()"<br>
"69" "fBodyAccMag-std()"<br>
"70" "fBodyAccMag-meanFreq()"<br>
"71" "fBodyBodyAccJerkMag-mean()"<br>
"72" "fBodyBodyAccJerkMag-std()"<br>
"73" "fBodyBodyAccJerkMag-meanFreq()"<br>
"74" "fBodyBodyGyroMag-mean()"<br>
"75" "fBodyBodyGyroMag-std()"<br>
"76" "fBodyBodyGyroMag-meanFreq()"<br>
"77" "fBodyBodyGyroJerkMag-mean()"<br>
"78" "fBodyBodyGyroJerkMag-std()"<br>
"79" "fBodyBodyGyroJerkMag-meanFreq()"<br>

The observations has been grouped by the activity_names and subject_id. The numeric data in the table is the mean of each feature. 