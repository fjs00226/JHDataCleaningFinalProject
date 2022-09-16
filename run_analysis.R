## check if the directory exists
if(!file.exists("./DataCleaningFinalProjectData")){
  dir.create("./DataCleaningFinalProjectData")
}

## down load the file
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url,"./DataCleaningFinalProjectData/zipdata.zip")
## unzip files
unzip(zipfile="./DataCleaningFinalProjectData/zipdata.zip",exdir="./DataCleaningFinalProjectData")

## load data.table package
library(data.table)

## read in all the data
## training data
x_train <- read.table("./DataCleaningFinalProjectData/UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./DataCleaningFinalProjectData/UCI HAR Dataset/train/y_train.txt")
subject_train <-read.table("./DataCleaningFinalProjectData/UCI HAR Dataset/train/subject_train.txt")
## testing data
x_test <- read.table("./DataCleaningFinalProjectData/UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./DataCleaningFinalProjectData/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./DataCleaningFinalProjectData/UCI HAR Dataset/test/subject_test.txt")

## read features
features <- read.table("./DataCleaningFinalProjectData/UCI HAR Dataset/features.txt")
features_v <- features[,2]

## set column names for training and testing x data
colnames(x_train) <- features_v
colnames(x_test) <- features_v

## set column names of y_train, y_test to be "activity_labels"
## set column names of subject_train and subject_test to be "subject_id"
colnames(y_train)<-"activity_labels"
colnames(y_test)<-"activity_labels"
colnames(subject_train)<-"subject_id"
colnames(subject_test)<-"subject_id"

## check if data contains null
length(grep("FALSE",complete.cases(x_train))) ## 0
length(grep("FALSE",complete.cases(y_train)))
length(grep("FALSE",complete.cases(x_test)))
length(grep("FALSE",complete.cases(y_test)))

## check if subject is within 1-30
grep("FALSE",subject_train$subject_id >=1 & subject_train$subject_id <=30) ## integer 0
grep("FALSE",subject_test$subject_id >=1 & subject_test$subject_id <=30) 

## merge x_train, y_train, subject_train to data_train, x_test,y_test,subject_test to data_test 
data_train <-cbind(subject_train, x_train,y_train)
data_test <-cbind(subject_test, x_test, y_test)

## merge data_train and data_test
data_all <- rbind(data_train, data_test)

## extracts only the mean and std of the features
index<-grep("mean|std", features_v)
index <-index+1 ## keep the subject column
index <- c(1,index,563) ## add the subject and y column
data_all_mean_std <-data_all[,index]

## Uses descriptive activity names to name the activities in the data set
## read activity labels
activity_labels <- read.table("./DataCleaningFinalProjectData/UCI HAR Dataset/activity_labels.txt")
colnames(activity_labels) <-c("id","activity_name")
## replace numbers by names of activities
for (id in 1:6){
  data_all_mean_std[data_all_mean_std$activity_labels==id,"activity_labels"]<-gsub(id,activity_labels[id, "activity_name"],data_all_mean_std[data_all_mean_std$activity_labels==id,"activity_labels"])
}

## label data set with descriptive names
## change "activity_labels" to "activity_names"
names(data_all_mean_std)[names(data_all_mean_std) == 'activity_labels'] <- "activity_names"

## creates a second, independent tidy data set with the average of each variable 
## for each activity and each subject
Tidy_data_all <-aggregate(data_all_mean_std,by=list(data_all_mean_std$subject_id,data_all_mean_std$activity_names),mean)
Tidy_data_all <-Tidy_data_all[order(Tidy_data_all$subject_id,Tidy_data_all$activity_names),]
names(Tidy_data_all)[names(Tidy_data_all) == 'Group.2'] <- "activity_names"
## export the data to a csv file
write.csv(Tidy_data_all[,2:82],"./data_all_tidy.csv",row.names = FALSE)

