library(ggplot2)

pdf("question8iris.pdf")
ggplot(iris,aes(x=Sepal.Length,y=Sepal.Width,color=Species))+ geom_point(size=3,alpha=0.7)+labs(title="Sepal length vs Sepal width by species")

ggplot(iris,aes(x=Species,y=Petal.Length,fill=Species))+ geom_boxplot()+ labs(title="Petal length distribution by species",x="species",y="petal length")

ggplot(iris,aes(x=Sepal.Length,fill=Species))+geom_histogram(binwidth=0.3,alpha=0.6,position="identity")+labs(title="Sepal length distribution",x="Sepal length",y="Frequency")
