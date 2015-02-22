# Getting-and-Cleaning-Data-Project
This is the repo for Getting and Cleaning Data Course Project. Here include a tidydata set, a run_analysis.R which is the code to get that tidydata set, a Code Book and a folder containing feature information and original readme file from the zip file.

##About the data for the project 
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##About the R script
<p>The R script assumes the zip file has been downloaded, unzipped, and stored in the working directory. The script assumes itself has been stored in the working directory as well, with the following files and folders: </p>
<li>activity_labels.txt</li>
<li>features.txt</li>
<li>feature.info.txt</li>
<li>README.txt</li>
<li>test/</li>
<li>train/</li>
<p>The output tidydata.txt will also be created here.</p>
<p>The R script requires reshape2 package </p>

##Goals of the R script 
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

##Walkthrough of the R script
<p>Step1:</p> 
<p>part.a.</p>
<p>read all subject, X, and Y files using read.table </p>
<p>combine X files, Y files, and subject files by rbind </p>
<p>now there are three key var: data, sub, and label</p>
<p>other unnessery var can be removed now</p>
<p>part.b.</p> 
<p>give names to sub and label (refers to the original goal 4) </p>
<p>combine them to a new var data_comb using cbind </p>
<p>read features file and use character for renaming var dat</p>
<p>now there are two key var data and data_comb, both have names</p> 
<p>part.c. </p>
<p>merge data and data_comb together to var workdata </p>
    
<p>Step2:</p>
<p>use subset to extract only mean and standard and keep subject and activity from workdata</p>
<p>in the subset, use grep to extract mean (refers to mean) and std (refers to standard) from workdata's name</p>
<p>the new var is called dat</p>

<p>Step3: </p>
<p>read activity_labels.txt, the second col shows activity names</p>
<p>replace activity ids from var dat with activity names from the second col from activity_labels.txt </p>
<p>now the var dat is using descriptive activity name</p>

<p>Step4:</p>
<p>this step has been achieved by Step1 part.b.</p>
  
<p>Step5:</p>
<p>use melt and dcast from reshape2 package to create a tidy data set</p>
<p>in this tidy data set shows mean of each variable for each activity and each subject</p>
<p>save the tidy data set into a txt file by write.table</p>
<p>the tidy data set could be read by read.table (ps.sep=",") </p>
