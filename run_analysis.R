# READ IN DATA & LOAD PACKAGES

# download zipfile
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, destfile = "finalProject.zip", method = "curl", mode = "wb")
unzip("finalProject.zip")

# load packages for cleaning and set path
sapply("data.table", require, character.only=TRUE, quietly=TRUE)
path <- file.path(getwd(), "UCI HAR Dataset")

# load data into data.tables (details on files from zip in README)
subjectTrain <- fread(file.path(path, "train", "subject_train.txt"))
subjectTest <- fread(file.path(path, "test", "subject_test.txt"))
activityTrain <- fread(file.path(path, "train", "Y_train.txt"))
activityTest <- fread(file.path(path, "test", "Y_test.txt"))
#create funtion to read in larger files
fileToDataTable <- funtion (f) {
  df <- read.table(f)
  dt <- data.table(df)
}
train <- fileToDataTable(file.path(path, "train", "X_train.txt"))
test <- fileToDataTable(file.path(path, "test", "X_test.txt"))

# INITIAL MERGE OF TABLES

# concatenate train and test tables
subject <- rbind(subjectTrain, subjectTest)
setnames(subject, "V1", "subject")
activity <- rbind(activityTrain, activityTest)
setnames(activity, "V1", "activityNum")
dt <- rbind(train, test)

# merge columns and set key
subject <- cbind(subject, activity)
dt <- cbind(subject, dt)
setkey(dt, subject, activityNum)

# SETTING FEATURES (MEAN & STD DEV)

# get features from file
features <- fread(file.path(path, "features.txt"))
setnames(features, names(features), c("featureNum", "featureName"))

# subset observations from mean and std dev
features <- features[grepl("mean\\(\\)|std\\(\\)", featureName)]

# add code column to match dt
features$featureCode <- features[, paste0("V", featureNum)]

# subset the variables in dt
select <- c(key(dt), features$featureCode)
dt <- dt[, select, with=FALSE]

# NAMING ACTIVITIES

# download activity_labels.txt file and rename columns
activityNames <- fread(file.path(path, "activity_labels.txt"))
setnames(activityNames, names(activityNames), c("activityNum", "activityName"))

# merge with data.table and set keys, then melt to change format
dt <- merge(dt, activityNames, by="activityNum", all.x=TRUE)
setkey(dt, subject, activityNum, activityName)
dt <- data.table(melt(dt, key(dt), variable.name="featureCode"))
dt <- merge(dt, features[, list(featureNum, featureCode, featureName)], by="featureCode")

# create new variables equivalent to activityName and featureName as factor classes
dt$activity <- factor(dt$activityName)
dt$feature <- factor(dt$featureName)

# APPROPRIATELY LABEL ACTIVITIES IN DATASET

# separate features from featureName using a helper function
grepthis <- function (regex) {
  grepl(regex, dt$feature)
}

## features with 2 categories
n <- 2
y <- matrix(seq(1, n), nrow=n)
x <- matrix(c(grepthis("^t"), grepthis("^f")), ncol=nrow(y))
dt$featDomain <- factor(x %*% y, labels=c("Time", "Freq"))
x <- matrix(c(grepthis("Acc"), grepthis("Gyro")), ncol=nrow(y))
dt$featInstrument <- factor(x %*% y, labels=c("Accelerometer", "Gyroscope"))
x <- matrix(c(grepthis("BodyAcc"), grepthis("GravityAcc")), ncol=nrow(y))
dt$featAcceleration <- factor(x %*% y, labels=c(NA, "Body", "Gravity"))
x <- matrix(c(grepthis("mean()"), grepthis("std()")), ncol=nrow(y))
dt$featVariable <- factor(x %*% y, labels=c("Mean", "SD"))

## features with 1 category
dt$featJerk <- factor(grepthis("Jerk"), labels=c(NA, "Jerk"))
dt$featMagnitude <- factor(grepthis("Mag"), labels=c(NA, "Magnitude"))

## features with 3 categories
n <- 3
y <- matrix(seq(1, n), nrow=n)
x <- matrix(c(grepthis("-X"), grepthis("-Y"), grepthis("-Z")), ncol=nrow(y))
dt$featAxis <- factor(x %*% y, labels=c(NA, "X", "Y", "Z"))

## CREATE A TIDY DATA SET

setkey(dt, subject, activity, featDomain, featAcceleration, featInstrument, featJerk, featVariable, featAxis)
Tidy <- dt[, list(count = .N, average = mean(value)), by=key(dt)]

# make a codebook
install.packages("dataMaid")
library(dataMaid)
makeCodebook(Tidy)