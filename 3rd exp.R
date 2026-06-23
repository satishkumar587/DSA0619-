years <- c(5,3,7,4,2)
score <- c(85,92,78,90,76)

plot(years, score,
     type="o",
     main="Employee Performance Trend",
     xlab="Years of Service",
     ylab="Performance Score",
     col="blue")
legend("bottomright",
       legend="Performance",
       col="blue",
       lty=1)


dept <- c("Sales","HR","Marketing","Sales","HR")

dept_count <- table(dept)

barplot(dept_count,
        main="Employees by Department",
        xlab="Department",
        ylab="Number of Employees",
        col="lightgreen")


years <- c(5,3,7,4,2)
score <- c(85,92,78,90,76)

plot(years, score,
     main="Years of Service vs Performance Score",
     xlab="Years of Service",
     ylab="Performance Score",
     pch=19,
     col="black")


library(plotly)

years <- c(5,3,7,4,2)
score <- c(85,92,78,90,76)

plot_ly(x=years,
        y=score,
        type="scatter",
        mode="lines+markers")