CodeBook
=================

Original Study:
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals and included in the dataset were
Mean value
Standard deviation

For this tidy dataset the following variable names were used.

subject - This is the subject(person) that was used in the study. There were 30 subjects. (1-30)                                                         
activity - There were six activities that were monitored as follows (1-WALKING
 2-WALKING_UPSTAIRS 
3-WALKING_DOWNSTAIRS
 4SITTING
 5-STANDING
 6-LAYING)
. Each activity is listed for each subject as a string of characters.

variables -

The following are variables/measure names that were used in creating the first tidy dataset of means and standard deviations of study described above:

TimeBodyAccelerometerMeanXDirection
TimeBodyAccelerometerMeanYDirection
TimeBodyAccelerometerMeanZDirection                         
TimeBodyAccelerometerStandardDeviationXDirection
TimeBodyAccelerometerStandardDeviationYDirection            
TimeBodyAccelerometerStandardDeviationZDirection            
TimeGravityAccelerometerMeanXDirection                      
TimeGravityAccelerometerMeanYDirection                      
TimeGravityAccelerometerMeanZDirection                      
TimeGravityAccelerometerStandardDeviationXDirection        
TimeGravityAccelerometerStandardDeviationYDirection         
TimeGravityAccelerometerStandardDeviationZDirection         
TimeBodyAccelerometerJerkMeanXDirection                     
TimeBodyAccelerometerJerkMeanYDirection                     
TimeBodyAccelerometerJerkMeanZDirection                     
TimeBodyAccelerometerJerkStandardDeviationXDirection
TimeBodyAccelerometerJerkStandardDeviationYDirection        
TimeBodyAccelerometerJerkStandardDeviationZDirection        
TimeBodyGyroscopeMeanXDirection                             
TimeBodyGyroscopeMeanYDirection                             
TimeBodyGyroscopeMeanZDirection                             
TimeBodyGyroscopeStandardDeviationXDirection
TimeBodyGyroscopeStandardDeviationYDirection                
TimeBodyGyroscopeStandardDeviationZDirection                
TimeBodyGyroscopeJerkMeanXDirection                 
TimeBodyGyroscopeJerkMeanYDirection                         
TimeBodyGyroscopeJerkMeanZDirection                         
TimeBodyGyroscopeJerkStandardDeviationXDirection
TimeBodyGyroscopeJerkStandardDeviationYDirection            
TimeBodyGyroscopeJerkStandardDeviationZDirection            
TimeBodyAccelerometerMagnitudeMean                          
TimeBodyAccelerometerMagnitudeStandardDeviation
TimeGravityAccelerometerMagnitudeMean                       
TimeGravityAccelerometerMagnitudeStandardDeviation
TimeBodyAccelerometerJerkMagnitudeMean           
TimeBodyAccelerometerJerkMagnitudeStandardDeviation
TimeBodyGyroscopeMagnitudeMean          
TimeBodyGyroscopeMagnitudeStandardDeviation
TimeBodyGyroscopeJerkMagnitudeMean
TimeBodyGyroscopeJerkMagnitudeStandardDeviation
FrequencyBodyAccelerometerMeanXDirection                    
FrequencyBodyAccelerometerMeanYDirection                    
FrequencyBodyAccelerometerMeanZDirection                    
FrequencyBodyAccelerometerStandardDeviationXDirection       
FrequencyBodyAccelerometerStandardDeviationYDirection       
FrequencyBodyAccelerometerStandardDeviationZDirection       
FrequencyBodyAccelerometerJerkMeanXDirection                
FrequencyBodyAccelerometerJerkMeanYDirection                
FrequencyBodyAccelerometerJerkMeanZDirection                
FrequencyBodyAccelerometerJerkStandardDeviationXDirection   
FrequencyBodyAccelerometerJerkStandardDeviationYDirection   
FrequencyBodyAccelerometerJerkStandardDeviationZDirection   
FrequencyBodyGyroscopeMeanXDirection                        
FrequencyBodyGyroscopeMeanYDirection                        
FrequencyBodyGyroscopeMeanZDirection                        
FrequencyBodyGyroscopeStandardDeviationXDirection           
FrequencyBodyGyroscopeStandardDeviationYDirection           
FrequencyBodyGyroscopeStandardDeviationZDirection           
FrequencyBodyAccelerometerMagnitudeMean                     
FrequencyBodyAccelerometerMagnitudeStandardDeviation        
FrequencyBodyBodyAccelerometerJerkMagnitudeMean             
FrequencyBodyBodyAccelerometerJerkMagnitudeStandardDeviation
FrequencyBodyBodyGyroscopeMagnitudeMean                     
FrequencyBodyBodyGyroscopeMagnitudeStandardDeviation        
FrequencyBodyBodyGyroscopeJerkMagnitudeMean                 
FrequencyBodyBodyGyroscopeJerkMagnitudeStandardDeviation                                       

