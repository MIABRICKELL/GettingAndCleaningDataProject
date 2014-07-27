GettingAndCleaningDataProject
=============================

Project for Getting and Cleaning Data

I created a run_analysis() function that does the following:

Downloads and unzips a zip file of Samsung Smartphone Data at the following url into your working directory:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data is data collected from the accelerometers from the Samsung Galaxy S smartphone.

Please see CodeBook.md for descriptions of the data.


1) Loads each file for the test and train datasets along with the activity labels and features(measurements).
2) Removes all features that aren't mean or standard deviation
3) Gives the y_ data frames descriptive headers to make it easier moving forward when combining datasets.
4) Merges the x and y dataframes of both test and train dataframes (independently)
5) Then appends the test and train datasets together
6) Renames the columns to make merge easier
7) Merge the appended dataset with the activity names by activityid to include the descriptive activity names for each row
8) Reorder the columns after the merge
9) Sort the rows by Subject and Activity
10) Make the variable names more descriptive doing the following steps:
	#Replace the t's at the beginning of each variable with "Time"
	#Replace the f's at the beginning of each variable with "Frequency"
	#Replace mag with Magnitude
	#Replace Acc with Accelerometer
	#Replace Gyro with Gyroscope
	#Replace -mean() with Mean
	#Replce -std() with StandardDeviation
	#Replace -X with XDirection
	#Replace -Y with YDirection
	#Replace -Z with ZDirection
* Due to the length of the names I used Camelcase to distinguish the individual parts of the name

11) Melt the variables by subject and activity
12) Calculate averages for each variable by subject and activity
13) Add Average to the beginning of each of the varaibles since this second tidy dataset is now averages
14) Writes out the tidy dataframe of averages to a comma delimited text file
This data can be read into R with the command tidy<-read.table("tidydata.txt", sep = ",", header=TRUE)

15) The final tidy dataset is returned by the function.

