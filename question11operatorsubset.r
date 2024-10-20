data <- data.frame(
product = c("Bread","Milk","Cola cans","Chocolate bars","Detergent"),
Monday = c(12,21,10,6,5),
Tuesday= c(3,27,1,7,8),
Wednesday=c(5,18,33,4,12),
Thursday=c(11,20,6,13,20),
Friday = c(9,15,12,12,23)
)
print(data)

#Extract sales for milk on wednesday using brackets
wedensday_sales_milk <-data[2,4]
print(wedensday_sales_milk)

#Extract all sales data for cola cans
cola_sales<-data[3,]
print(cola_sales)

#Extract product using $ operator
print(data$product)

#Extract rows where sales on Friday are greater than 10 using subset operator
high_friday_sales <- subset(data,Friday>10)
print(high_friday_sales)