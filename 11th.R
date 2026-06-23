# Geographic Dataset
geo <- data.frame(
  City = c("City A", "City B", "City C"),
  Population = c(500000, 700000, 600000),
  Avg_Temperature = c(75, 68, 80),
  Elevation = c(1000, 800, 1200)
)

print(geo)



# Dataset with sample coordinates
geo <- data.frame(
  City = c("City A", "City B", "City C"),
  Latitude = c(13.08, 19.07, 28.61),
  Longitude = c(80.27, 72.87, 77.20)
)

plot(geo$Longitude, geo$Latitude,
     pch = 19,
     cex = 2,
     col = "blue",
     xlab = "Longitude",
     ylab = "Latitude",
     main = "City Distribution Map")

text(geo$Longitude, geo$Latitude,
     labels = geo$City,
     pos = 3)


geo <- data.frame(
  City = c("City A", "City B", "City C"),
  Population = c(500000, 700000, 600000),
  Avg_Temperature = c(75, 68, 80)
)

plot(geo$Population,
     geo$Avg_Temperature,
     pch = 19,
     col = "red",
     main = "Population vs Average Temperature",
     xlab = "Population",
     ylab = "Average Temperature")

text(geo$Population,
     geo$Avg_Temperature,
     labels = geo$City,
     pos = 3)


geo <- data.frame(
  City = c("City A", "City B", "City C"),
  Population = c(500000, 700000, 600000),
  Avg_Temperature = c(75, 68, 80),
  Elevation = c(1000, 800, 1200)
)

print(geo)

# For RStudio
View(geo)