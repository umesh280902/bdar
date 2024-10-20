# Set the library path
.libPaths("D:/Codes/python/bda/bda9")

# Install ggplot2 if it isn't already installed
if (!requireNamespace("ggplot2", quietly = TRUE)) {
    install.packages("ggplot2", lib = "D:/Codes/python/bda/bda9")
}

# Load the ggplot2 library
library(ggplot2)

# Your data visualization code goes here
# Load the dataset
data <- read.csv("Supermarket.csv")

# Preview the data
head(data)

# Check for missing values
sum(is.na(data))

# Convert necessary columns to appropriate data types (e.g., Date and Time)
data$Date <- as.Date(data$Date, format = "%m/%d/%Y")
data$Time <- strptime(data$Time, format = "%I:%M:%S %p")


ggplot(data, aes(x = Product.line, y = Sales)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_minimal() +
  labs(title = "Total Sales by Product Line", x = "Product Line", y = "Sales")

ggplot(data, aes(x = Gender, y = Sales, fill = Gender)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title = "Sales Distribution by Gender", x = "Gender", y = "Sales")

ggplot(data, aes(x = Date, y = Sales)) +
  geom_line(color = "blue") +
  theme_minimal() +
  labs(title = "Sales over Time", x = "Date", y = "Sales")

ggplot(data, aes(x = Payment)) +
  geom_bar(fill = "darkgreen") +
  theme_minimal() +
  labs(title = "Payment Method Distribution", x = "Payment Method", y = "Count")

ggplot(data, aes(x = Rating)) +
  geom_histogram(bins = 10, fill = "orange", color = "black") +
  theme_minimal() +
  labs(title = "Rating Distribution", x = "Rating", y = "Frequency")
