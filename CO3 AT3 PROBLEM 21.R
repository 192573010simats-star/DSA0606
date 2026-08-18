# Problem 21: Treemap vs Simple Bar Chart

# Budget data
category <- c("Education", "Healthcare", "Transport")
budget <- c(40, 35, 25)

data <- data.frame(
  Category = category,
  Budget = budget
)

print(data)

# Simple bar chart
barplot(
  data$Budget,
  names.arg = data$Category,
  main = "City Budget Breakdown",
  xlab = "Category",
  ylab = "Budget (%)",
  col = "lightblue"
)