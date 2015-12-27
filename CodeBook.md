Introduction
============

This CodeBook pertains to data collected from the accelerometers of the Samsung Galaxy S smartphone and pertains to Human Activity Recognition.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, a full set of raw measurements were recorded. A summarized, simplfied and tidy version of the data set has been created and is being described in this document.

Original Input "raw" Data Set
=============================

To obtains details fo the original data set please see [link] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Data Set transformations
========================

The **key** Data Set transformations to covert the original data set to the present data set includes:

1. Tidy up the data set by creating a table with rows for observations and key variables as columns. Also includes merging the test and train data sets of the original data set, besides other.
2. Extract only the measurements on the mean and standard deviation for each measurement
3. Provide only average of each variable for each subject and each activity (from the several observations made of each subject and each activity)

Data Set Description
====================

The Data set is captured in a table with 180 observations (rows) for 68 variables (columns). The 180 observations result from observations made for 30 volunteers (subjects) each of whom do 6 activities (180 = 30 x 6). THe variables of the data set are described below. The table provides a summarized and simplified version of the Human activity measurements using a Samsung Galaxy S smartphone.

Variable names: Key mnemonics used
==================================

The following keywords/Mnemonics were used to construct the variable names. Studying them helps to understand the variable names.

No.|Key/Mnemonics|Description
---|-------------|-----------
1|t|Prefix 't' denotes time domain signals
2|f|Prefix 'f' denotes frequency domain signals (obtained using FFT)
3|body|body component of signal
4|gravity|gravity component of signal
5|acc|Accelerometer signal measurment
6|gyro|Gyroscope signal measurement
7|jerk|Jerk - body linear acceleration/angular velocity derived in time
8|mag|Magnitude of 3-D signals calculated using Euclidean norm
9|mean|mean value
10|std|Standard deviation
11|x|Signal in the 'X' direction of the 3-axial signal
12|y|Signal in the 'Y' direction of the 3-axial signal
13|z|Signal in the 'Z' direction of the 3-axial signal


List of Variables and Definitions
=================================

The variable names choosen are descriptive at the same time sufficiently short for convenience. In combination with the explanation of keywords/mnemonics used to construct them, they can be easily understood. The full set of variables are described in the table below.

