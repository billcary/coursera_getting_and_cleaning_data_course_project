## Codebook for tidy_data.txt
#### Created for Coursera Getting and Cleaning Data Course

### Description
The data is based on the Human Activity Recognition Using Smartphones Dataset,
developed by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto
and described in detail below under _Source Data Description_.

The data set provides the mean value of all mean() and std() features from the
original source data.  The values are grouped by Activity and Subject.

### What makes the data tidy?
The data set follows the three rules of Tidy Data as proposed by Hadley Wickham
in the paper [Tidy Data](https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&cad=rja&uact=8&ved=0CB0QFjAA&url=http%3A%2F%2Fvita.had.co.nz%2Fpapers%2Ftidy-data.pdf&ei=AXLqU9y3C9froATh9IC4CQ&usg=AFQjCNFUAQr-w_87XpPhfEDoDYQw5-G5zg&sig2=HLzk9jqflCkHFk91_8b1XQ&bvm=bv.72676100,bs.1,d.cGE)  Specifically, it complies with the
following rules:

**1. Each variable forms a column.**

**2. Each observation forms a row.**

**3. Each type of observational unit forms a table.**

In addition, the following features have been implementated to improve the
usability of the data set:

**1. Each column has been given a discriptive name using the
make.names() function during data set creation.**

**2. The activities have been given descriptive names rather than numbers to
improve radability.**


### The dataset includes the following files:
* 'tidy_data.txt'
 

### Notes 
* Features are normalized and bounded within [-1,1].
* Each feature vector is a row on the text file.


### Feature Selection 
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* activity.description:   factor
* subject.num:   integer
* tBodyAcc.mean...X:   numeric
* tBodyAcc.mean...Y:   numeric
* tBodyAcc.mean...Z:   numeric
* tGravityAcc.mean...X:   numeric
* tGravityAcc.mean...Y:   numeric
* tGravityAcc.mean...Z:   numeric
* tBodyAccJerk.mean...X:   numeric
* tBodyAccJerk.mean...Y:   numeric
* tBodyAccJerk.mean...Z:   numeric
* tBodyGyro.mean...X:   numeric
* tBodyGyro.mean...Y:   numeric
* tBodyGyro.mean...Z:   numeric
* tBodyGyroJerk.mean...X:   numeric
* tBodyGyroJerk.mean...Y:   numeric
* tBodyGyroJerk.mean...Z:   numeric
* tBodyAccMag.mean..:   numeric
* tGravityAccMag.mean..:   numeric
* tBodyAccJerkMag.mean..:   numeric
* tBodyGyroMag.mean..:   numeric
* tBodyGyroJerkMag.mean..:   numeric
* fBodyAcc.mean...X:   numeric
* fBodyAcc.mean...Y:   numeric
* fBodyAcc.mean...Z:   numeric
* fBodyAcc.meanFreq...X:   numeric
* fBodyAcc.meanFreq...Y:   numeric
* fBodyAcc.meanFreq...Z:   numeric
* fBodyAccJerk.mean...X:   numeric
* fBodyAccJerk.mean...Y:   numeric
* fBodyAccJerk.mean...Z:   numeric
* fBodyAccJerk.meanFreq...X:   numeric
* fBodyAccJerk.meanFreq...Y:   numeric
* fBodyAccJerk.meanFreq...Z:   numeric
* fBodyGyro.mean...X:   numeric
* fBodyGyro.mean...Y:   numeric
* fBodyGyro.mean...Z:   numeric
* fBodyGyro.meanFreq...X:   numeric
* fBodyGyro.meanFreq...Y:   numeric
* fBodyGyro.meanFreq...Z:   numeric
* fBodyAccMag.mean..:   numeric
* fBodyAccMag.meanFreq..:   numeric
* fBodyBodyAccJerkMag.mean..:   numeric
* fBodyBodyAccJerkMag.meanFreq..:   numeric
* fBodyBodyGyroMag.mean..:   numeric
* fBodyBodyGyroMag.meanFreq..:   numeric
* fBodyBodyGyroJerkMag.mean..:   numeric
* fBodyBodyGyroJerkMag.meanFreq..:   numeric
* tBodyAcc.std...X:   numeric
* tBodyAcc.std...Y:   numeric
* tBodyAcc.std...Z:   numeric
* tGravityAcc.std...X:   numeric
* tGravityAcc.std...Y:   numeric
* tGravityAcc.std...Z:   numeric
* tBodyAccJerk.std...X:   numeric
* tBodyAccJerk.std...Y:   numeric
* tBodyAccJerk.std...Z:   numeric
* tBodyGyro.std...X:   numeric
* tBodyGyro.std...Y:   numeric
* tBodyGyro.std...Z:   numeric
* tBodyGyroJerk.std...X:   numeric
* tBodyGyroJerk.std...Y:   numeric
* tBodyGyroJerk.std...Z:   numeric
* tBodyAccMag.std..:   numeric
* tGravityAccMag.std..:   numeric
* tBodyAccJerkMag.std..:   numeric
* tBodyGyroMag.std..:   numeric
* tBodyGyroJerkMag.std..:   numeric
* fBodyAcc.std...X:   numeric
* fBodyAcc.std...Y:   numeric
* fBodyAcc.std...Z:   numeric
* fBodyAccJerk.std...X:   numeric
* fBodyAccJerk.std...Y:   numeric
* fBodyAccJerk.std...Z:   numeric
* fBodyGyro.std...X:   numeric
* fBodyGyro.std...Y:   numeric
* fBodyGyro.std...Z:   numeric
* fBodyAccMag.std..:   numeric
* fBodyBodyAccJerkMag.std..:   numeric
* fBodyBodyGyroMag.std..:   numeric
* fBodyBodyGyroJerkMag.std..:   numeric

The factor feature 'activity.description' has the following six (6) levels:
LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS 

The set of variables that were estimated from these signals are: 

* mean: Mean value
* std: Standard deviation

#### Source Data Description
```
==================================================================
Cleansing of Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Source data developed by:
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

```

### Citation
Data utilized in the project was obtained from the following source:
```
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
```
