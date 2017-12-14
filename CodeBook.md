# Codebook for run_analysis.R

**Tidy.txt**

subject(Subject Number) -->   Unique identifier assigned to each subject

label(Acitivity label)  -->   "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"

**__Refer data set information below for description on below variables__**

tbodyaccmeanx,tbodyaccmeany,tbodyaccmeanz,tbodyaccstdx,tbodyaccstdy,tbodyaccstdz, tgravityaccmeanx, 
tgravityaccmeany, tgravityaccmeanz,tgravityaccstdx, tgravityaccstdy, tgravityaccstdz,tbodyaccjerkmeanx,
tbodyaccjerkmeany, tbodyaccjerkmeanz,tbodyaccjerkstdx, tbodyaccjerkstdy, tbodyaccjerkstdz,tbodygyromeanx,
tbodygyromeany, tbodygyromeanz,tbodygyrostdx, tbodygyrostdy, tbodygyrostdz, tbodygyrojerkmeanx, tbodygyrojerkmeany,
tbodygyrojerkmeanz,tbodygyrojerkstdx,tbodygyrojerkstdy,tbodygyrojerkstdz, tbodyaccmagmean, tbodyaccmagstd, tgravityaccmagmean, 
tgravityaccmagstd, tbodyaccjerkmagmean, tbodyaccjerkmagstd, tbodygyromagmean,tbodygyromagstd, tbodygyrojerkmagmean, tbodygyrojerkmagstd,
fbodyaccmeanx,fbodyaccmeany,fbodyaccmeanz, fbodyaccstdx,fbodyaccstdy, fbodyaccstdz, fbodyaccjerkmeanx,fbodyaccjerkmeany,fbodyaccjerkmeanz, 
fbodyaccjerkstdx,fbodyaccjerkstdy, fbodyaccjerkstdz, fbodygyromeanx,fbodygyromeany, fbodygyromeanz,fbodygyrostdx, fbodygyrostdy,
fbodygyrostdz, fbodyaccmagmean, fbodyaccmagstd,fbodybodyaccjerkmagmean,fbodybodyaccjerkmagstd,
fbodybodygyromagmean ,fbodybodygyromagstd, fbodybodygyrojerkmagmean,fbodybodygyrojerkmagstd
    

## Data set information

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly,  the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.
Subsequently,  the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag,  tGravityAccMag,  tBodyAccJerkMag,  tBodyGyroMag,  tBodyGyroJerkMag).
Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ,  fBodyAccJerk-XYZ,  fBodyGyro-XYZ,  fBodyAccJerkMag,  fBodyGyroMag,  fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).
These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X,  Y and Z directions.

## run_analysis.R

The script merges the training and the test sets to create one data set after which it extracts only the measurements on the mean and standard deviation for each measurement. This includes all measurements identified by -mean() or -std() labels. It then uses descriptive activity names to name the activities in the data set and appropriately labels the data set with descriptive variable names.The final output is the combined average values by subject-activity pair for every mean or std devation measurement in the original training and test data.. For example,  the feature label tBodyAcc.mean...X" contains the mean of the "tBodyAcc.mean...X" values for each subject-activity pair. Hence,  outputs the average of each variable for each 6 activities and each 30 subjects.

