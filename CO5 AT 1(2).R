# Problem: App Download Counts

# Step 1: Create the dataset
downloads <- c(100, 3000, 70000, 2000000)

# Entity names
apps <- c("App 1", "App 2", "App 3", "App 4")


# Step 2: Calculate ratios between consecutive values
ratios <- downloads[-1] / downloads[-length(downloads)]

cat("App download counts:\n")
print(downloads)

cat("\nRatios between consecutive downloads:\n")
print(ratios)


# Step 3: Plot on a LINEAR axis
plot(
  downloads,
  type = "o",
  pch = 16,
  xaxt = "n",
  main = "App Downloads - Linear Scale",
  xlab = "App",
  ylab = "Number of Downloads"
)

axis(
  1,
  at = 1:4,
  labels = apps
)


# Step 4: Plot on a LOGARITHMIC axis
plot(
  downloads,
  type = "o",
  pch = 16,
  xaxt = "n",
  log = "y",
  main = "App Downloads - Logarithmic Scale",
  xlab = "App",
  ylab = "Number of Downloads (Log Scale)"
)

axis(
  1,
  at = 1:4,
  labels = apps
)