The following are variables that were used to create the second tidy dataset. Average was added as a prefix because these are calculating the average mean and standard deviation of each measure.:

AverageTimeBodyAccelerometerMeanXDirection
AverageTimeBodyAccelerometerMeanYDirection
AverageTimeBodyAccelerometerMeanZDirection                         
AverageTimeBodyAccelerometerStandardDeviationXDirection
AverageTimeBodyAccelerometerStandardDeviationYDirection            
AverageTimeBodyAccelerometerStandardDeviationZDirection            
AverageTimeGravityAccelerometerMeanXDirection                      
AverageTimeGravityAccelerometerMeanYDirection                      
AverageTimeGravityAccelerometerMeanZDirection                      
AverageTimeGravityAccelerometerStandardDeviationXDirection        
AverageTimeGravityAccelerometerStandardDeviationYDirection         
AverageTimeGravityAccelerometerStandardDeviationZDirection         
AverageTimeBodyAccelerometerJerkMeanXDirection                     
AverageTimeBodyAccelerometerJerkMeanYDirection                     
AverageTimeBodyAccelerometerJerkMeanZDirection                     
AverageTimeBodyAccelerometerJerkStandardDeviationXDirection
AverageTimeBodyAccelerometerJerkStandardDeviationYDirection        
AverageTimeBodyAccelerometerJerkStandardDeviationZDirection        
AverageTimeBodyGyroscopeMeanXDirection                             
AverageTimeBodyGyroscopeMeanYDirection                             
AverageTimeBodyGyroscopeMeanZDirection                             
AverageTimeBodyGyroscopeStandardDeviationXDirection
AverageTimeBodyGyroscopeStandardDeviationYDirection                
AverageTimeBodyGyroscopeStandardDeviationZDirection                
AverageTimeBodyGyroscopeJerkMeanXDirection                 
AverageTimeBodyGyroscopeJerkMeanYDirection                         
AverageTimeBodyGyroscopeJerkMeanZDirection                         
AverageTimeBodyGyroscopeJerkStandardDeviationXDirection
AverageTimeBodyGyroscopeJerkStandardDeviationYDirection            
AverageTimeBodyGyroscopeJerkStandardDeviationZDirection            
AverageTimeBodyAccelerometerMagnitudeMean                          
AverageTimeBodyAccelerometerMagnitudeStandardDeviation
AverageTimeGravityAccelerometerMagnitudeMean                       
AverageTimeGravityAccelerometerMagnitudeStandardDeviation
AverageTimeBodyAccelerometerJerkMagnitudeMean           
AverageTimeBodyAccelerometerJerkMagnitudeStandardDeviation
AverageTimeBodyGyroscopeMagnitudeMean          
AverageTimeBodyGyroscopeMagnitudeStandardDeviation
AverageTimeBodyGyroscopeJerkMagnitudeMean
AverageTimeBodyGyroscopeJerkMagnitudeStandardDeviation
AverageFrequencyBodyAccelerometerMeanXDirection                    
AverageFrequencyBodyAccelerometerMeanYDirection                    
AverageFrequencyBodyAccelerometerMeanZDirection                    
AverageFrequencyBodyAccelerometerStandardDeviationXDirection       
AverageFrequencyBodyAccelerometerStandardDeviationYDirection       
AverageFrequencyBodyAccelerometerStandardDeviationZDirection       
AverageFrequencyBodyAccelerometerJerkMeanXDirection                
AverageFrequencyBodyAccelerometerJerkMeanYDirection                
AverageFrequencyBodyAccelerometerJerkMeanZDirection                
AverageFrequencyBodyAccelerometerJerkStandardDeviationXDirection   
AverageFrequencyBodyAccelerometerJerkStandardDeviationYDirection   
AverageFrequencyBodyAccelerometerJerkStandardDeviationZDirection   
AverageFrequencyBodyGyroscopeMeanXDirection                        
AverageFrequencyBodyGyroscopeMeanYDirection                        
AverageFrequencyBodyGyroscopeMeanZDirection                        
AverageFrequencyBodyGyroscopeStandardDeviationXDirection           
AverageFrequencyBodyGyroscopeStandardDeviationYDirection           
AverageFrequencyBodyGyroscopeStandardDeviationZDirection           
AverageFrequencyBodyAccelerometerMagnitudeMean                     
AverageFrequencyBodyAccelerometerMagnitudeStandardDeviation        
AverageFrequencyBodyBodyAccelerometerJerkMagnitudeMean             
AverageFrequencyBodyBodyAccelerometerJerkMagnitudeStandardDeviation
AverageFrequencyBodyBodyGyroscopeMagnitudeMean                     
AverageFrequencyBodyBodyGyroscopeMagnitudeStandardDeviation        
AverageFrequencyBodyBodyGyroscopeJerkMagnitudeMean                 
AverageFrequencyBodyBodyGyroscopeJerkMagnitudeStandardDeviation
