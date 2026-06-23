# Energy Consumption Dataset
energy <- data.frame(
  Sector = c("Residential","Commercial","Industrial",
             "Residential","Commercial","Industrial"),
  Region = c("North","South","West",
             "East","North","South"),
  Month = c("Jan","Jan","Feb",
            "Feb","Mar","Mar"),
  Temperature = c(15,24,20,18,28,30),
  Units_Consumed = c(320,540,880,350,610,920),
  Cost = c(2100,3600,5900,2300,4100,6200),
  Renewable_Usage = c(22,18,12,25,20,15),
  Peak_Hours = c(4,6,8,5,7,9)
)

print(energy)




# Dataset
energy <- data.frame(
  Units_Consumed = c(320,540,880,350,610,920)
)

hist(energy$Units_Consumed,
     probability = TRUE,
     col = "lightblue",
     main = "Histogram and Density Plot",
     xlab = "Units Consumed")

lines(density(energy$Units_Consumed),
      col = "red",
      lwd = 2)



# Dataset
energy <- data.frame(
  Temperature = c(15,24,20,18,28,30),
  Units_Consumed = c(320,540,880,350,610,920),
  Peak_Hours = c(4,6,8,5,7,9)
)

symbols(energy$Temperature,
        energy$Units_Consumed,
        circles = energy$Peak_Hours/4,
        inches = 0.3,
        bg = "lightgreen",
        fg = "darkgreen",
        xlab = "Temperature (°C)",
        ylab = "Units Consumed (kWh)",
        main = "Temperature vs Units Consumed")



# Dataset
energy <- data.frame(
  Sector = c("Residential","Commercial","Industrial",
             "Residential","Commercial","Industrial"),
  Renewable_Usage = c(22,18,12,25,20,15)
)

avg_usage <- aggregate(Renewable_Usage ~ Sector,
                       data = energy,
                       mean)

barplot(avg_usage$Renewable_Usage,
        names.arg = avg_usage$Sector,
        col = c("skyblue","orange","lightgreen"),
        main = "Average Renewable Usage by Sector",
        xlab = "Sector",
        ylab = "Renewable Usage (%)")