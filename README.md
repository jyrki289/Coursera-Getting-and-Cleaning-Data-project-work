
run_analysis.R
==============

License about source/original data used in this script:
  
<em>
Use of this dataset in publications must be acknowledged by referencing the following publication [1] </em>

<em>[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012</em>

<em>This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.</em>

<em>Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
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
<ol>
<li>subject_test.txt, X_test.txt and y_test.txt datas are combined to one test data at same time that those data are read with script.</li> 
<li>subject_train.txt, X_train.txt and y_train.txt datas are combined to one traind data at same time that those data are read with script.</li>  
<li>After combaining test and train datasets, those two are rowcombined to one analyseData set.</li>
</ol>
<strong>Data manipulations</strong>

Following manipulations is made to combained analysesData dataset:

<ul>
<li>Activities number/code is replased according to UCI HAR Dataset/activity_labels.txt</li>
<li>Only columns related to mean (mean) and standard deviation (std) are included in the result</li>
<li>Column averages are calculated for each activity and subject</li>
<li>Columns are named as activity, subjectid, and mesured variables are named according <em>features.txt</em> file.</li>
<li>columns are also named by following rules</li>
<ul>
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
</ul>
</ul>

Outputs
-------
Created tidy data set with the average of each variable for each activity and each subject.

Usage
-----

In r console you can run following command: <strong>source('run_analysis.R')</strong>  
<em><strong>Please check Preconditions.</strong></em>  
<strong>Look code book of data from separate CodeBook.md file.</strong>
