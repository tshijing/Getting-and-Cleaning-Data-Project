Code Book for Course Project
============================
##General information 
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

##Code Book for the tidy data set
###Variables
####subject
subject numbers 1:30 unique identifier to each subject
####activity
<p>activity lables:</p>
<p>"LAYING"</p>
<p>"SITTING"</p>
<p>"STANDING"</p>
<p>"WALKING"</p>
<p>"WALKING_DOWNSTAIRS"</p>
<p>"WALKING_UPSTAIRS"</p>
####features
<p>tBodyAcc-mean()-X</p>
<p>tBodyAcc-mean()-Y</p>
<p>tBodyAcc-mean()-Z</p>
<p>tBodyAcc-std()-X</p>
<p>tBodyAcc-std()-Y</p>
<p>tBodyAcc-std()-Z</p>
<p>tGravityAcc-mean()-X</p>
<p>tGravityAcc-mean()-Y</p>
<p>tGravityAcc-mean()-Z</p>
<p>tGravityAcc-std()-X</p>
<p>tGravityAcc-std()-Y</p>
<p>tGravityAcc-std()-Z</p>
<p>tBodyAccJerk-mean()-X</p>
<p>tBodyAccJerk-mean()-Y</p>
<p>tBodyAccJerk-mean()-Z</p>
<p>tBodyAccJerk-std()-X</p>
<p>tBodyAccJerk-std()-Y</p>
<p>tBodyAccJerk-std()-Z</p>
<p>tBodyGyro-mean()-X</p>
<p>tBodyGyro-mean()-Y</p>
<p>tBodyGyro-mean()-Z</p>
<p>tBodyGyro-std()-X</p>
<p>tBodyGyro-std()-Y</p>
<p>tBodyGyro-std()-Z</p>
<p>tBodyGyroJerk-mean()-X</p>
<p>tBodyGyroJerk-mean()-Y</p>
<p>tBodyGyroJerk-mean()-Z</p>
<p>tBodyGyroJerk-std()-X</p>
<p>tBodyGyroJerk-std()-Y</p>
<p>tBodyGyroJerk-std()-Z</p>
<p>tBodyAccMag-mean()</p>
<p>tBodyAccMag-std()</p>
<p>tGravityAccMag-mean()</p>
<p>tGravityAccMag-std()</p>
<p>tBodyAccJerkMag-mean()</p>
<p>tBodyAccJerkMag-std()</p>
<p>tBodyGyroMag-mean()</p>
<p>tBodyGyroMag-std()</p>
<p>tBodyGyroJerkMag-mean()</p>
<p>tBodyGyroJerkMag-std()</p>
<p>fBodyAcc-mean()-X</p>
<p>fBodyAcc-mean()-Y</p>
<p>fBodyAcc-mean()-Z</p>
<p>fBodyAcc-std()-X</p>
<p>fBodyAcc-std()-Y</p>
<p>fBodyAcc-std()-Z</p>
<p>fBodyAccJerk-mean()-X</p>
<p>fBodyAccJerk-mean()-Y</p>
<p>fBodyAccJerk-mean()-Z</p>
<p>fBodyAccJerk-std()-X</p>
<p>fBodyAccJerk-std()-Y</p>
<p>fBodyAccJerk-std()-Z</p>
<p>fBodyGyro-mean()-X</p>
<p>fBodyGyro-mean()-Y</p>
<p>fBodyGyro-mean()-Z</p>
<p>fBodyGyro-std()-X</p>
<p>fBodyGyro-std()-Y</p>
<p>fBodyGyro-std()-Z</p>
<p>fBodyAccMag-mean()</p>
<p>fBodyAccMag-std()</p>
<p>fBodyBodyAccJerkMag-mean()</p>
<p>fBodyBodyAccJerkMag-std()</p>
<p>fBodyBodyGyroMag-mean()</p>
<p>fBodyBodyGyroMag-std()</p>
<p>fBodyBodyGyroJerkMag-mean()</p>
<p>fBodyBodyGyroJerkMag-std()</p>

<p>The set of variables that were estimated from these signals are: </p>
<p>mean(): Mean value</p>
<p>std(): Standard deviation</p>

####Transformation
All the values are means, aggregated over 30 subjects and 6 activities. The tidydata set is 180 rows by 68 columns.