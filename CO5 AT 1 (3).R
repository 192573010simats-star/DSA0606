# Problem 43: Natural Frequency and Icon Array

# Probability
probability <- 0.04

# Total number of icons
total_icons <- 100

# Number of suspicious transactions
suspicious <- probability * total_icons

# Number of non-suspicious transactions
not_suspicious <- total_icons - suspicious

cat("Suspicious transactions:", suspicious, "\n")
cat("Non-suspicious transactions:", not_suspicious, "\n")


# Create 10 x 10 icon array
icons <- matrix(
  0,
  nrow = 10,
  ncol = 10
)

# First 4 icons represent suspicious transactions
icons[1, 1:4] <- 1

# Display the array
print(icons)


# Plot the 10 x 10 icon array
plot(
  1:10,
  1:10,
  type = "n",
  xlim = c(0.5, 10.5),
  ylim = c(0.5, 10.5),
  xlab = "",
  ylab = "",
  main = "10 x 10 Icon Array: 4% Suspicious Transactions",
  axes = FALSE
)

# Draw all 100 squares
for (i in 1:10) {
  for (j in 1:10) {
    if (icons[i, j] == 1) {
      rect(
        i - 0.4, j - 0.4,
        i + 0.4, j + 0.4,
        col = "red"
      )
    } else {
      rect(
        i - 0.4, j - 0.4,
        i + 0.4, j + 0.4,
        col = "lightgray"
      )
    }
  }
}

legend(
  "topright",
  legend = c("Suspicious", "Not suspicious"),
  fill = c("red", "lightgray")
)