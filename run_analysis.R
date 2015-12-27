#
#
# R script for assignment for course
# Course "Getting and Cleaning Data" course : Dec 7, 15 - Jan 03, 16
#
# Create tidy data from raw data. Steps (1 -5 as per instruction)
#
# 0. Load all the data into tables; Create training and test data sets
# 1. Merges the training and the test sets to create one data set
# 2. Extracts only the measurements on the mean and standard deviation
#    for each measurement
# 3. Uses descriptive activity names to name the activities in the
#    data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data
#    set with the average of each variable for each activity and 
#    each subject
# 6. Write the data set created in step 5 to a file

#  =======================================
#. 0. Load all the data into tables, 
#     Creating training and test data sets
#  =======================================

dataDir <- "./UCI HAR Dataset"

# ---- Load Train Data ----
trainDataDir <- paste0(dataDir,"/train")

xTrainData <- read.table(paste0(trainDataDir,"/X_train.txt"))
yTrainData <- read.table(paste0(trainDataDir,"/y_train.txt"))
subTrainData <- read.table(paste0(trainDataDir,"/subject_train.txt"))

# ---- Create full training data set ----
colnames(subTrainData) <- "subject"
colnames(yTrainData) <- "activity"
trainData <- cbind(subTrainData, yTrainData, xTrainData)

# ---- Load Test Data ---
testDataDir <- paste0(dataDir,"/test")

xTestData <- read.table(paste0(testDataDir,"/X_test.txt"))
yTestData <- read.table(paste0(testDataDir,"/y_test.txt"))
subTestData <- read.table(paste0(testDataDir,"/subject_test.txt"))

# ---- Create full test data set ----
colnames(subTestData) <- "subject"
colnames(yTestData) <- "activity"
testData <- cbind(subTestData, yTestData, xTestData)

#  ========================================
#. 1. Merges the training and the test sets
#     to create one data set
#  ========================================

fullData <- rbind(trainData,testData)

# ==============================================
# 2. Extracts only the measurements on the mean
#    and standard deviation for each measurement
# ==============================================

# ---- Read in features.txt (describes the features) ----
featureData <- read.table(paste0(dataDir,"/features.txt"))

# ---- Find the Index of features which are mean and std measurements
meanFeatureIndex <- grep("mean()",featureData[,2], fixed = T)
stdFeatureIndex <- grep("std()",featureData[,2], fixed = T)
meanStdFeatIndex <- c(meanFeatureIndex, stdFeatureIndex)
meanStdFeatIndex <- sort(meanStdFeatIndex)

# --- Offset index by 2 as 2 cols (subject, activity) ----
#     added to data table.
meanStdFeatIndex2 <- meanStdFeatIndex + 2
# --- Include first two columns in feature Index
meanStdFeatIndex2 <- c(1:2, meanStdFeatIndex2)

# ---- Apply the mean, Std feature index to fullData table ----
#      to keep only those measurements
library(dplyr)
selectData <- select(fullData, meanStdFeatIndex2)
selectData <- arrange(selectData, subject, activity) # sort to make pretty

# ======================================
# 3. Uses descriptive activity names to
#    name the activities in the data set
# ======================================

# ---- Read in activity_labels.txt (labels the activities) ----
activityLabels <- read.table(paste0(dataDir,"/activity_labels.txt"))

# ---- Make actvity as factor. Replace activity numbers ----
#      with labels provided in activity_labels file
selectData$activity <- factor(selectData$activity, labels = activityLabels[,2])

# ====================================
# 4. Appropriately labels the data set
#    with descriptive variable names
# ===================================

# ---- Read in features.txt (labels the features) ----
featureLabels <- read.table(paste0(dataDir,"/features.txt"))

featLabelsMeanStd <- filter(featureLabels, V1 %in% meanStdFeatIndex)

featureNames <- as.character(featLabelsMeanStd[,2])
featureNames2 <- make.names(featureNames, unique = TRUE)
featureNames3 <- tolower(featureNames2)
featureNames4 <- gsub("\\.", "",featureNames3)
featureNames5 <- c("subject", "activity", featureNames4)

colnames(selectData) <- featureNames5

# ===================================================
# 5. From the data set in step 4, creates a second, 
#    independent tidy data set with the average of
#    each variable for each activity and each subject
# ===================================================

by_selectData = group_by(selectData, subject, activity)
selectDataMean <- summarise_each(by_selectData, funs(mean))

# =================================================
# 6. Write the data set created in step 5 to a file
# =================================================

outputFile <- "./UCI_HAR_Mean_Dataset.txt"
write.table(selectDataMean, file = outputFile, 
            row.names = FALSE)
