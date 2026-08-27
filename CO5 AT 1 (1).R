# Problem 41: Bootstrap Resampling

# Step 1: Enter the original dataset
wait_times <- c(36, 39, 41, 47, 58)

# Step 2: Perform ONE bootstrap resample
# Draw 5 values with replacement
set.seed(123)

bootstrap_sample <- sample(
  wait_times,
  size = 5,
  replace = TRUE
)

# Step 3: Calculate the mean of the bootstrap sample
bootstrap_mean <- mean(bootstrap_sample)

# Display the results
cat("Original data:", wait_times, "\n")
cat("Bootstrap sample:", bootstrap_sample, "\n")
cat("Bootstrap mean:", bootstrap_mean, "\n")


# Step 4: Repeat the bootstrap process 10,000 times
bootstrap_means <- replicate(
  10000,
  mean(sample(wait_times, size = 5, replace = TRUE))
)

# Step 5: Calculate the middle 95% confidence interval
confidence_interval <- quantile(
  bootstrap_means,
  c(0.025, 0.975)
)

# Display confidence interval
cat("\n95% Bootstrap Confidence Interval:\n")
print(confidence_interval)


# Step 6: Plot the bootstrap means
hist(
  bootstrap_means,
  breaks = 30,
  main = "Bootstrap Distribution of Customer Wait Time Means",
  xlab = "Bootstrap Mean Wait Time (minutes)"
)

# Add confidence interval lines
abline(
  v = confidence_interval,
  lty = 2,
  lwd = 2
)