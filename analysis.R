mydata <- read.table("mydata.txt", header = TRUE)

filtered_data <- mydata[mydata$Filter != 1, ]
