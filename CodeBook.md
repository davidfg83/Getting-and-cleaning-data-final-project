# CodeBook

## General information about the raw dataset
For this project, I have retrieved the ["Human Activity Recognition Using Smartphones Data Set"](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), cleaned into a tidy dataset, and created a second tidy data set with summary statistics. 

The data concern 30 human volunteers asked to wear a smartphone on their belt while performing six activities. Individuals may have been measured performing the same activity more than once. For each repetition of an activity by an individual, the researchers measured 561 variables \(more details in the link provided above\)

The raw dataset includes two datasets labeled training and test containing only the measurements for the 561 variables. It also contained separate files identifying the individuals to which each measurement pertains \(subject_train.txt and subject_test.txt\), and the activities they were performing by a code from 1 to 6 \(y_train.txt and y_test.txt\). Finaly, the dataset includes a file translating activity code from 1 to 6 to the actual activity - for example, 1 corresponds to walking - and a file with the name of the 561 measured variables.

## Tasks performed to retrieve the raw data, tidy it, and retrieve specific variables and summaries

Using the scripts outlined in the (README.md) file, I:

* downloaded the dataset 

* added the subject ids and activity codes to the data file \(these were later converted to activity names\) 

* merged the train and test datasets

* added the variable names to the data set \(ID, activity, and the 561 numerical variables\)

* extracted to a new data set only the variables that represented mean or standard deviation calculations

* converted the activity codes to descriptive activity labels. This means that the activity variable's values went from being expressed in a 1 to 6 scale to express one of 6 possible cases: walking, walking upstairs, walking downstairs, sitting, standing, laying. 

* formatted variable names according to tidy data best principles \(made them lower case, remove extra parentheses\)

* created a second dataset that expresses the average by subject and activity of the 68 mean and standard deviation variables.

## Datasets obtained as the output of the tasks performed above

As the outcome of the above tasks, I ended up with 2 tidy data sets: 

* The first data set contains 10,299 observations pertaining to 30 individuals each performing a variable number of repetitions of 6 different activities. For each observation, the dataset contains the observed measurements of the 68 variables in the original dataset that refer to mean or standard deviation calculations.

* The second data set contains the average of the 68 variables in the first data set by individual and activity. For example, row 1 in the data set contains the average measurements for the 68 mean and standard deviation variables for subject 1 while laying. Since there are 30 individuals each performing 6 activities, the dataset contains 6 x 30 = 180 observations.


###GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
