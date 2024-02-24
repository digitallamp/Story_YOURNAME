# Read in the replication data from repdata.txt
replication_data <- read.table("repdata.txt", header = TRUE)

# Filter out participants with the entry "1" in the data
filtered_replication_data <- replication_data[replication_data$Filter != 1, ]

# Calculate power for replication for small, medium, and large effect sizes
effect_sizes <- c(0.1, 0.3, 0.5)
alpha <- 0.05

for (effect_size in effect_sizes) {
  power_replication <- pwr.r.test(n = NULL, d = effect_size, sig.level = alpha, power = NULL, alternative = "two.sided")$power
  print(paste("Power to replicate a significant finding for effect size", effect_size, ":", power_replication))
}

# Commit the changes to Git
# (You'll need to commit the changes using Git commands or your preferred Git client)
