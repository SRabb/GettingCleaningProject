#Readme
##Original Source of Data Used
Data loaded directly from Zipped files and was originally produced by the following persons:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

##A quick background
30 Subjects used in the study, within an age bracket of 19-48 years.
Each subject (see column "sbjct") completed the same 6 tasks, shown below.

1.  WALKING
2.  WALKING_UPSTAIRS
3.  WALKING_DOWNSTAIRS
4.  SITTING
5.  STANDING
6.  LAYING

Each of these tasks were performed while being monitoried via a wrist-attached smartphone (Samsung Galaxy S II).  Their triaxial acceleration (from the phone's accelerometer) and Triaxial Angular velocity (from the phone's gyroscope) were recorded during these tasks.

##Very specific technical notes on observations:
From the original study, these recordings "were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain"

##What were the original data points recorded?
Of the 561 metrics originally recorded (see "features.txt", also in this repository), only the average score values ("mean" values) and standard deviation values ("std" values) were used in the submitted data set.

##A note on units of measurement, from the original study
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

1.  tBodyAcc-XYZ
2.  tGravityAcc-XYZ
3.  tBodyAccJerk-XYZ
4.  tBodyGyro-XYZ
5.  tBodyGyroJerk-XYZ
6.  tBodyAccMag
7.  tGravityAccMag
8.  tBodyAccJerkMag
9.  tBodyGyroMag
10.  tBodyGyroJerkMag
11.  fBodyAcc-XYZ
12.  fBodyAccJerk-XYZ
13.  fBodyGyro-XYZ
14.  fBodyAccMag
15.  fBodyAccJerkMag
16.  fBodyGyroMag
17.  fBodyGyroJerkMag

##All Originally Collected metrics;  note: only "mean" and "standard deviation" metrics are used in the actual data presented in this repo.

1.  mean(): Mean value
2.  std(): Standard deviation
3.  mad(): Median absolute deviation 
4.  max(): Largest value in array
5.  min(): Smallest value in array
6.  sma(): Signal magnitude area
7.  energy(): Energy measure. Sum of the squares divided by the number of values. 
8.  iqr(): Interquartile range 
9.  entropy(): Signal entropy
10.  arCoeff(): Autorregresion coefficients with Burg order equal to 4
11.  correlation(): correlation coefficient between two signals
12.  maxInds(): index of the frequency component with largest magnitude
13.  meanFreq(): Weighted average of the frequency components to obtain a mean frequency
14.  skewness(): skewness of the frequency domain signal 
15.  kurtosis(): kurtosis of the frequency domain signal 
16.  bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
17.  angle(): Angle between to vectors.

###Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

1.  gravityMean
2.  tBodyAccMean
3.  tBodyAccJerkMean
4.  tBodyGyroMean
5.  tBodyGyroJerkMean
