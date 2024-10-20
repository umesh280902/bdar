employee_data <-data.frame(
    Name =c("Umesh","Raju","Vishal","Vijay"),
    Age =c(28,32,31,40),
    Profession= c("Enginner","CA","Professor","Teacher"),
    Salary=c(100000,50000,45000,35000)
)

print("Employee Data:")
print(employee_data)

print("Summary of the employee data:")
summary(employee_data)