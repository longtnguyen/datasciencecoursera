## Getting and Cleaning Data Project
### Description
Information about the transformations and variables in the course project for the Getting and Cleaning Data course.

### Source Data
A full description of the data used in this project can be found here: [Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

The data collected for this project can be download [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

### Experiment data information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Data Attribute
For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment.

### Step 1. Read the data into R, Merge data into a single table
Download and extract the file into the working directory.

After extracting the files, read each of these files into tables of the same name (minus .txt)
- features.txt
- activity_labels.txt
- subject_train.txt
- X_train.txt
- Y_train.txt
- subject_test.txt
- X_test.txt
- Y_test.txt

Assign column names and merge to create one data set.

### Step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
Create a vector that match std, mean, subject and activity
Keep only the column that match, discard the rest of the data.

## Step 3. Uses descriptive activity names to name the activities in the data set
Use activity labels to replace 1-6 with actual activity names (WALKING, SITTING etc..)

## Step 4. Use more descriptive name for activity and column name
Use pattern replacement to fix up column name (get rid of symbols, abbriviations)

## Step 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Create data_by_subject_activity.txt that contain the average of each variable for each activity and each subject.