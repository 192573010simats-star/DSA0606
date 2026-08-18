# Problem 7: Percentage-only reporting

# Two regions with different baseline values
region <- c("Region A", "Region B")

original_efficiency <- c(40, 80)

improvement_percent <- c(15, 15)

new_efficiency <- original_efficiency +
  (original_efficiency * improvement_percent / 100)

data <- data.frame(
  Region = region,
  Original = original_efficiency,
  Improvement_Percent = improvement_percent,
  New_Efficiency = new_efficiency
)

print(data)

# Bar chart showing original and new efficiency
barplot(
  rbind(data$Original, data$New_Efficiency),
  beside = TRUE,
  names.arg = data$Region,
  col = c("skyblue", "orange"),
  main = "Efficiency Before and After Improvement",
  ylab = "Efficiency"
)

legend(
  "topleft",
  legend = c("Original", "After Improvement"),
  fill = c("skyblue", "orange")
)