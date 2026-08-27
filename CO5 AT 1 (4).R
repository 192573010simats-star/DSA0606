# Problem 44: Plan A vs Plan B Renewal Rate

# Data
plans <- c("Plan A", "Plan B")
renewal_rate <- c(41, 47)

# 95% confidence interval margins
margin <- c(5, 5)

# Calculate lower and upper limits
lower <- renewal_rate - margin
upper <- renewal_rate + margin

# Display confidence intervals
cat("Plan A 95% CI:", lower[1], "% to", upper[1], "%\n")
cat("Plan B 95% CI:", lower[2], "% to", upper[2], "%\n")

# Check overlap
overlap <- max(lower) <= min(upper)

cat("Do the confidence intervals overlap?",
    ifelse(overlap, "Yes", "No"), "\n")

# Difference
difference <- renewal_rate[2] - renewal_rate[1]

cat("Difference:", difference, "percentage points\n")


# -------------------------------
# GRAPH
# -------------------------------

# Create bar plot
bar_centers <- barplot(
  renewal_rate,
  names.arg = plans,
  ylim = c(0, 60),
  main = "Plan A vs Plan B Renewal Rate",
  ylab = "Renewal Rate (%)",
  xlab = "Plan"
)

# Add error bars for 95% confidence intervals
arrows(
  x0 = bar_centers,
  y0 = lower,
  x1 = bar_centers,
  y1 = upper,
  angle = 90,
  code = 3,
  length = 0.1,
  lwd = 2
)

# Add values above bars
text(
  bar_centers,
  renewal_rate + 2,
  labels = paste0(renewal_rate, "%"),
  cex = 1
)