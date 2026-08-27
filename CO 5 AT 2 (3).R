# Problem 43: Daily Step Counts

# Dataset
steps <- c(5200, 6100, 7300, 6800, 8200)

# Day names
days <- c("Day 1", "Day 2", "Day 3", "Day 4", "Day 5")

# Calculate range
minimum <- min(steps)
maximum <- max(steps)
data_range <- maximum - minimum

cat("Minimum step count:", minimum, "\n")
cat("Maximum step count:", maximum, "\n")
cat("Range:", data_range, "\n")


# Plot using a linear axis
plot(
  steps,
  type = "o",
  pch = 16,
  xaxt = "n",
  main = "Daily Step Counts",
  xlab = "Day",
  ylab = "Number of Steps"
)

axis(
  1,
  at = 1:5,
  labels = days
)