# read relevant files into variables
dat.test <- read.table("test/X_test.txt") 
sub.test <- read.table("test/subject_test.txt")
label.test <- read.table("test/Y_test.txt")

dat.train <- read.table("train/X_train.txt")
sub.train <- read.table("train/subject_train.txt")
label.train <- read.table("train/Y_train.txt")

# combine files together for future use
data <- rbind(dat.train, dat.test)
sub <- rbind(sub.train, sub.test)
label <- rbind(label.train, label.test)

# remove unneccessary variables
rm(dat.test,dat.train, sub.test, sub.train, label.test, label.train)

# give names and combine subject and activity label together 
names(sub)<-c("subject")
names(label)<-c("activity")
data.comb<-cbind(sub, label)

# read features file and use character for renaming
data.names <- read.table("features.txt")
data.name <- as.character(data.names$V2)
names(data) <- data.name

# merge training and test together
workdata <- cbind(data.comb, data)

# extract only mean and standard and keep subject and activity
dat <- subset(workdata, select=c("subject", "activity", names(workdata)[grep(("mean\\(\\)|std\\(\\)"), names(workdata))]))

# replace activity ids with activity names
activitylabel <- read.table("activity_labels.txt")
activitylabel$V2 <- as.character(activitylabel$V2)
dat$activity <- activitylabel$V2[dat$activity]

# use reshape2 package to create a tidy data set
library(reshape2) 
tidy<- melt(dat, id.vars=c("subject", "activity"))
tidydat <- dcast(tidy, subject+activity ~variable, mean)

# create tidy data set in txt format
write.table(tidydat, file="tidydata.txt", sep=",", row.name=FALSE)
