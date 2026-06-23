sales <- matrix(c(2000,1500,1200,
                  2200,1800,1400,
                  2400,1600,1100),
                nrow=3)

colnames(sales) <- c("Jan","Feb","Mar")
rownames(sales) <- c("Product A","Product B","Product C")

barplot(sales,
        beside=TRUE,
        main="Monthly Product Sales",
        xlab="Months",
        ylab="Sales",
        col=c("skyblue","lightgreen","orange"))
legend("topright",
       legend=rownames(sales),
       fill=c("skyblue","lightgreen","orange"))


months <- c("Jan","Feb","Mar")
A <- c(2000,2200,2400)
B <- c(1500,1800,1600)
C <- c(1200,1400,1100)

plot(cumsum(A), type="l",
     main="Overall Sales Trend",
     xlab="Month",
     ylab="Sales",
     xaxt="n")
axis(1, at=1:3, labels=months)
lines(cumsum(B))
lines(cumsum(C))
legend("topleft",
       legend=c("Product A","Product B","Product C"),
       lty=1)


sales_data <- data.frame(
  Product=c("Product A","Product B","Product C"),
  January=c(2000,1500,1200),
  February=c(2200,1800,1400),
  March=c(2400,1600,1100)
)

print(sales_data)


library(plotly)

months <- c("Jan","Feb","Mar")
sales <- c(2000,2200,2400)

plot_ly(x=months,
        y=sales,
        type="bar")
