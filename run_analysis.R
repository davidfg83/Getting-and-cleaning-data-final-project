#load scrip that creates data frames containing train and tests data sets
source("create_test_train_frames.R")
#check if plyr package is installed&loaded
if(!require(dplyr)){
        install.packages("dplyr")
        library(dplyr)
}

#1) Merges the training and the test sets to create one 
# data set.
complete_data <- rbind(test_data, train_data)
#add the names of the 561 variables from the features file
# plus the first two columns: subjectid + activity
colnames(complete_data) <- c("subjectid", "activity", read.table("./UCI HAR Dataset/features.txt")[,2])

#2) Extracts only the measurements on the mean and standard 
# deviation for each measurement.
        #subset complete_data with column 1(subject id), 2(activity), and
        #grep function, which returns vector of indices that yield a 
        #match with mean( and std( -parenthesis needed to identify
        #correct variables with certainty, avoiding meanFreq. note
        #that \\ escapes regular meaning of (
mean_std_data <- complete_data[, c(1,2, grep(".*mean\\(.*|.*std\\(.*", colnames(complete_data)))]

#3 Use descriptive activity names to name activities in the data set
        #load activity names from activity_labels
activitylabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
        #check if plyr package is installed (i don't want to load it 
        #due to incompatibilities with dplyr)
if(!("plyr" %in% installed.packages()[,"Package"])){install.packages("plyr")}
        #use mapvalues function from dplyr package to 
        #replace the activity codes [1-6] with descriptive names
mean_std_data$activity <- plyr::mapvalues(mean_std_data$activity, activitylabels[,1], activitylabels[,2])

#4) Appropriately labels the data set with descriptive variable names.
        #variables already named, need formatting
        #lower case
colnames(mean_std_data) <- tolower(colnames(mean_std_data)) 
        #remove parentheses
colnames(mean_std_data) <- sub("\\(\\)", "",colnames(mean_std_data))

#5) From the data set in step 4, creates a second, 
#independent tidy data set with the average of each 
#variable for each activity and each subject.
average_by_activity_subject <- mean_std_data %>% group_by(activity, subjectid) %>% summarize_all(mean)