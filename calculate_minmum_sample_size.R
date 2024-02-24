# Desired power for replication
desired_power <- 0.90

# Effect sizes for replication
effect_sizes <- c(0.1, 0.3, 0.5)

# Alpha level
alpha <- 0.05

for (effect_size in effect_sizes) {
  # Calculate minimum sample size for replication
  min_sample_size <- pwr.r.test(n = NULL, d = effect_size, sig.level = alpha, power = desired_power, alternative = "two.sided")$n
  print(paste("Minimum sample size needed to replicate a significant finding for effect size", effect_size, "with power of", desired_power, ":", round(min_sample_size)))
}
