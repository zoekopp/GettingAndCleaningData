# Getting and Cleaning Data Final Project

This is a project for the second course of the Coursera Data Science Specialization track: Getting and Cleaning Data.

Companies like FitBit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The dataset used in this repository represents data collected from the accelerometers of the Samsung Galaxy S smartphone. A full description is available at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The original data is available at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The aim of the project is to clean and extract data from the above zip file. The script called run_analysis.R does the following:

- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement.
- Uses descriptive activity names to name the activities in the dataset.
- Appropriately labels the dataset with descriptive variable names.
- From the dataset in step 4, creates a second, independent tidy dataset with the average of each variable for each activity and each subject.

# Repository Structure

- README.md : description of the repository and the files within.
- run_analysis.R : R code that completes the above requirements
- tidyData.txt : the tidy dataset
- CodeBook.md : a code book that describes the variables, the data, and any transformations performed to clean the data
