salaries<- data.frame(
    Sr_No=1:10,
    Name=c("Vivek","Karan","James","Soham","Renu","Farah","Hetal","Mary","Ganesh","Krish"),
    Salary=c(21000,55000,67000,50000,54000,40000,30000,70000,20000,15000)
)
print(salaries)

new_salaries<-data.frame(
    Sr_No=11:15,
    Name=c("Amit","Nina","Rohan","Tina","Manoj"),
    Salary=c(45000,32000,60000,28000,37000)
    )
updated_salaries<-rbind(salaries,new_salaries)
print(updated_salaries)

pdf("question6.pdf")
barplot(updated_salaries$Salary,
names.arg=updated_salaries$Name,
main="Employee salaries",
xlab="Employee Name",
ylab="Employee Salary",
col="skyblue")