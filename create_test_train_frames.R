#This script creates 2 dataframes (one each for test and training)
#Scrip reads X_test.txt (X_train.txt) into a dataframe, 
#adds ID of subjects read from subject_test.txt (subject_train.txt) 
# and adds test labels read from y_text.txt (y_train.txt)

#check if data is downloaded; otherwise run Retrieve_data.R
if(!file.exists("./UCI HAR Dataset")){
        source("Retrieve_data.R")
}

#create TEST data frame
#read main data
test_data <- read.table("./UCI HAR Dataset/test/X_test.txt")
#read ID of subject 
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
#read labels of activity [numbered 1 to 6]
test_labels <- read.table("./UCI HAR Dataset/test/y_test.txt")
#add ID and labels to main data
test_data <- cbind(test_subject, test_labels, test_data)

#create TRAIN data frame
#read main data
train_data <- read.table("./UCI HAR Dataset/train/X_train.txt")
#read ID of subject 
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
#read labels of activity [numbered 1 to 6]
train_labels <- read.table("./UCI HAR Dataset/train/y_train.txt")
#add ID and labels to main data
train_data <- cbind(train_subject, train_labels, train_data)