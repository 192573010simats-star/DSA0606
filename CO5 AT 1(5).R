# Problem 45: Linear Trend Analysis

# Step 1: Create the dataset
visits <- c(85, 87, 96, 90, 100, 101)

# Time periods
period <- 1:6

# Step 2: Fit a linear trend line
model <- lm(visits ~ period)

# Display model summary
summary(model)

# Step 3: Get predicted values
predicted <- fitted(model)

# Step 4: Calculate residuals
residuals <- visits - predicted

# Step 5: Calculate standard deviation of residuals
residual_sd <- sd(residuals)

# Step 6: Calculate 95% uncertainty band
# Approximately mean +/- 1.96 * residual SD
uncertainty <- 1.96 * residual_sd

# Band width from lower to upper limit
band_width <- 2 * uncertainty

# Display results
cat("Original visits:\n")
print(visits)

cat("\nPredicted values:\n")
print(round(predicted, 2))

cat("\nResiduals:\n")
print(round(residuals, 2))

cat("\nStandard deviation of residuals:\n")
print(round(residual_sd, 2))

cat("\n95% uncertainty from trend:\n")
print(round(uncertainty, 2))

cat("\n95% uncertainty band width:\n")
print(round(band_width, 2))


# Step 7: Plot the data and trend line
plot(
  period,
  visits,
  pch = 16,
  type = "o",
  main = "Monthly Clinic Visits with Linear Trend",
  xlab = "Period",
  ylab = "Clinic Visits"
)

# Add trend line
abline(model, lwd = 2)