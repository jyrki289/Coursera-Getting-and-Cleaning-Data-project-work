Code book
=========
Original data which is used to generate this data is UCI HAR DATASET (Human Activity Recognition Using Smartphones Dataset). UCI HAR DATASET dataset can be found from url: "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

License notification about source/original data which is used to generate this dataset:
<em>"Use of this dataset in publications must be acknowledged by referencing the following publication [1] </em>
<em>[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012</em>
<em>This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited."</em>



File
----
<ul>
<li>Datafile: tidydata.txt</li>
<li>Columnames: columnames exist in first row</li>
<li>Column separator: " "</li>
<li>Decimal separator: "."</li>
<li>Rows in file: 180 obseravtion rows + 1 header row</li>
<li>Number of columns: 68</li>
<li>Number of complete cases: 180</li>
<li>no rownames exist</li>
</ul>

Variables:
----------

If you need more detailed information about variables please look SummaryStatOfVariables.pdf.

<strong>Identifier columns</strong>

Identifier column pair Activity + Subjectid defines unique key for observaion.
Original data features/measure data is aggregated my mean function over Activity and subject.
<ul>
<li>activity</li>

<ul>
<li>Activity label, actity performed by volunteer (subjectid) </li> 
<li>Type: character</li>
<li>Values: LAYING, SITTING, STANDING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS </li>
</ul>
</ul>
<ul>
<li>subjectid</li>

<ul>
<li>Identifier of volunteer</li>   
<li>Type: Numeric - Integer</li>  
<li>Values: 1 to 30</li> 
</ul>  
</ul>

<strong>Measure columns</strong>  
<ul>
<ul>
<li>All measure columns are numeric. Decimal separator is ".", negative symbol for value is "-".</li>   
<li>Letters (-X, -Y, -Z) in variables name is used to denote 3-axial signals in the X, Y and Z directions. </li>  
<li>Originals features was normalized and bounded within [-1,1]. In this data every feature measure is aggregated by mean function.</li>   
<li>On original data prefix 't' was to denote time, this 't' is changed to word' time' in this data set.</li>   
<li>On original data prefix 'f' was to indicate frequency domain signals, this 'f' is changed to word 'freq' in this data set</li>   
</ul>
</ul>
  
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