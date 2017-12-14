#Coursera: Getting and Cleaning Data#
=====================================

##Description:##

The goal of run_analysis.R is to prepare tidy data that can be used for later analysis. The uses the data collected fom the accelometers from the Samsung galaxy S smartphone.

Data is downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
A full description is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

run_analysis.R contains stepwise script for the following tasks sequentially.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Please refer to the comments in the scripts as well as code book codebook.md that describes the variables, the data, and any transformations or work performed for above steps.

##Usage:##
Set the working directory to the folder containing the activity recognition dataset.
Run the script run_analysis.R. The script produces a single output file, Tidy.txt which contains data set with the average of each variable for each activity and each subject.