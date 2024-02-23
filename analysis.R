mydata <- read.table("mydata.txt", header = TRUE)

filtered_data <- mydata[mydata$Filter != 1, ]

num_participants <- nrow(filtered_data)

print(num_participants)
