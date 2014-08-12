#------------------------------------------------------------------------------
# Author: Bill Cary
# Copyright Bill Cary 2014
# 
# Description: Merges the training and
# the test sets to create one data set.  Extracts only the measurements on the
# mean and standard deviation for each measurement.  Uses descriptive activity
# names to name the activities in the data set Appropriately labels the data set
# with descriptive variable names.  Creates a second, independent tidy data set
# with the average of each variable for each activity and each subject. 
#
#------------------------------------------------------------------------------

# 1. Import required libraries for data manipulation
library(dplyr)

#------------------------------------------------------------------------------
# 2. Read list of data features from the file './UCI HAR Dataset/features.txt'
# into a vector
features <- read.table('./UCI HAR Dataset/features.txt', 
                       col.names = c('num', 'feature_name'))

#------------------------------------------------------------------------------
# 3. Read the training data from './UCI HAR Dataset/train/X_train.txt' into a
# data.frame
training_data <- read.table('./UCI HAR Dataset/train/X_train.txt')

#------------------------------------------------------------------------------
# 4. Add a column providing the subject (person) number and consisting of the
# data contained in './UCI HAR Dataset/train/subject_train.txt'
training_subjects <- read.table('./UCI HAR Dataset/train/subject_train.txt',
                                col.names = c('subject.num'))
training_data <- cbind(training_subjects, training_data)

#------------------------------------------------------------------------------
# 5. Add a column providing the activity number and consisting of the data
# contained in './UCI HAR Dataset/train/y_train.txt'
training_activities <- read.table('./UCI HAR Dataset/train/y_train.txt',
                                col.names = c('activity.num'))
training_data <- cbind(training_activities, training_data)

#------------------------------------------------------------------------------
# 6. Read the testing data from './UCI HAR Dataset/test/X_test.txt' into a
# data.frame
test_data <- read.table('./UCI HAR Dataset/test/X_test.txt')

#------------------------------------------------------------------------------
# 7. Add a column providing the subject (person) number and consisting of the
# data contained in './UCI HAR Dataset/test/subject_test.txt'
test_subjects <- read.table('./UCI HAR Dataset/test/subject_test.txt',
                                col.names = c('subject.num'))
test_data <- cbind(test_subjects, test_data)

#------------------------------------------------------------------------------
# 8. Add a column providing the activity number and consisting of the data
# contained in './UCI HAR Dataset/test/y_test.txt'
test_activities <- read.table('./UCI HAR Dataset/test/y_test.txt',
                                  col.names = c('activity.num'))
test_data <- cbind(test_activities, test_data)

#------------------------------------------------------------------------------
# 9. Combine the training and testing dataframes into a single, consolidated
# data.frame using rbind()
all_data <- rbind(training_data, test_data)

#------------------------------------------------------------------------------
# 10. Read the list of activity numbers and matching descriptions into a
# data.frame from the file './UCI HAR Dataset/activity_labels.txt'
activity_labels <- read.table('./UCI HAR Dataset/activity_labels.txt',
                              col.names = c('num', 'activity_label'))

#------------------------------------------------------------------------------
# 11. Add 'Subject' and 'Activity' to the list of values in the feature names
# vector.
headers <- features[,2]  # extract 2nd column (feature names)
headers <- as.character(headers)  # convert from factor to character vector
headers <- c('activity.num', 'subject.num', headers, 'activity.description')

#------------------------------------------------------------------------------
# 12. Perform a merge operation to combine the consolidated data.frame with the
# data.frame containing the activity labels and descriptions.  This will match
# each feature vector with a meaningful activity description
all_data <- merge(all_data, activity_labels, by.x = 'activity.num', 
                  by.y = 'num')

#------------------------------------------------------------------------------
# 13. Rename the columns in the consolidated data.frame using the elements
# contained in the headers vector.
colnames(all_data) <- headers


#------------------------------------------------------------------------------
# 14. Remove any columns from the data.frame that do not contain '-mean()' or
# '-std()' in the column name
mean_cols <- grep('mean', names(all_data))
std_cols <- grep('std', names(all_data))
keep_cols <- c(564, 2, mean_cols, std_cols)
keep_data <- all_data[,keep_cols]

#------------------------------------------------------------------------------
# 15. Rename remaining columns using make.names() to ensure syntactically
# valid names are used.
names(keep_data) <- make.names(names(keep_data))


#------------------------------------------------------------------------------
# 16. Create new dataframe with calculates the average value for each feature,
# grouped by subject and activity -> **THIS IS THE TIDY DATA FRAME**
tidy_data <- keep_data %>%
        group_by(subject.num, activity.description) %>%
        summarise_each(funs(mean))

#------------------------------------------------------------------------------
# 17. Save the tidy data.frame as a .txt file.  **THIS IS THE TIDY DATA SET
# REQUIRED BY THE PROJECT INSTRUCTIONS** 
write.table(tidy_data, file = './tidy_data.txt', sep = ' ', row.name = FALSE)
