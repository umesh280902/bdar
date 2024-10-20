data <- data.frame(
    emp_id=c(1:5),
    emp_name=c("Rick","Dan","Michelle","Ryan","Gary"),
    start_date=as.Date(c("2012-01-01","2013-09-23","2014-11-15","2014-05-11","2015-03-27")),
    salary=c(60000,45000,75000,84000,20000)
)

print(data)

str(data)
summary(data)

salary_emp_data<-data[,c("emp_name","salary")]
print(salary_emp_data)

filtered_data <- data[data$salary<=60000,]
print(filtered_data)