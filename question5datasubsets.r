# Create the data frame
data <- data.frame(
  Subject = c(1, 2, 3, 4, 5, 6),
  Class = c(1, 2, 1, 2, 1, 2),
  Marks = c(56, 75, 48, 69, 84, 53)
)

# (i) Subset where Subject is less than 4 using subset() function
subset_data <- subset(data, Subject < 4)
cat("Subset where Subject < 4:\n")
print(subset_data)

# (ii) Subset where Subject < 3 and Class equals to 2 using [] brackets
filtered_data <- data[data$Subject < 3 & data$Class == 2, ]
cat("\nFiltered data where Subject < 3 and Class == 2:\n")
print(filtered_data)
