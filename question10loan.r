# Load necessary libraries
library(ggplot2)
library(dplyr)

# Create a sample loan dataset (replace with actual data)
loan_data <- read.csv('./loan_data_set.csv')
# 1. View structure and summary of the data
str(loan_data)
summary(loan_data)

pdf("question10.pdf")
# 2. Distribution of Loan Status
ggplot(loan_data, aes(x = Loan_Status, fill = Loan_Status)) +
  geom_bar() +
  labs(title = "Distribution of Loan Status", x = "Loan Status", y = "Count") +
  theme_minimal()

# 3. Loan Status by Gender
ggplot(loan_data, aes(x = Gender, fill = Loan_Status)) +
  geom_bar(position = "dodge") +
  labs(title = "Loan Status by Gender", x = "Gender", y = "Count") +
  theme_minimal()

# 4. Loan Amount vs Applicant Income
ggplot(loan_data, aes(x = ApplicantIncome, y = LoanAmount, color = Loan_Status)) +
  geom_point(size = 3, alpha = 0.7) +
  labs(title = "Loan Amount vs Applicant Income", x = "Applicant Income", y = "Loan Amount") +
  theme_minimal()

# 5. Loan Status by Education Level
ggplot(loan_data, aes(x = Education, fill = Loan_Status)) +
  geom_bar(position = "dodge") +
  labs(title = "Loan Status by Education Level", x = "Education Level", y = "Count") +
  theme_minimal()

# 6. Loan Status by Property Area
ggplot(loan_data, aes(x = Property_Area, fill = Loan_Status)) +
  geom_bar(position = "dodge") +
  labs(title = "Loan Status by Property Area", x = "Property Area", y = "Count") +
  theme_minimal()

# 7. Impact of Credit History on Loan Approval
ggplot(loan_data, aes(x = factor(Credit_History), fill = Loan_Status)) +
  geom_bar(position = "dodge") +
  labs(title = "Loan Status by Credit History", x = "Credit History (1 = Good, 0 = Bad)", y = "Count") +
  theme_minimal()

# 8. Total Loan Amount by Marital Status
loan_data %>%
  group_by(Married) %>%
  summarise(Total_Loan_Amount = sum(LoanAmount, na.rm = TRUE)) %>%
  ggplot(aes(x = Married, y = Total_Loan_Amount, fill = Married)) +
  geom_bar(stat = "identity") +
  labs(title = "Total Loan Amount by Marital Status", x = "Marital Status", y = "Total Loan Amount") +
  theme_minimal()
