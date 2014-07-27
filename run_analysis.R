run_analysis <- function() {

#download the Samsung data
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile="project.zip" )

#unzip the file
unzip("project.zip")

#load the train and test datasets (y_, x_, subject_)
xtrain<-read.table("./UCI HAR Dataset/train/x_train.txt", stringsAsFactors=F)
ytrain<-read.table("./UCI HAR Dataset/train/y_train.txt", stringsAsFactors=F)
subtrain<-read.table("./UCI HAR Dataset/train/subject_train.txt", stringsAsFactors=F)

xtest<-read.table("./UCI HAR Dataset/test/x_test.txt", stringsAsFactors=F)
ytest<-read.table("./UCI HAR Dataset/test/y_test.txt", stringsAsFactors=F)
subtest<-read.table("./UCI HAR Dataset/test/subject_test.txt", stringsAsFactors=F)

#load the feature list
feat<-read.table("./UCI HAR Dataset/features.txt", stringsAsFactors=F)

#load the activity list
acts<-read.table("./UCI HAR Dataset/activity_labels.txt", stringsAsFactors=F)

#rename column headers for the activity labels
names(acts)<-c("activityid", "activity")

#filter feature list on mean() and std() 
subfeat<-feat[grep("-mean+[()]|-std+[()]", feat[,2]), ]

#remove columns from the data that aren't mean() or std()
xtrainms<-subset(xtrain, select = subfeat[,1])
xtestms<-subset(xtest, select = subfeat[,1])


#give the y_ and subject_ datsets descriptive column headers
names(ytrain)<-c("activityid")
names(subtrain)<-c("subject")

names(ytest)<-c("activityid")
names(subtest)<-c("subject")

#merge the y_ and x_ and subject_ datasets
trainxy<-cbind(ytrain, xtrainms)
trainxysub<-cbind(subtrain, trainxy)

testxy<-cbind(ytest, xtestms)
testxysub<-cbind(subtest, testxy)

#merge the train and test datasets
semifinal<-rbind(trainxysub, testxysub)

#rename the columns
names(semifinal)<-c("subject", "activityid", subfeat[,2])

#merge the activity names
final<-merge(acts, semifinal, by.x = "activityid", by.y ="activityid")
final$activityid<-NULL
#reoder columns after merge
final<-subset(final, select=c("subject", 'activity', subfeat[, 2]))

#order by subject, activity
final<-arrange(final, subject, activity)

#Rename the variable headers to be more descriptive - use camel case to improve readability
#Replace the t's at the beginning of each variable with "Time"
names(final)<-gsub("^t", "Time", names(final))
#Replace the f's at the beginning of each variable with "Frequency"
names(final)<-gsub("^f", "Frequency", names(final))
#Replace mag with Magnitude
names(final)<-gsub("Mag", "Magnitude", names(final))
#Replace Acc with Accelerometer
names(final)<-gsub("Acc", "Accelerometer", names(final))
#Replace Gyro with Gyroscope
names(final)<-gsub("Gyro", "Gyroscope", names(final))
#Replace -mean() with Mean
names(final)<-gsub("-mean\\(\\)", "Mean", names(final))
#Replce -std() with StandardDeviation
names(final)<-gsub("-std\\(\\)", "StandardDeviation", names(final))
#Replace -X with XDirection
names(final)<-gsub("-X", "XDirection", names(final))
#Replace -Y with YDirection
names(final)<-gsub("-Y", "YDirection", names(final))
#Replace -Z with ZDirection
names(final)<-gsub("-Z", "ZDirection", names(final))

#final is now a tidy dataset before averaging - can output to a file here if necessary

#get a list of measure column names
finalfeat<-names(final[3:68])

#Calculate avg of each variable per subject and activity
#Get the list of measures
##tidymeasures<-c(subfeat[,2])
tidymeasures<-c(finalfeat)
#melt the data measures by subject and activity
tidy<-melt(final, id=c("subject", "activity"), measures.vars=tidymeasures)

#caluclate average by subject and activity and format data properly
tidyfinal <- dcast(tidy, subject + activity ~ variable, mean)

#Now that all of the variables are averages - add a prefix of Average to the variables
names(tidyfinal)<-gsub("^Time", "AverageTime", names(tidyfinal))
names(tidyfinal)<-gsub("^Frequency", "AverageFrequency", names(tidyfinal))

#write out the tidy data frame to a file
write.table(tidyfinal,file="tidydata.txt", sep=",", row.names=FALSE)

#returns the finaltidy datset of averages
tidyfinal

}
