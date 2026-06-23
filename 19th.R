# Dataset

mobile <- data.frame(
  User_ID = c("U01","U02","U03","U04","U05","U06"),
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Age = c(20,22,19,21,23,20),
  Screen_Time = c(4.5,6.0,3.2,7.1,2.8,5.4),
  App_Usage_Count = c(18,25,12,30,10,22),
  Data_Used = c(2.4,3.8,1.6,4.5,1.2,3.1),
  Satisfaction = c(3,5,3,5,2,4)
)

print(mobile)



hist(mobile$Screen_Time,
     main="Histogram of Screen Time",
     xlab="Hours",
     col="lightblue",
     border="orange")


plot(mobile$Screen_Time,
     mobile$Data_Used,
     main="Screen Time vs Data Used",
     xlab="Screen Time",
     ylab="Data Used",
     pch=19,
     col="blue")


avg <- aggregate(Satisfaction~Gender,
                 data=mobile,
                 mean)

barplot(avg$Satisfaction,
        names.arg=avg$Gender,
        main="Average Satisfaction",
        col="pink")



library(plotly)

plot_ly(mobile,
        x=~Screen_Time,
        y=~Data_Used,
        size=~App_Usage_Count,
        color=~Gender,
        type="scatter",
        mode="markers")