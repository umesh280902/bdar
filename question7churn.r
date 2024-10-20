library(ggplot2)
library(dplyr)
library(corrplot)
churn_data <-read.csv("./Churn_Modelling.csv")
head(churn_data)
str(churn_data)
summary(churn_data)

#heads  RowNumber CustomerId  Surname CreditScore Geography Gender Age Tenure Balance NumOfProducts HasCrCard IsActiveMember EstimatedSalary Exited

pdf("question7.pdf")
#Bar plot
ggplot(churn_data,aes(x=Geography))+
    geom_bar(fill='skyblue')+
    labs(title="Distribution of Customers by Geography",x='Geography',y='Count')

ggplot(churn_data,aes(x=Gender))+
    geom_bar(fill='orange')+
    labs(title="Distribution of Customers by Gender",x='Gender',y='Count')

#Histogram plot
ggplot(churn_data,aes(x=Age))+
    geom_histogram(binwidth=5,fill='orange',color='black')+
    labs(title="Age Distribution",x='Age',y='Frequency')

#box plot
ggplot(churn_data,aes(x=Geography,y=CreditScore,fill=Geography))+geom_boxplot()+labs(title="Credit score based on geography",x="geography",y="credit score")

#scatter plot
ggplot(churn_data,aes(x=Balance,y=EstimatedSalary,color=as.factor(Exited)))+
geom_point(alpha=0.7)+
labs("Balance vs estimated salary",x="Balance",y="estimated salary")

#Density plot
ggplot(churn_data,aes(x=EstimatedSalary,fill=as.factor(Exited)))+
geom_density(alpha=0.5)+
labs("Estimated Salary distribution",x="Estimated Salary",y="Density")

numeric_data <- churn_data[ ,c("CreditScore", "Age" ,"Tenure" ,"Balance" ,"EstimatedSalary") 
]

corr_matrix <-cor(numeric_data)

corrplot(corr_matrix,method="color",tl.col="black",tl.cex=0.8)

churn_table <- table(churn_data$Exited)
pie(churn_table, 
    labels = c("Not Exited", "Exited"), 
    col = c("lightblue", "salmon"), 
    main = "Customer Churn Proportion")
