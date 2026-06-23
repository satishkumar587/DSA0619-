# Dataset
airline <- data.frame(
  Passenger_ID = c(1,2,3,4,5),
  Age = c(28,45,33,52,39),
  Flight_Hours = c(2,8,5,10,6),
  Satisfaction = c("High","Medium","High","Low","Medium")
)

hist(airline$Age,
     main = "Histogram of Passenger Ages",
     xlab = "Age",
     col = "lightblue",
     border = "red")



# Dataset
airline <- data.frame(
  Satisfaction = c("High","Medium","High","Low","Medium")
)

satisfaction_count <- table(airline$Satisfaction)

pie(satisfaction_count,
    main = "Passenger Satisfaction Levels",
    col = c("lightgreen","pink","skyblue"))


# Dataset
airline <- data.frame(
  Passenger_ID = c(1,2,3,4,5),
  Flight_Hours = c(2,8,5,10,6)
)

barplot(airline$Flight_Hours,
        names.arg = airline$Passenger_ID,
        col = "orange",
        main = "Flight Hours by Passenger",
        xlab = "Passenger ID",
        ylab = "Flight Hours")



# Dataset
airline <- data.frame(
  Age = c(28,45,33,52,39),
  Flight_Hours = c(2,8,5,10,6)
)

plot(airline$Age,
     airline$Flight_Hours,
     pch = 19,
     col = "blue",
     main = "Age vs Flight Hours",
     xlab = "Age",
     ylab = "Flight Hours")

abline(lm(Flight_Hours ~ Age, data = airline),
       col = "orange",
       lwd = 2)