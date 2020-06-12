#download zip file with data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "rawdata.zip")
#unzip the data; by default it unzips to UCI HAR Dataset folder
unzip("rawdata.zip")