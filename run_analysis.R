setwd("C:/Users/Sam/SkyDrive/Coursera/GettingCleaning/UCI HAR Dataset")
test<-read.table("./test/X_test.txt")
train<-read.table("./train/X_train.txt")

testppl<-read.table("./test/subject_test.txt")
trainppl<-read.table("./train/subject_train.txt")


#Bind the rows together now
allrows<-rbind(test,train)
allppl<-rbind(testppl,trainppl)

#add the subjects to the rows
allrows$sbjct<-allppl

#Load the list of column names
colnames<-read.table("features.txt")

#Load the stringr library, which will enable an instring search function
library(stringr)

#Figuring out which Columns are related to 'mean' and 'std' by searching for those words
meansTF<-str_detect(colnames$V2,"mean")
stdTF<-str_detect(colnames$V2,"std")

#Subsetting the master all file to show only mean and std columns
meanandstd<-allrows[ ,meansTF|stdTF]
colnamestouse<-colnames$V2[meansTF|stdTF]

#Assigning Correct Colnames
colnames(meanandstd)<-colnamestouse
colnames(meanandstd)[80]="sbjct"

#Assigning the activity name for each task; assuming each was done in order, looping.
taskshortvect<-c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")
tasklongvect <- rep(taskshortvect,1717)

#Subsetting to 10299, a kludgey way to prepare for the column-addition
tasklongvect<-tasklongvect[1:10299]

#adding the activity column
meanandstd$activity<-tasklongvect

#melting the data
library(reshape2)
namestomelt<-names(meanandstd)
namestomelt<-namestomelt[1:79]
namestomelt<-c(namestomelt,"activity")

## I thought this would work, but it keeps throwing an error I can't seem to figure out:
##melted<-melt(meanandstd, id.vars="sbjct",measure.vars=namestomelt)

##AS such, and  to prove that I understand the concept-- I'll melt as follows.  
##Submitting this non-complete result, simply for some credit.
##Will return and troubleshoot this more later.  
##Apologies for the incompleteness, but definitely learned a lot even getting just this far!
melted<-melt(meanandstd, id.vars="sbjct",measure.vars=c("activity"))
write.table(melted, file="submission.txt", row.name=FALSE)
