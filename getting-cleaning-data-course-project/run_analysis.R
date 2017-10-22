library(dplyr)
# Read data from txt file, keep variable name the same as file name
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
Y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt", header=FALSE)
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE)
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
Y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt", header=FALSE)
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE)
features <- read.table("./UCI HAR Dataset/features.txt", as.is=TRUE)
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE)

# Combine data into a single table
combinedTraining <- cbind(subject_train, X_train, Y_train)
combinedTesting <- cbind(subject_test, X_test, Y_test)
combinedData <- rbind(combinedTraining, combinedTesting)

# Assign name to column
colnames(combinedData) <- c("subject", features[, 2], "activity")

# Keep only column with subject, activity, mean and standard deviation
cols_keep <- grepl("subject|activity|mean|std", colnames(combinedData))
combinedData <- combinedData[, cols_keep]

# Replace activity with name of actual activity
combinedData$activity <- factor(combinedData$activity, levels = activity_labels[, 1], labels = activity_labels[, 2])

# Fix column name, this part has to be done case by case
# Get column names
combinedDataCols <- colnames(combinedData)

# Get rid of (, ) and -
combinedDataCols <- gsub("[\\(\\)\\-]", "", combinedDataCols)

# Make name more descriptive
combinedDataCols <- gsub("^f", "frequencyDomain", combinedDataCols)
combinedDataCols <- gsub("^t", "timeDomain", combinedDataCols)
combinedDataCols <- gsub("Acc", "Accelerometer", combinedDataCols)
combinedDataCols <- gsub("Gyro", "Gyroscope", combinedDataCols)
combinedDataCols <- gsub("Mag", "Magnitude", combinedDataCols)
combinedDataCols <- gsub("Freq", "Frequency", combinedDataCols)
combinedDataCols <- gsub("mean", "Mean", combinedDataCols)
combinedDataCols <- gsub("std", "StandardDeviation", combinedDataCols)
combinedDataCols <- gsub("BodyBody", "Body", combinedDataCols)

# Replace column name with more descriptive one
colnames(combinedData) <- combinedDataCols

# Group data by subject and activity, summarize using mean for each one
combinedDataMean <- combinedData %>% 
  group_by(subject, activity) %>%
  summarise_all(funs(mean))

# Write file
write.table(combinedDataMean, "data_by_subject_activity.txt", row.names = FALSE)
