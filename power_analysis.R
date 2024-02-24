library(pwr)

alpha_adjusted <- 0.005

effect_sizes <- c(0.1, 0.3, 0.5)

for (effect_size in effect_sizes) {
  power <- pwr.r.test(n = NULL, d = effect_size, sig.level = alpha_adjusted, power = NULL, alternative = "two.sided")$power
  print(paste("Power to detect a significant finding for effect size", effect_size, ":", power))
}
