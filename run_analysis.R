## step 1
# Read all the data
test.labels <- read.table("test/y_test.txt", col.names="label")
test.subjects <- read.table("test/subject_test.txt", col.names="subject")
test.data <- read.table("test/X_test.txt")
train.labels <- read.table("train/y_train.txt", col.names="label")
train.subjects <- read.table("train/subject_train.txt", col.names="subject")
train.data <- read.table("train/X_train.txt")

# Merges the training and the test sets to create one data set in the format of: subjects, labels, data
data <- rbind(cbind(test.subjects, test.labels, test.data),cbind(train.subjects, train.labels, train.data))

## step 2
# Read the features
features <- read.table("features.txt", strip.white=TRUE, stringsAsFactors=FALSE)
# Store features of mean and standard deviation only
features.mean.std <- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]

# Store the measurements on the mean and standard deviation for each measurement.
#Increment by 2 because data has subjects and labels in the beginning
data.mean.std <- data[, c(1, 2, features.mean.std$V1+2)]

## step 3
# Read the labels (activities)
labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
# Replace labels in data with label names
data.mean.std$label <- labels[data.mean.std$label, 2]

## step 4
# First make a list of the current column names and feature names
good.colnames <- c("subject", "label", features.mean.std$V2)
# Remove every non-alphabetic character and converting to lowercase
good.colnames <- tolower(gsub("[^[:alpha:]]", "", good.colnames))
# Use the list as column names for data
colnames(data.mean.std) <- good.colnames

## step 5
# Find the mean for each combination of subject and label
aggr.data <- aggregate(data.mean.std[, 3:ncol(data.mean.std)],
                       by=list(subject = data.mean.std$subject, 
                               label = data.mean.std$label),
                       mean)

# write the data for course upload
write.table(format(aggr.data, scientific=T), "Tidy.txt",row.names=F, col.names=T, quote=2)
