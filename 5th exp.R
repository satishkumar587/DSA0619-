date <- as.Date(c("2023-01-01","2023-01-02",
                  "2023-01-03","2023-01-04",
                  "2023-01-05"))
pageviews <- c(1500,1600,1400,1650,1800)

plot(date, pageviews,
     type="o",
     main="Daily Page Views Trend",
     xlab="Date",
     ylab="Page Views",
     col="blue")


date <- c("Jan1","Jan2","Jan3","Jan4","Jan5")
ctr <- c(2.3,2.7,2.0,2.4,2.6)

barplot(ctr,
        names.arg=date,
        main="Click-through Rate by Day",
        xlab="Date",
        ylab="CTR (%)",
        col="lightgreen")



library(ggplot2)

data <- data.frame(
  Day=1:5,
  Likes=c(50,60,55,70,80),
  Shares=c(20,25,22,30,35),
  Comments=c(10,15,12,18,20)
)

matplot(data$Day,
        data[,2:4],
        type="l",
        lty=1,
        main="User Interactions",
        xlab="Day",
        ylab="Count")
legend("topleft",
       legend=c("Likes","Shares","Comments"),
       col=1:3,
       lty=1)


library(plotly)

date <- c("2023-01-01","2023-01-02",
          "2023-01-03","2023-01-04",
          "2023-01-05")
pageviews <- c(1500,1600,1400,1650,1800)

plot_ly(x=date,
        y=pageviews,
        type="scatter",
        mode="lines+markers")