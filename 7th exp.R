age <- c(28,35,42)
customer <- c("C1","C2","C3")

barplot(age,
        names.arg=customer,
        main="Customer Age Distribution",
        xlab="Customers",
        ylab="Age",
        col="skyblue")


gender <- c("Female","Male","Female")

freq <- table(gender)

pie(freq,
    main="Gender Distribution",
    col=c("pink","lightblue"))


customer_data <- data.frame(
  CustomerID=c(1,2,3),
  Age=c(28,35,42),
  Gender=c("Female","Male","Female"),
  Income=c(50000,60000,75000)
)

print(customer_data)


library(plotly)

customer <- c("C1","C2","C3")
age <- c(28,35,42)

plot_ly(x=customer,
        y=age,
        type="bar")