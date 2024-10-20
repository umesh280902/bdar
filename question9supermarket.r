# Heads Invoice.ID Branch City Customer.type Gender Product.line Unit.price Quantity Tax.5.    Sales Date Time Payment cogs gross.margin percentage gross.income Rating

# Load necessary libraries
library(ggplot2)
library(dplyr)

supermarket <- read.csv('./Supermarket.csv')

# 1. View the structure and summary of the data
str(supermarket)
summary(supermarket)

pdf("question9supermarket.pdf")
# 2. Total Sales by Product Line
supermarket %>%
  group_by(Product.line) %>%
  summarise(Total.Sales = sum(Sales)) %>%
  ggplot(aes(x = reorder(Product.line, Total.Sales), y = Total.Sales, fill = Product.line)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  labs(title = "Total Sales by Product Line", x = "Product Line", y = "Total Sales") +
  theme_minimal()

# 3. Payment Method Distribution
ggplot(supermarket, aes(x = Payment, fill = Payment)) +
  geom_bar() +
  labs(title = "Payment Method Distribution", x = "Payment Method", y = "Count") +
  theme_minimal()

# 4. Sales by City and Branch
supermarket %>%
  group_by(City, Branch) %>%
  summarise(Total.Sales = sum(Sales)) %>%
  ggplot(aes(x = Branch, y = Total.Sales, fill = City)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Sales by Branch and City", x = "Branch", y = "Total Sales") +
  theme_minimal()

# 5. Gender-wise Product Preference
supermarket %>%
  group_by(Gender, Product.line) %>%
  summarise(Total.Sales = sum(Sales)) %>%
  ggplot(aes(x = Product.line, y = Total.Sales, fill = Gender)) +
  geom_bar(stat = "identity", position = "dodge") +
  coord_flip() +
  labs(title = "Product Line Preference by Gender", x = "Product Line", y = "Total Sales") +
  theme_minimal()

# 6. Distribution of Customer Ratings
ggplot(supermarket, aes(x = Rating)) +
  geom_histogram(binwidth = 0.5, fill = "blue", alpha = 0.6) +
  labs(title = "Distribution of Customer Ratings", x = "Rating", y = "Frequency") +
  theme_minimal()

# 7. Scatter Plot of Sales vs Quantity
ggplot(supermarket, aes(x = Quantity, y = Sales, color = Product.line)) +
  geom_point(size = 3, alpha = 0.7) +
  labs(title = "Sales vs Quantity Sold", x = "Quantity", y = "Sales") +
  theme_minimal()
