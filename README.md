Introduction
============

The data set created using a R script is a "tidy" and "summarized" version of the full data set of the Human Activity Recognition Using Smartphones. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, a full set of raw measurements were recorded. See accompanying CodeBook for more details of the source data set and new data set.

Complete new tidy Data set
==========================

The complete data set includes the following:

1. README.md (this file)
2. UCI_HAR_Mean_Dataset.txt (Data set in tabular format -> Data table)
3. run_analysis.R (Script to generate the tidy data set from raw data set)
4. CodeBook.md (Document explains variables, the data, transformations and more)

Viewing Data table
==================

It is recommended to view the Data table in R, though regular text editors can also be used, with some caution. To view the data table in R Studio do the following:

> data <- read.table(file_path, header = TRUE)
> View(data)

Runnign the R script
====================

There is only one script to produce the "tidy data table" from "raw" data.Some key details related to the R script include: 

* Script: run_analysis.R
* Script inputs: raw data set in directory "./UCI HAR Dataset"
* Script output: UCI_HAR_Mean_Dataset.txt

> In R Studio
> Set the working directory to where the script and input data set is located using setwd()
> Open the R script, then click the "Source" button above the code area. 

> In R console
> Set the working directory to where the script and input data set is located using setwd()
> Use the command -> source("run_analysis.R")

About CodeBook
==============

The CodeBook (CodeBook.md) is an important accompaning document to the data table. It describes the data table, the variable/features of the data table which are its columns. It explans the transformation made to the raw data table to create the new 'tidy" table. It provides other relevant information.

R Script - How it works - Main steps
====================================

Main steps to create tidy data from raw data. 
Steps (1 -5 as per instruction of assignment)

0. Load all the data into tables; Create training and test data sets
1. Merges the training and the test sets to create one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
6. Write the data set created in step 5 to a file
