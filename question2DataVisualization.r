library(ggplot2)

data("mtcars")

ggplot(mtcars,aes(x=wt,y=mpg))+
    geom_point(color="blue")+
    labs(title="Scatterplot:Weight vs MPG", x="Weight",y="Miles per Gallon")

ggplot(mtcars,aes(x=wt,y=mpg,size=hp,color=hp))+
    geom_point(color="blue")+
    labs(title="bubblechart:Weight vs MPG", x="Weight",y="Miles per Gallon")


ggplot(mtcars,aes(x=factor(cyl)))+
    geom_bar(color="blue")+
    labs(title="Cylinder", x="Cylinder",y="Count")

ggplot(mtcars,aes(x=hp))+
    geom_dotplot(fill="darkgreen",binwidth=10)+
    labs(title="Horspower distribution:Dotplot", x="Horsepower",y="Count")

ggplot(mtcars,aes(x=mpg))+
    geom_histogram(fill="darkgreen",binwidth=10,color="black")+
    labs(title="Histogram:Miles per Galloon", x="MPG",y="Count")

ggplot(mtcars,aes(x=factor(cyl),y=mpg))+
    geom_boxplot(fill="blue")+
    labs(title="Boxplot: MPG by cylinders", x="cylinders",y="miles per galloon")

cyl_data<-as.data.frame(table(mtcars$cyl))
colnames(cyl_data) <- c("Cylinders","Count")
ggplot(cyl_data,aes(x="",y=Count,fill=factor(Cylinders)))+
    geom_bar(stat="identity",width=1)+
    coord_polar("y")+
    labs(title="Pie chart:Proportion of car by cylinders")+
    theme_void()