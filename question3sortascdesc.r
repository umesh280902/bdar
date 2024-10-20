values <-c(23,45,10,34,89,20,67,99)

ascending<-sort(values)

descending<-sort(values,decreasing=TRUE)


cat("Ascending order: ",ascending," \n")
cat("Descending order: ",descending,"\n")

pdf("question3.pdf")
barplot(ascending,
main="Values in ascending order",
xlab="Index",
ylab="Value",
col="lightblue")

barplot(descending,
main="Values in descending order",
xlab="Index",
ylab="Value",
col="lightblue")