dat.test <- read.table("test/X_test.txt")
sub.test <- read.table("test/subject_test.txt")
label.test <- read.table("test/Y_test.txt")

dat.train <- read.table("train/X_train.txt")
sub.train <- read.table("train/subject_train.txt")
label.train <- read.table("train/Y_train.txt")

data <- rbind(dat.train, dat.test)
sub <- rbind(sub.train, sub.test)
label <- rbind(label.train, label.test)

rm(dat.test,dat.train, sub.test, sub.train, label.test, label.train)

names(sub)<-c("subject")
names(label)<-c("activity")
data.comb<-cbind(sub, label)

data.names <- read.table("features.txt")
data.name <- as.character(data.names$V2)
names(data)<-data.name
workdata <- cbind(data.comb, data)

dat <- subset(workdata, select=c("subject", "activity", names(workdata)[grep(("mean\\(\\)|std\\(\\)"), names(workdata))]))

activitylabel <- read.table("activity_labels.txt")
activitylabel$V2 <- as.character(activitylabel$V2)
dat$activity <- activitylabel$V2[dat$activity]

library(reshape2) 
tidy<- melt(dat, id.vars=c("subject", "activity"))
tidydat <- dcast(tidy, subject+activity ~variable, mean)

write.table(tidydat, file="tidydata.txt", sep=",", row.name=FALSE)