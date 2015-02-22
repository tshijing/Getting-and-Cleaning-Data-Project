# Getting-and-Cleaning-Data-Project
This is the repo for Getting and Cleaning Data Course Project. Here include a tidydata set, a run_analysis.R which is the code to get that tidydata set, a Code Book and a folder containing feature information and original readme file from the zip file.

##About the data for the project 
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##About the R script
The R script assumes the zip file has been downloaded, unzipped, and stored in the working directory. The script assumes itself has been stored in the working directory as well, with the following files and folders: 
  activity_labels.txt
  features.txt
  feature.info.txt
  README.txt
  test/
  train/
The output tidydata.txt will also be created here.
The R script requires reshape2 package 

##Goals of the R script 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Walkthrough of the R script
Step1: 
  part.a.
    read all subject, X, and Y files using read.table 
    combine X files, Y files, and subject files by rbind
    now there are three key var: data, sub, and label
    other unnessery var can be removed now
  part.b. 
    give names to sub and label (refers to the original goal 4) 
    combine them to a new var data_comb using cbind
    read features file and use character for renaming var dat
    now there are two key var data and data_comb, both have names 
  part.c. 
    merge data and data_comb together to var workdata
    
Step2:
  use subset to extract only mean and standard and keep subject and activity from workdata
  in the subset, use grep to extract mean (refers to mean) and std (refers to standard) from workdata's name
  the new var is called dat

Step3: 
  read activity_labels.txt, the second col shows activity names
  replace activity ids from var dat with activity names from the second col from activity_labels.txt 
  now the var dat is using descriptive activity name

Step4:
  this step has been achieved by Step1 part.b.
  
Step5:
  use melt and dcast from reshape2 package to create a tidy data set
  in this tidy data set shows mean of each variable for each activity and each subject
  save the tidy data set into a txt file by write.table
  the tidy data set could be read by read.table (ps.sep=",") 