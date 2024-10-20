bread <- c(12,3,5,11,9)
milk <- c(21,27,18,20,9)
Cola_cans <- c(10,1,33,6,12)
Chococlate_bars <- c(6,7,4,13,12)
Detergent <- c(5,8,12,20,23)

days <- c("Monday","Tuesday","Wednesday","Thursday","Friday")

pdf("questions4.pdf")
barplot(bread,names.arg=days,main="Bread sales",col="lightblue",ylab="quantity")

barplot(milk,names.arg=days,main="Milk sales",col="orange",ylab="quantity")

barplot(Cola_cans,names.arg=days,main="Cola cans",col="lightblue",ylab="quantity")

barplot(Chococlate_bars,names.arg=days,main="Chocolate bars",col="brown",ylab="quantity")

barplot(Detergent,names.arg=days,main="Detergent",col="Green",ylab="quantity")
