
run_analysis.R
==============

Preconditions:
-----------
<ul>
<li>script reads data from subfolder of current working directory</li>
<li>please make sure that UCI HAR dataset located in subfolder <strong>UCI HAR Dataset</strong></li>
<li>you need <em>dplyr</em> library to make tidydataset</li>
</ul>

Scipt Description
-----------------
Scipt create tidydata from UCI HAR DATASET (Human Activity Recognition Using Smartphones Dataset).
UCI HAR DATASET  dataset can be found url: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

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
=========
File
----
<ul>
<li>Datafile: tidydata.txt</li>
<li>Columnames: columnames exist in first row</li>
<li>Column separator: " "</li>
<li>Decimal separator: "."</li>
<li>Rows in file: 180 obseravtion rows + 1 header row</li>
<li>Column number 68</li>
<li>no rownames</li>
</ul>

Variables:
----------
<strong>Identifier columns</strong>

activity
<ul>
<li>Activity label, actity performed by volynteer (subjectid)</li>
<li>character</li>
<li>Values: LAYING, SITTING, STANDING, WALKING, WLKING_DOWNSTAIRS, WALKING_UPSTAIRS</li>
</ul>

subjectid
<ul>
<li>Identifier of volunteer</li>
<li>Nuumeric / Integer</li>
<li>Values: 1 to 30</li>
</ul>
<strong>Measure columns</strong>
<ul>
<li>All measure columns are numeric. Desimalseparator is ".", negative symbol for value is "-"</li>
<li>lettrs (x, y z) is used to denote 3-axial signals in the X, Y and Z directions</li>
</ul>
timeBodyAccMean-X
timeBodyAccMean-Y
timeBodyAccMean-Z
timeBodyAccStdDev-X
timeBodyAccStdDev-Y
timeBodyAccStdDev-Z
timeGravityAccMean-X
timeGravityAccMean-Y
timeGravityAccMean-Z
timeGravityAccStdDev-X
timeGravityAccStdDev-Y
timeGravityAccStdDev-Z
timeBodyAccJerkMean-X
timeBodyAccJerkMean-Y
timeBodyAccJerkMean-Z
timeBodyAccJerkStdDev-X
timeBodyAccJerkStdDev-Y
timeBodyAccJerkStdDev-Z
timeBodyGyroMean-X
timeBodyGyroMean-Y
timeBodyGyroMean-Z
timeBodyGyroStdDev-X
timeBodyGyroStdDev-Y
timeBodyGyroStdDev-Z
timeBodyGyroJerkMean-X
timeBodyGyroJerkMean-Y
timeBodyGyroJerkMean-Z
timeBodyGyroJerkStdDev-X
timeBodyGyroJerkStdDev-Y
timeBodyGyroJerkStdDev-Z
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
freqBodyAccStdDev-X
freqBodyAccStdDev-Y
freqBodyAccStdDev-Z
freqBodyAccJerkMean-X
freqBodyAccJerkMean-Y
freqBodyAccJerkMean-Z
freqBodyAccJerkStdDev-X
freqBodyAccJerkStdDev-Y
freqBodyAccJerkStdDev-Z
freqBodyGyroMean-X
freqBodyGyroMean-Y
freqBodyGyroMean-Z
freqBodyGyroStdDev-X
freqBodyGyroStdDev-Y
freqBodyGyroStdDev-Z
freqBodyAccMagnitudeMean
freqBodyAccMagnitudeStdDev
freqBodyAccJerkMagnitudeMean
freqBodyAccJerkMagnitudeStdDev
freqBodyGyroMagnitudeMean
freqBodyGyroMagnitudeStdDev
freqBodyGyroJerkMagnitudeMean
freqBodyGyroJerkMagnitudeStdDev