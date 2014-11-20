
run_analysis.R
==============

###License about data used in this script:
<em>
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
</em>

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
UCI HAR DATASET  dataset can be found from url: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

<strong>Script reads folloving txt data files:</strong>
<ul>
<li>subject_test.txt</li>
<li>X_test.txt</li>
<li>y_test.txt</li>
<li>subject_train.txt</li>
<li>X_train.txt</li>
<li>y_train.txt</li>
</ul>

Script also reads <strong>feataures.txt</strong> and <strong>activity lables.txt</strong> datas, for variable naming purposes and for activity labels. 
<em>Please note that all data have to be under your working directoy in subfolder UCI HAR Dataset</em>

<strong>Data Combining</strong>

subject_test.txt, X_test.txt and y_test.txt datas are combined to one test data at same time that those data are read with script.  
subject_train.txt, X_train.txt and y_train.txt datas are combined to one traind data at same time that those data are read with script.  
After combaining test and train datasets, those two are rowcombined to one analyseData set.

<strong>Data manipulations</strong>

Following manipulations is made to combained analysesData dataset:

<ul>
<li>Activities number/code is replased according to UCI HAR Dataset/activity_labels.txt</li>
<li>Only columns related to mean (mean) and standard deviation (std) are included in the result</li>
<li>Column averages are calculated for each activity and subject</li>
<li>Columns are named as activity, subjectid, and mesured variables are named according <em>features.txt</em> file.</li>
<li>columns are also named by following rules</li>
</ul>
<ol>
<li>-std changed to StdDev</li>
<li>-mean changed to Mean</li>
<li>-t changed to time</li>
<li>-f changed to freq</li>
<li>gravity changed to Gravity</li>
<li>body changed to Body</li>
<li>gyro changed to Gyro</li>
<li>AccMag changed to AccMagnitude</li>
<li>bodyaccjerkmag changed to BodyAccJerkMagnitude</li>
<li>JerkMag changed to JerkMagnitude</li>
<li>GyroMag changed to GyroMagnitude</li>
</ol>

Outputs
-------
Created tidy data set with the average of each variable for each activity and each subject.

Usage
-----
In r console you can run following command: <strong>source('run_analysis.R')</strong>

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
<ul>
<li>activity</li>
</ul>
Activity label, actity performed by volynteer (subjectid)  
Type: character  
Values: LAYING, SITTING, STANDING, WALKING, WLKING_DOWNSTAIRS, WALKING_UPSTAIRS  

<ul>
<li>subjectid</li>
</ul>
Identifier of volunteer  
Type: Numeric - Integer  
Values: 1 to 30  

<strong>Measure columns</strong>  

All measure columns are numeric. Desimalseparator is ".", negative symbol for value is "-". 
Lettrs (x, y z) in variables name is used to denote 3-axial signals in the X, Y and Z directions.
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.
  
<ul>
<li>timeBodyAccMean-X</li>
<li>timeBodyAccMean-Y</li>
<li>timeBodyAccMean-Z</li>
<li>timeBodyAccStdDev-X</li>
<li>timeBodyAccStdDev-Y</li>
<li>timeBodyAccStdDev-Z</li>
<li>timeGravityAccMean-X</li>
<li>timeGravityAccMean-Y</li>
<li>timeGravityAccMean-Z</li>
<li>timeGravityAccStdDev-X</li>
<li>timeGravityAccStdDev-Y</li>
<li>timeGravityAccStdDev-Z</li>
<li>timeBodyAccJerkMean-X</li>
<li>timeBodyAccJerkMean-Y</li>
<li>timeBodyAccJerkMean-Z</li>
<li>timeBodyAccJerkStdDev-X</li>
<li>timeBodyAccJerkStdDev-Y</li>
<li>timeBodyAccJerkStdDev-Z</li>
<li>timeBodyGyroMean-X</li>
<li>timeBodyGyroMean-Y</li>
<li>timeBodyGyroMean-Z</li>
<li>timeBodyGyroStdDev-X</li>
<li>timeBodyGyroStdDev-Y</li>
<li>timeBodyGyroStdDev-Z</li>
<li>timeBodyGyroJerkMean-X</li>
<li>timeBodyGyroJerkMean-Y</li>
<li>timeBodyGyroJerkMean-Z</li>
<li>timeBodyGyroJerkStdDev-X</li>
<li>timeBodyGyroJerkStdDev-Y</li>
<li>timeBodyGyroJerkStdDev-Z</li>
<li>timeBodyAccMagnitudeMean</li>
<li>timeBodyAccMagnitudeStdDev</li>
<li>timeGravityAccMagnitudeMean</li>
<li>timeGravityAccMagnitudeStdDev</li>
<li>timeBodyAccJerkMagnitudeMean</li>
<li>timeBodyAccJerkMagnitudeStdDev</li>
<li>timeBodyGyroMagnitudeMean</li>
<li>timeBodyGyroMagnitudeStdDev</li>
<li>timeBodyGyroJerkMagnitudeMean</li>
<li>timeBodyGyroJerkMagnitudeStdDev</li>
<li>freqBodyAccMean-X</li>
<li>freqBodyAccMean-Y</li>
<li>freqBodyAccMean-Z</li>
<li>freqBodyAccStdDev-X</li>
<li>freqBodyAccStdDev-Y</li>
<li>freqBodyAccStdDev-Z</li>
<li>freqBodyAccJerkMean-X</li>
<li>freqBodyAccJerkMean-Y</li>
<li>freqBodyAccJerkMean-Z</li>
<li>freqBodyAccJerkStdDev-X</li>
<li>freqBodyAccJerkStdDev-Y</li>
<li>freqBodyAccJerkStdDev-Z</li>
<li>freqBodyGyroMean-X</li>
<li>freqBodyGyroMean-Y</li>
<li>freqBodyGyroMean-Z</li>
<li>freqBodyGyroStdDev-X</li>
<li>freqBodyGyroStdDev-Y</li>
<li>freqBodyGyroStdDev-Z</li>
<li>freqBodyAccMagnitudeMean</li>
<li>freqBodyAccMagnitudeStdDev</li>
<li>freqBodyAccJerkMagnitudeMean</li>
<li>freqBodyAccJerkMagnitudeStdDev</li>
<li>freqBodyGyroMagnitudeMean</li>
<li>freqBodyGyroMagnitudeStdDev</li>
<li>freqBodyGyroJerkMagnitudeMean</li>
<li>freqBodyGyroJerkMagnitudeStdDev</li>
</ul>