# JHDataCleaningFinalProject
This repository is for the final project of the Coursera course-Getting and Cleaning Data included in the Data Science Specialization by Johns Hopkins University.

The original data is downloaded from:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Several data cleaning steps has been done:

1. Merge the x, y and subject for the training and testing data. Check to see if the data is complete.
2. Merges the training and the test sets to create one data set.
3. Extracts only the measurements on the mean and standard deviation for each measurement. 
4. Uses descriptive activity names to name the activities in the data set.
5. Appropriately labels the data set with descriptive variable names. 
6. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject. The name of the new data set is "data_all_tidy.csv"
