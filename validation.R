# Load fMRI data for negative and neutral pictures from the hippocampus and amygdala
hippocampus_negative <- read.table("hippocampus_negative.csv", header = TRUE)
hippocampus_neutral <- read.table("hippocampus_neutral.csv", header = TRUE)

amygdala_negative <- read.table("amygdala_negative.csv", header = TRUE)
amygdala_neutral <- read.table("amygdala_neutral.csv", header = TRUE)

# Calculate correlation between hippocampus and amygdala fMRI signals for negative pictures
correlation_negative <- cor(hippocampus_negative, amygdala_negative)

# Calculate correlation between hippocampus and amygdala fMRI signals for neutral pictures
correlation_neutral <- cor(hippocampus_neutral, amygdala_neutral)

# Compare correlation coefficients between main and replication samples
if(correlation_negative_main == correlation_negative_replication && correlation_neutral_main == correlation_neutral_replication) {
  print("Correlation coefficients are consistent across main and replication samples.")
} else {
  print("Correlation coefficients are not consistent across main and replication samples.")
}


# Hypothesis Testing 

# Perform paired t-test for negative pictures
t_test_result <- t.test(hippocampus_negative, amygdala_negative, paired = TRUE)
print(t_test_result)
