# Problem 18: Large Scatterplot

# Generate 100,000 transaction records
set.seed(123)

n <- 100000

transaction_value <- rnorm(n, mean = 500, sd = 100)

transaction_count <- 
  transaction_value * 0.5 +
  rnorm(n, mean = 0, sd = 50)

data <- data.frame(
  Transaction_Value = transaction_value,
  Transaction_Count = transaction_count
)

# Normal scatterplot
plot(
  data$Transaction_Value,
  data$Transaction_Count,
  main = "Normal Scatterplot - Overplotting",
  xlab = "Transaction Value",
  ylab = "Transaction Count",
  pch = 16
)

# Use hexbin plot
install.packages("hexbin")
library(hexbin)

hex <- hexbin(
  data$Transaction_Value,
  data$Transaction_Count,
  xbins = 40
)

plot(
  hex,
  main = "Hexbin Plot for 100,000 Transactions",
  xlab = "Transaction Value",
  ylab = "Transaction Count"
)