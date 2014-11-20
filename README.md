
Coursera-Getting-and-Cleaning-Data-project-work
------------------------------------------------
run_analysis.R
==============

Preconditions:
-----------
*script reads data from subfolder of current working directory
*please make sure that UCI HAR dataset located in subfolder <strong>UCI HAR Dataset</strong>
*you need <em>dplyr</em> library to make tidydataset

Scipt Description
-----------------
Scipt create tidydata from UCI HAR DATASET (Human Activity Recognition Using Smartphones Dataset).
UCI HAR DATASET  dataset can be found here: <p>A <a href="<p>A <a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip ">link</a>.</p>

<strong>Script reads folloving txt data files:</strong>
<ul>
<li>subject_test.txt</li>
<li>X_test.txt</li>
<li>y_test.txt</li>
<li>subject_train.txt</li>
<li>X_train.txt</li>
<li>y_train.txt</li>
</ul>
<em>Please note that all data have to be under your working directoy in subfolder UCI HAR Dataset</em>

<strong>Data manipulations</strong>

Following manipulations is made to data:
<ul>
<li>Columns are named as activity, subjectid, and mesured variables are named according <em>features.txt</em> file.</li>
<li>columns are also named by following rules</li>
</ul>
<ol>
	<li>-std to StdDev</li>
	<li>-mean to Mean</li>
	<li>-t to time</li>
	<li>-f to freq</li>
	<li>gravity to Gravity</li>
	<li>body to Body</li>
	<li>gyro to Gyro</li>
	<li>AccMag to AccMagnitude</li>
	<li>bodyaccjerkmag to BodyAccJerkMagnitude</li>
	<li>JerkMag to JerkMagnitude</li>
	<li>GyroMag to GyroMagnitude</li>
</ol>
<ul>
<li>Activities number/code is replased according to UCI HAR Dataset/activity_labels.txt</li>
<li>Only columns related to mean (mean) and standard deviation (std) are included in the result</li>
<li>Column averages are calculated for each activity and subject</li>
</ul>

Outputs
-------
Created tidy data set with the average of each variable for each activity and each subject.

Usage
-----
In r console you can run following command:
<strong>source('run_analysis.R')</strong>

Code book
---------
File
*Datafile: tidydata.txt
*Columnames: columnames exist in first row
*Column separator: " "
*Decimal separator: "."
*Rows in file: 180 obseravtion rows + 1 header row
*No rownames

Variables:
----------
activity, type: character, include activity label
subjectid, type: numeric, identifier
timeBodyAccMean-X
timeBodyAccMean-Y
timeBodyAccMean-Z
timeBodyAcc-std-X
timeBodyAcc-std-Y
timeBodyAcc-std-Z
timeGravityAccMean-X
timeGravityAccMean-Y
timeGravityAccMean-Z
timeGravityAcc-std-X
timeGravityAcc-std-Y
timeGravityAcc-std-Z
timeBodyAccJerkMean-X
timeBodyAccJerkMean-Y
timeBodyAccJerkMean-Z
timeBodyAccJerk-std-X
timeBodyAccJerk-std-Y
timeBodyAccJerk-std-Z
timeBodyGyroMean-X
timeBodyGyroMean-Y
timeBodyGyroMean-Z
timeBodyGyro-std-X
timeBodyGyro-std-Y
timeBodyGyro-std-Z
timeBodyGyroJerkMean-X
timeBodyGyroJerkMean-Y
timeBodyGyroJerkMean-Z
timeBodyGyroJerk-std-X
timeBodyGyroJerk-std-Y
timeBodyGyroJerk-std-Z
timeBodyAccMagnitudeMean
timeBodyAccMagnitudeStdDev
timeGravityAccMagnitudeMean
timeGravityAccMagnitudeStdDev
timeBodyAccJerkMagnitudeMean
timeBodyAccJerkMagnitudeStdDev
timeBodyGyroMagnitudeMean
timeBodyGyroMagnitudeStdDev
timeBodyGyroJerkMagnitudeMean
timeBodyGyroJerkMagnitudeStdDev
freqBodyAccMean-X
freqBodyAccMean-Y
freqBodyAccMean-Z
freqBodyAcc-std-X
freqBodyAcc-std-Y
freqBodyAcc-std-Z
freqBodyAccJerkMean-X
freqBodyAccJerkMean-Y
freqBodyAccJerkMean-Z
freqBodyAccJerk-std-X
freqBodyAccJerk-std-Y
freqBodyAccJerk-std-Z
freqBodyGyroMean-X
freqBodyGyroMean-Y
freqBodyGyroMean-Z
freqBodyGyro-std-X
freqBodyGyro-std-Y
freqBodyGyro-std-Z
freqBodyAccMagnitudeMean
freqBodyAccMagnitudeStdDev
freqBodyAccJerkMagnitudeMean
freqBodyAccJerkMagnitudeStdDev
freqBodyGyroMagnitudeMean
freqBodyGyroMagnitudeStdDev
freqBodyGyroJerkMagnitudeMean
freqBodyGyroJerkMagnitudeStdDev