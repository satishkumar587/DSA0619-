# Dataset
plant <- data.frame(
  Plant_ID = c(1,2,3,4,5),
  Output_MW = c(120,150,100,170,110),
  Temperature = c(65,70,60,75,62),
  Status = c("Active","Active","Maintenance",
             "Active","Maintenance")
)

hist(plant$Output_MW,
     main = "Histogram of Power Output",
     xlab = "Output (MW)",
     col = "lightblue",
     border = "black")



# Dataset
plant <- data.frame(
  Status = c("Active","Active","Maintenance",
             "Active","Maintenance")
)

status_count <- table(plant$Status)

pie(status_count,
    main = "Plant Status Distribution",
    col = c("lightgreen","orange"))


# Dataset
plant <- data.frame(
  Plant_ID = c(1,2,3,4,5),
  Temperature = c(65,70,60,75,62)
)

barplot(plant$Temperature,
        names.arg = plant$Plant_ID,
        col = "skyblue",
        main = "Temperature by Plant",
        xlab = "Plant ID",
        ylab = "Temperature")


# Dataset
plant <- data.frame(
  Output_MW = c(120,150,100,170,110),
  Temperature = c(65,70,60,75,62)
)

plot(plant$Output_MW,
     plant$Temperature,
     pch = 19,
     col = "blue",
     main = "Output vs Temperature",
     xlab = "Output (MW)",
     ylab = "Temperature")

abline(lm(Temperature ~ Output_MW,
          data = plant),
       col = "red",
       lwd = 2)