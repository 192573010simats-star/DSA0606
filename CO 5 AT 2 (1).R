# Problem 41: Accessibility Risk

# Data
zones <- c("On-target", "Off-target")
values <- c(70, 30)


# ==========================================
# FLAWED DESIGN - GREEN AND RED ONLY
# ==========================================

barplot(
  values,
  names.arg = zones,
  col = c("green", "red"),
  main = "Flawed Design: Green vs Red",
  ylab = "Percentage",
  ylim = c(0, 100)
)


# ==========================================
# FIXED DESIGN
# Use different colors + patterns/symbols
# ==========================================

bar_positions <- barplot(
  values,
  names.arg = zones,
  col = c("skyblue", "orange"),
  main = "Accessible Design",
  ylab = "Percentage",
  ylim = c(0, 100)
)

# Add different symbols/labels
text(
  bar_positions,
  values / 2,
  labels = c("ON", "OFF"),
  cex = 1.2
)

# Add values
text(
  bar_positions,
  values + 5,
  labels = paste0(values, "%")
)

# Add legend
legend(
  "topright",
  legend = c("On-target", "Off-target"),
  fill = c("skyblue", "orange")
)