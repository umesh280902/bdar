data <- data.frame(
    course= 1:6,
    id = 11:16,
    class=c(1,2,1,2,1,2),
    marks=c(56,75,48,69,84,53)
)
print(data)

# Subset rows where the course value is less than 3 (all columns)
subset1 <- data[data$course < 3, ]

# This means:
# - Select all rows where course < 3
# - Keep all columns (since the column index is empty after the comma)

print(subset1)


subset2<- subset(data,course<3|class==2)
print(subset2)