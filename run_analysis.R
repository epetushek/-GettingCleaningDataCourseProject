library(data.table)
library(reshape)

maindir <-"UCI HAR Dataset"

url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
dest_file <- "Dataset.zip"
download.file(url, destfile = dest_file, method = "curl")
d <- unzip(dest_file)

#Loading .txt files from directory "d"
activity_labels <- read.table(d[1], header=FALSE)
features <- read.table(d[2],header=FALSE)
subject_test <- read.table(d[14],header=FALSE)
X_test <- read.table(d[15],header=FALSE)
y_test <- read.table(d[16],header=FALSE)
subject_train <- read.table(d[26],header=FALSE)
X_train <- read.table(d[27],header=FALSE)
y_train <- read.table(d[28],header=FALSE)

#Add subject ID column name
names(subject_test) <- "subjectid"
names(subject_train) <- "subjectid"

#Add column name for measurment data files
names(X_train) <-features$V2
names(X_test) <-features$V2
names(y_train) <- "activity"
names(y_test) <- "activity"

# Merges the training and the test sets to create one data set
merge_data <- rbind(cbind(subject_train, y_train, X_train),
  cbind(subject_test, y_test, X_test)) 

# Extracts only the measurements on the mean and standard deviation for each measurement
meanStdColumns <- grep("mean|std", features$V2, value = FALSE)+2
meanstddata <- cbind(merge_data[,1:2],merge_data[,meanStdColumns])

# Uses descriptive activity names to name the activities in the data set
meanstddata$activity <-factor(meanstddata$activity, labels = activity_labels$V2)

#Appropriately labels the data set with descriptive variable names
colNames  <- colnames(meanstddata); 
for (i in 1:length(colNames)) 
{
  colNames[i] = gsub("\\()","",colNames[i])
  colNames[i] = gsub("-std","StdDev",colNames[i])
  colNames[i] = gsub("-mean","Mean",colNames[i])
  colNames[i] = gsub("^(t)","Time",colNames[i])
  colNames[i] = gsub("^(f)","Freq",colNames[i])
  colNames[i] = gsub("([Gg]ravity)","Gravity",colNames[i])
  colNames[i] = gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body",colNames[i])
  colNames[i] = gsub("[Gg]yro","Gyro",colNames[i])
  colNames[i] = gsub("AccMag","AccelMagnitude",colNames[i])
  colNames[i] = gsub("([Bb]odyaccjerkmag)","BodyAccelJerkMagnitude",colNames[i])
  colNames[i] = gsub("JerkMag","JerkMagnitude",colNames[i])
  colNames[i] = gsub("GyroMag","GyroMagnitude",colNames[i])
};

colnames(meanstddata) = colNames;

#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject
melted <- melt(meanstddata, id=c("subjectid","activity"))
tidy <- dcast(melted, subjectid+activity ~ variable, mean)

# write the tidy data set to a file
write.table(tidy, "tidy.txt", row.names=FALSE)

