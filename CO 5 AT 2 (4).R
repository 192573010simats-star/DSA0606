# Problem 44: Company Valuations

# Dataset
valuation <- c(
  2000000,
  45000000,
  900000000,
  20000000000
)

# Company names
companies <- c(
  "Company 1",
  "Company 2",
  "Company 3",
  "Company 4"
)

# Calculate ratios between consecutive values
ratios <- valuation[-1] / valuation[-length(valuation)]

# Display data
cat("Company valuations:\n")
print(valuation)

# Display ratios
cat("\nRatios between consecutive valuations:\n")
print(round(ratios, 2))


# Linear scale plot
plot(
  valuation,
  type = "o",
  pch = 16,
  xaxt = "n",
  main = "Company Valuations - Linear Scale",
  xlab = "Company",
  ylab = "Valuation"
)

axis(
  1,
  at = 1:4,
  labels = companies
)


# Logarithmic scale plot
plot(
  valuation,
  type = "o",
  pch = 16,
  xaxt = "n",
  log = "y",
  main = "Company Valuations - Logarithmic Scale",
  xlab = "Company",
  ylab = "Valuation (Log Scale)"
)

axis(
  1,
  at = 1:4,
  labels = companies
)