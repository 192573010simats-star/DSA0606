# Problem 45: 10 x 10 Waffle Chart

# Data
on_time <- 64
delayed <- 28
cancelled <- 8

# Create 100 cells
data <- c(
  rep("On-time", on_time),
  rep("Delayed", delayed),
  rep("Cancelled", cancelled)
)

# Create 10 x 10 matrix
waffle <- matrix(data, nrow = 10, ncol = 10)

# Display matrix
print(waffle)


# Plot waffle chart
plot(
  1:10,
  1:10,
  type = "n",
  xlim = c(0.5, 10.5),
  ylim = c(0.5, 10.5),
  xlab = "",
  ylab = "",
  main = "Survey Results - 10 x 10 Waffle Chart",
  axes = FALSE
)

# Draw cells
for (i in 1:10) {
  for (j in 1:10) {
    
    if (waffle[i, j] == "On-time") {
      cell_color <- "skyblue"
    } else if (waffle[i, j] == "Delayed") {
      cell_color <- "gold"
    } else {
      cell_color <- "tomato"
    }
    
    rect(
      i - 0.45, j - 0.45,
      i + 0.45, j + 0.45,
      col = cell_color,
      border = "white"
    )
  }
}

# Add legend
legend(
  "topright",
  legend = c("On-time (64%)",
             "Delayed (28%)",
             "Cancelled (8%)"),
  fill = c("skyblue", "gold", "tomato")
)