# to analyse data for Data Science Specialization course, J Hopkins University
# Getting and Cleaning Data, Peer Review
# 2020.06.21 Saverio Tufano
# !!!!READ ME!!!! #######
# Create a Folder called "Samsung Data" and put all the excercise files there

#rm(list = ls()) # just to clear the environment

### PART1: Merges the training and the test sets to create one data set
c_names <- read.table("./Samsung Data/features.txt", header = FALSE, sep = "", colClasses = "character") # read feature names (they will be assigned as 561 column names)

x_test <- read.table("./Samsung Data/test/X_test.txt", header = FALSE, sep = "", row.names = NULL) # read Test dataset
x_sub <- read.table("./Samsung Data/test/subject_test.txt", header = FALSE, sep = "") # read Test dataset subject for each row
x_act <- read.table("./Samsung Data/test/y_test.txt", header = FALSE, sep = "") # read Test dataset activity for each row

names(x_test) <- c_names[,2] # assign column names to Test dataset based on "features.txt"
x_test$subject <- x_sub[,1]
x_test$activity <- x_act[,1]

x_train <- read.table("./Samsung Data/train/X_train.txt", header = FALSE, sep = "") # read Training dataset
x_sub <- read.table("./Samsung Data/train/subject_train.txt", header = FALSE, sep = "") # read Test dataset subjecte for each row
x_act <- read.table("./Samsung Data/train/y_train.txt", header = FALSE, sep = "") # read Test dataset activity for each row
names(x_train) <- c_names[,2] # assign column names to Test dataset based on features
x_train$subject <- x_sub[,1]
x_train$activity <- x_act[,1]
x_all <- rbind(x_train,x_test)
rm(x_sub, x_act, c_names, x_train, x_test)

### PART 2: Extracts only the measurements on the mean and standard deviation for each measurement 
x_sel <- x_all[grepl("mean()|std()", colnames(x_all))] # extract columns that only contain mean() or std()
x_sel <- cbind("subject" = x_all$subject, "activity" = x_all$activity, x_sel)
rm(x_all)

### PART3: Uses descriptive activity names to name the activities in the data set
act_des <- read.table("./Samsung Data/activity_labels.txt")
library(dplyr)
x_sel <- mutate(x_sel, activity_description = act_des[x_sel$activity,][,2])
rm(act_des)

### PART4: Appropriately labels the data set with descriptive variable names. 
f <- function(x){ # function containing the gsub calls to improve column naming 
    a <- colnames(x)
    a0 <- gsub("^f", "Freq_", a)
    a1 <- gsub("^t", "Time_", a0)
    a2 <- gsub("Body", "Body_", a1)
    a3 <- gsub("Acc", "Acceleration_", a2)
    a4 <- gsub("mean", "Mean_", a3)
    a5 <- gsub("std", "Std_Dev", a4)
    a6 <- gsub("\\()","", a5)
    colnames(x) <- a6}

colnames(x_sel) <- f(x_sel) # assign column names using "f" function

### PART5: From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
subj <- group_by(x_sel, subject, activity)
subj <- summarise_if(subj, is.numeric, mean, na.rm = TRUE)
write.table(subj, file = "tidy.txt", row.names = FALSE, sep = ",")
