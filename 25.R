# Dataset
fitness <- data.frame(
  User_ID = c(1,2,3,4,5),
  Steps = c(7000,10000,8500,12000,6500),
  Calories_Burned = c(250,400,320,500,220),
  Active_Minutes = c(40,60,50,75,35)
)

hist(fitness$Steps,
     main = "Histogram of Daily Steps",
     xlab = "Steps",
     col = "lightblue",
     border = "black")



# Dataset
fitness <- data.frame(
  User_ID = c(1,2,3,4,5),
  Steps = c(7000,10000,8500,12000,6500)
)

activity <- ifelse(fitness$Steps >= 10000,
                   "Highly Active",
                   "Moderately Active")

activity_count <- table(activity)

pie(activity_count,
    main = "Activity Level Categories",
    col = c("lightgreen","orange"))



# Dataset
fitness <- data.frame(
  User_ID = c(1,2,3,4,5),
  Calories_Burned = c(250,400,320,500,220)
)

barplot(fitness$Calories_Burned,
        names.arg = fitness$User_ID,
        col = "skyblue",
        main = "Calories Burned by User",
        xlab = "User ID",
        ylab = "Calories Burned")


# Dataset
fitness <- data.frame(
  Steps = c(7000,10000,8500,12000,6500),
  Calories_Burned = c(250,400,320,500,220)
)

plot(fitness$Steps,
     fitness$Calories_Burned,
     pch = 19,
     col = "blue",
     main = "Steps vs Calories Burned",
     xlab = "Steps",
     ylab = "Calories Burned")

abline(lm(Calories_Burned ~ Steps, data = fitness),
       col = "red",
       lwd = 2)