No.|Variable|Description
---|--------|-----------
1|subject| Id for the volunteer who participated in experiment
2|activity| One of six activities performed (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
3|tbodyaccmeanx| Time domain body accelaration signal in 'X' direction - mean value
4|tbodyaccmeany| Time domain body accelaration signal in 'Y' direction - mean value
5|tbodyaccmeanz| Time domain body accelaration signal in 'Z' direction - mean value
6|tbodyaccstdx| Time domain body accelaration signal in 'X' direction - std value
7|tbodyaccstdy| Time domain body accelaration signal in 'Y' direction - std value
8|tbodyaccstdz| Time domain body accelaration signal in 'Z' direction - std value
9|tgravityaccmeanx| Time domain gravity accelaration signal in 'X' direction - mean value
10|tgravityaccmeany|  Time domain gravity accelaration signal in 'Y' direction - mean value
11|tgravityaccmeanz|  Time domain gravity accelaration signal in 'Z' direction - mean value
12|tgravityaccstdx| Time domain gravity accelaration signal in 'X' direction - std value
13|tgravityaccstdy| Time domain gravity accelaration signal in 'Y' direction - std value
14|tgravityaccstdz| Time domain gravity accelaration signal in 'Z' direction - std value
15|tbodyaccjerkmeanx| Time domain body accelaration 'jerk' signal in 'X' direction - mean value
16|tbodyaccjerkmeany| Time domain body accelaration 'jerk' signal in 'Y' direction - mean value
17|tbodyaccjerkmeanz| Time domain body accelaration 'jerk' signal in 'Z' direction - mean value
18|tbodyaccjerkstdx| Time domain body accelaration 'jerk' signal in 'X' direction - std value
19|tbodyaccjerkstdy| Time domain body accelaration 'jerk' signal in 'Y' direction - std value
20|tbodyaccjerkstdz|  Time domain body accelaration 'jerk' signal in 'Z' direction - std value
21|tbodygyromeanx| Time domain body gyroscope signal in 'X' direction - mean value
22|tbodygyromeany| Time domain body gyroscope signal in 'Y' direction - mean value
23|tbodygyromeanz| Time domain body gyroscope signal in 'Z' direction - mean value
24|tbodygyrostdx| Time domain body gyroscope signal in 'X' direction - std value
25|tbodygyrostdy| Time domain body gyroscope signal in 'Y' direction - std value
26|tbodygyrostdz| Time domain body gyroscope signal in 'Z' direction - std value
27|tbodygyrojerkmeanx| Time domain body gyroscope 'jerk' signal in 'X' direction - mean value
28|tbodygyrojerkmeany| Time domain body gyroscope 'jerk' signal in 'Y' direction - mean value
29|tbodygyrojerkmeanz| Time domain body gyroscope 'jerk' signal in 'Z' direction - mean value
30|tbodygyrojerkstdx| Time domain body gyroscope 'jerk' signal in 'X' direction - std value
31|tbodygyrojerkstdy| Time domain body gyroscope 'jerk' signal in 'Y' direction - std value
32|tbodygyrojerkstdz| Time domain body gyroscope 'jerk' signal in 'Z' direction - std value
33|tbodyaccmagmean| Time domain body accelaration signal magnitude - mean value
34|tbodyaccmagstd| Time domain body accelaration signal magnitude - std value
35|tgravityaccmagmean| Time domain gravity accelaration signal magnitude - mean value
36|tgravityaccmagstd| Time domain gravity accelaration signal magnitude - std value
37|tbodyaccjerkmagmean| Time domain body accelaration 'jerk' signal magnitude - mean value
38|tbodyaccjerkmagstd| Time domain body accelaration 'jerk' signal magnitude - std value
39|tbodygyromagmean| Time domain body gyroscope signal magnitude - mean value
40|tbodygyromagstd| Time domain body gyroscope signal magnitude - std value
41|tbodygyrojerkmagmean| Time domain body gyroscope 'jerk' signal magnitude - mean value
42|tbodygyrojerkmagstd| Time domain body gyroscope 'jerk' signal magnitude - std value
43|fbodyaccmeanx| Frequency domain body accelaration signal in 'X' direction - mean value
44|fbodyaccmeany| Frequency domain body accelaration signal in 'Y' direction - mean value
45|fbodyaccmeanz| Frequency domain body accelaration signal in 'Z' direction - mean value
46|fbodyaccstdx| Frequency domain body accelaration signal in 'X' direction - std value
47|fbodyaccstdy| Frequency domain body accelaration signal in 'Y' direction - std value
48|fbodyaccstdz| Frequency domain body accelaration signal in 'Z' direction - std value
49|fbodyaccjerkmeanx| Frequency domain body accelaration 'jerk' signal in 'X' direction - mean value
50|fbodyaccjerkmeany| Frequency domain body accelaration 'jerk' signal in 'Y' direction - mean value
51|fbodyaccjerkmeanz| Frequency domain body accelaration 'jerk' signal in 'Z' direction - mean value
52|fbodyaccjerkstdx| Frequency domain body accelaration 'jerk' signal in 'X' direction - std value
53|fbodyaccjerkstdy| Frequency domain body accelaration 'jerk' signal in 'Y' direction - std value
54|fbodyaccjerkstdz| Frequency domain body accelaration 'jerk' signal in 'Z' direction - std value
55|fbodygyromeanx| Frequency domain body gyroscope signal in 'X' direction - mean value
56|fbodygyromeany| Frequency domain body gyroscope signal in 'Y' direction - mean value
57|fbodygyromeanz| Frequency domain body gyroscope signal in 'Z' direction - mean value
58|fbodygyrostdx| Frequency domain body gyroscope signal in 'X' direction - std value
59|fbodygyrostdy| Frequency domain body gyroscope signal in 'Y' direction - std value
60|fbodygyrostdz| Frequency domain body gyroscope signal in 'Z' direction - std value
61|fbodyaccmagmean| Frequency domain body accelaration signal magnitude - mean value
62|fbodyaccmagstd| Frequency domain body accelaration signal magnitude - std value
63|fbodybodyaccjerkmagmean| Frequency domain body accelaration 'jerk' signal magnitude - mean value
64|fbodybodyaccjerkmagstd| Frequency domain body accelaration 'jerk' signal magnitude - std value
65|fbodybodygyromagmean| Frequency domain body gyroscope signal magnitude - mean value
66|fbodybodygyromagstd| Frequency domain body gyroscope signal magnitude - std value
67|fbodybodygyrojerkmagmean| Frequency domain body gyroscope 'jerk' signal magnitude - mean value
68|fbodybodygyrojerkmagstd| Frequency domain body gyroscope 'jerk' signal magnitude - std value

**NOTE:** Variables 63-68 have two "body" in the name, while there could just be one. This has been delibrately left to be consistent with the description of features in the orginal raw data set. This is in case user decides to refer back to the original data

Units of Variables
==================

All features/variables are normalized and bounded within [-1,1]. Hence they have no units. 

Original accelaration signals were measured in standard gravity units 'g'.
Origina gyroscope signals (of angular velocity) were measured in 'radians/second'

License info from original data set
===================================
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Disclaimer from authors of original data
========================================
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

More information
================
For more information about the original dataset contact: activityrecognition@smartlab.ws


