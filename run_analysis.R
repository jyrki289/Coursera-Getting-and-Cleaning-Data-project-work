
### COURSERA PROJECT: Getting and Cleaning Data ################################
# This Script:
#   - Creates a tidy dataset from UCI HAR DATASET
#
# Conditions: 
#   - UCI HAR DATASETs must be found as a subfolder of current working directory
#   - Subfolder name should be: UCI HAR Dataset
#   - dplyr library is needed, when creating tidydata (aggregation phase) 
#
# Usage:
#   - execute command source('run_analysis.R')
#
# Created tidydataset.txt:
#   - a tidy data set with the average values for each variable for each activity and each subject
#   - column separator is " " 
#   - no rownames
#   - columnheaders included
#   - tidydataset.txt will be created to working directory
#   - decimal point = .
###############################################################################

## please, set workingdirectory and check that data locate under subfolder UCI HAR Dataset
## please check that dplyr is loaded
## if you run interactively you can set yor working directory here and uncommit dplyr

#setwd("yor working directory")
#library(dplyr)

################ PHASE: Data Reading and combining #######################
## Phase Goal: Read data from txt files and give column headers
##  1.1 Read data from files, there was not headers, and merge data
##  1.2 Set column headers to the data imported
##  1.3 get label to activityid (rows in activity column)
##########################################################################


#1.1    -create training data
train <- 
        cbind(
        read.table("UCI HAR Dataset/train/subject_train.txt",header=FALSE), #imports subject_train.txt
        read.table("UCI HAR Dataset/train/y_train.txt",header=FALSE), #imports y_train.txt
        read.table("UCI HAR Dataset/train/X_train.txt",header=FALSE) #imports x_train.txt
       
        )
#1.1  - create test data
test <- 
        cbind(
        read.table("UCI HAR Dataset/test/subject_test.txt",header=FALSE), #imports subject_test.txt
        read.table("UCI HAR Dataset/test/y_test.txt",header=FALSE), #imports y_test.txt
        read.table("UCI HAR Dataset/test/X_test.txt",header=FALSE) #imports x_test.txt

        )

#1.1 put training and test data together
analysedata <- rbind (test, train)

#1.2 Import features data, select varible names and add those nvar names to analyseData  
features      <- read.table("UCI HAR Dataset/features.txt",header=FALSE, stringsAsFactors = FALSE)
features <- features[,2]
colnames(analysedata) <- c("subjectid", "activityid", c(features))

#1.3 Import activity lables data, define activityid for merge operation, merge activitylabel data with analyseData by acitivityid 
activitytype  <- read.table("./UCI HAR Dataset/activity_labels.txt",header=FALSE, stringsAsFactors = FALSE)
colnames(activitytype) <- c("activityid", "activity")
analysedata <- merge(activitytype, analysedata, by="activityid", all.y=TRUE)


############### PHASE: Modify analyseData for needed measurements ##########################
## Phase Goal: dataset that include only desired columns: IDs, means, sd; 
#               with descriptive variable names
##  2.1 Create a vector for the column names from the finalData
##  2.2 Create a Vector that contains TRUE values for the ID, mean() & stddev() columns
##  2.3 Overwrite analyseData (DF) based on the logicalVector to keep only desired columns
##  2.4 create more descriptive column names. 
############################################################################################


#2.1 take columnnames for logical vector which is used to variables selection
columnnames  <- colnames(analysedata) 

#2.2 logical vector. TRUE for desired columns/variables. 
logicalvector <-    (   
                        (grepl("activity",columnnames) & ! grepl("activityid",columnnames)) 
                        | grepl("subjectid",columnnames) 
                        |(grepl("-mean",columnnames) & !grepl("-meanFreq",columnnames))
                        | grepl("-std..",columnnames) 
                    )
#2.3 select columns based on logicalVector, and overwrite analyseData
analysedata <- analysedata[,logicalvector==TRUE]

#2.4 recreate more descriptive variable/column names
columnnames  <- colnames(analysedata)
for (i in 1:length(columnnames)) 
{
    columnnames[i] <- gsub("\\()","",columnnames[i])
    columnnames[i] <- gsub("-std","StdDev",columnnames[i])
    columnnames[i] <- gsub("-mean","Mean",columnnames[i])
    columnnames[i] <- gsub("^(t)","time",columnnames[i])
    columnnames[i] <- gsub("^(f)","freq",columnnames[i])
    columnnames[i] <- gsub("([Gg]ravity)","Gravity",columnnames[i])
    columnnames[i] <- gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body",columnnames[i])
    columnnames[i] <- gsub("[Gg]yro","Gyro",columnnames[i])
    columnnames[i] <- gsub("AccMag","AccMagnitude",columnnames[i])
    columnnames[i] <- gsub("([Bb]odyaccjerkmag)","BodyAccJerkMagnitude",columnnames[i])
    columnnames[i] <- gsub("JerkMag","JerkMagnitude",columnnames[i])
    columnnames[i] <- gsub("GyroMag","GyroMagnitude",columnnames[i])
}

#2.4 Replase analysedata column headers with modified more descriptive column headers
colnames(analysedata) <- columnnames


############### PHASE: Modify analysedata to tidydata ##########################
## Phase Goal: exported tidydata
##  3.1 Summarize (mean) analyse data for activity and subject
##  3.2 create file tidydata.txt 
################################################################################

#3.1 Summarizing the finalDataNoActivityType table to include just the mean of each variable for each activity and each subject
tidydata <- group_by(analysedata, activity, subjectid)
tidydata <- summarise_each(tidydata, funs(mean))

#3.2write tidyData set to working directory
write.table(tidydata, "tidydata.txt", row.names=FALSE, dec=".", sep=" ")
