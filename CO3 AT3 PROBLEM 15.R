# Problem 15: Delivery Time Outlier

# Delivery time data
delivery_time <- c(
  2, 3, 3, 4, 4, 5, 5, 5, 6, 6,
  4, 3, 5, 6, 4, 5, 3, 4, 5, 50
)

# Boxplot
boxplot(
  delivery_time,
  main = "Delivery Time with Outlier",
  ylab = "Delivery Time (Days)",
  col = "lightblue"
)

# Calculate quartiles
Q1 <- quantile(delivery_time, 0.25)
Q3 <- quantile(delivery_time, 0.75)

# Calculate IQR
IQR_value <- IQR(delivery_time)

# Outlier limits
lower_limit <- Q1 - 1.5 * IQR_value
upper_limit <- Q3 + 1.5 * IQR_value

# Find outliers
outliers <- delivery_time[
  delivery_time < lower_limit |
    delivery_time > upper_limit
]

cat("Lower limit:", lower_limit, "\n")
cat("Upper limit:", upper_limit, "\n")
cat("Outlier values:", outliers, "\n")