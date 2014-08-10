###############################################################################
# Author: Bill Cary
# Copyright Bill Cary 2014
# 
# Description: Merges the training and
# the test sets to create one data set.  Extracts only the measurements on the
# mean and standard deviation for each measurement.  Uses descriptive activity
# names to name the activities in the data set Appropriately labels the data set
# with descriptive variable names.  Creates a second, independent tidy data set
# with the average of each variable for each activity and each subject. 


# 1. Import required libraries for data manipulation
library(dplyr)


# 2. Read list of data features from the file './UCI HAR Dataset/features.txt'
# into a vector
features <- read.table('./UCI HAR Dataset/features.txt', 
                       col.names = c('num', 'feature_name'))

# 3. Read the training data from './UCI HAR Dataset/train/X_train.txt' into a
# data.frame
training_data <- read.table('./UCI HAR Dataset/train/X_train.txt')

# 4. Add a column providing the subject (person) number and consisting of the
# data contained in './UCI HAR Dataset/train/subject_train.txt'
training_subjects <- read.table('./UCI HAR Dataset/train/subject_train.txt',
                                col.names = c('subject_num'))
training_data <- cbind(training_subjects, training_data)

# 5. Add a column providing the activity number and consisting of the data
# contained in './UCI HAR Dataset/train/y_train.txt'
training_activities <- read.table('./UCI HAR Dataset/train/y_train.txt',
                                col.names = c('activity_num'))
training_data <- cbind(training_activities, training_data)

# 6. Read the testing data from './UCI HAR Dataset/test/X_test.txt' into a
# data.frame
test_data <- read.table('./UCI HAR Dataset/test/X_test.txt')

# 7. Add a column providing the subject (person) number and consisting of the
# data contained in './UCI HAR Dataset/test/subject_test.txt'
test_subjects <- read.table('./UCI HAR Dataset/test/subject_test.txt',
                                col.names = c('subject_num'))
test_data <- cbind(test_subjects, test_data)

# 8. Add a column providing the activity number and consisting of the data
# contained in './UCI HAR Dataset/test/y_test.txt'
test_activities <- read.table('./UCI HAR Dataset/test/y_test.txt',
                                  col.names = c('activity_num'))
test_data <- cbind(test_activities, test_data)

# 9. Combine the training and testing dataframes into a single, consolidated
# data.frame using rbind()
all_data <- rbind(training_data, test_data)

# 10. Read the list of activity numbers and matching descriptions into a
# data.frame from the file './UCI HAR Dataset/activity_labels.txt'
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt',
                              col.names = c('num', 'activity_label'))

# 11. Add 'Subject' and 'Activity' to the list of values in the feature names
# vector.

# 12. Transpose the vector containing the list of feature names and then use it
# to name the columns in the consolidated data.frame

# 13. Perform a merge operation to combine the consolidated data.frame with the
# data.frame containing the activity labels and descriptions.  This will match
# each feature vector with a meaningful activity description

# 14. Remove any columns from the data.frame that do not contain '-mean()' or
# '-std()' in the column name

# 15. RENAME REMAINING COLUMNS WITH MORE DESCRIPTIVE NAMES

# 16. Create new dataframe with calculates the average value for each feature,
# grouped by subject and activity -> **THIS IS THE TIDY DATA FRAME**

# 17. Save the tidy data.frame as a .txt file.  **THIS IS THE TIDY DATA SET
# REQUIRED BY THE PROJECT INSTRUCTIONS** 