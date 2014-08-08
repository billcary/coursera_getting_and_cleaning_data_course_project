## Readme file for Coursera Getting and Cleaning Data Course

### Introduction
The introduction below is taken from the Coursera course project description page: 

>
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  
>
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 
>
>
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
>
>
Here are the data for the project: 
>
>
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
>
>
You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
Good luck!


### Directory Structure
Files are contained in the following directory structure:

* **./**   -> *Working Directory*
  * **./UCI HAR Dataset**  -> *Raw Data Directory*
    * **./UCI HAR Dataset/test** -> *Raw Test Data*
    * **./UCI HAR Dataset/train** -> *Raw Training Data*


### File Descriptions
1. **readme.md:** This is the readme file describing the repository structure, file contents and processing flow of the scripts
2. **run_analysis.R:** This is the r script developed to perform the processing required by this assignment.  It is the only r script used for the effort.
3. **codebook.md:** This is the codebook describing the variables, the data, and all transformations or work performed to clean up the data


### Processing Flow
1. Import required libraries for data manipulation
2. Read list of data features from the file './UCI HAR Dataset/features.txt' into a vector
3. Read the training data from './UCI HAR Dataset/train/X_train.txt' into a data.frame
4. Add a column providing the subject (person) number and consisting of the data contained in
'./UCI HAR Dataset/train/subject_train.txt'
5. Add a column providing the activity number and consisting of the data contained in
'./UCI HAR Dataset/train/y_train.txt'
6. Read the testing data from './UCI HAR Dataset/test/X_test.txt' into a data.frame
7. Add a column providing the subject (person) number and consisting of the data contained in
'./UCI HAR Dataset/test/subject_test.txt'
8. Add a column providing the activity number and consisting of the data contained in
'./UCI HAR Dataset/test/y_test.txt'
9. Combine the training and testing dataframes into a single, consolidated data.frame using rbind()
10. Read the list of activity numbers and matching descriptions into a data.frame from the file
'./UCI HAR Dataset/activity_labels.txt'
11. Add 'Subject' and 'Activity' to the list of values in the feature names vector.
12. Transpose the vector containing the list of feature names and then use it to name the
columns in the consolidated data.frame
13. Perform a merge operation to combine the consolidated data.frame with the data.frame containing
the activity labels and descriptions.  This will match each feature vector with a meaningful activity
description
14. Remove any columns from the data.frame that do not contain '-mean()' or '-std()' in the column
name
15. RENAME REMAINING COLUMNS WITH MORE DESCRIPTIVE NAMES
16. Create new dataframe with calculates the average value for each feature, grouped by
subject and activity -> **THIS IS THE TIDY DATA FRAME**


### Citation
Data utilized in the project was obtained from the following source:
```
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
```
