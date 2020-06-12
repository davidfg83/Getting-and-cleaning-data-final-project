# Getting-and-cleaning-data-final-project

**Purpose:** The final Course Project of the "Getting and Cleaning Data" course from Coursera asks that students extract the ["Human Activity Recognition Using Smartphones Data Set"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), transform it into a tidy dataset, and create a second tidy data set with summary statistics.

To that end, I have created three scripts:

* [Retrieve_data.R](Retrieve_data.R) downloads and unzips the raw dataset into the working directory. The data for the subjects of the data are separated into two groups: train and test.

* [create_test_train_frames.R](create_test_train_frames.R) checks if the raw data set has been downloaded. If not, it runs the previous script. Then, it reads the dataset into two data frames, one for train, or for test.

* [run_analysis.R](run_analysis.R) loads the previous scrip, then merges the two resulting sets, extracts mean and standard deviation variables, tidies the resulting set according to Tidy Data principles and the assignment prompt, and extracts a new set with summary \(mean\) statistics. Note that I separated the tasks into three scripts so that the last script contains only the 5 tasks requested in the assignment prompt.
