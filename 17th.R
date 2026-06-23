# Dataset

vehicle <- data.frame(
  Vehicle_ID = c("V01","V02","V03","V04","V05"),
  Engine_Size = c(1.5,2.0,3.0,2.5,1.8),
  Horsepower = c(110,150,250,200,130),
  Fuel_Efficiency = c(18,15,12,14,17),
  Top_Speed = c(180,200,250,220,190),
  Safety_Rating = c(4,5,5,4,3)
)

print(vehicle)



library(ggplot2)

ggplot(vehicle,
       aes(x=factor(Safety_Rating),
           y=Fuel_Efficiency))+
  geom_violin(fill="lightgreen")+
  labs(title="Fuel Efficiency by Safety Rating")


plot(vehicle$Horsepower,
     vehicle$Top_Speed,
     main="Horsepower vs Top Speed",
     xlab="Horsepower",
     ylab="Top Speed",
     pch=19,
     col="blue")

heatmap(cor(vehicle[,2:6]),
        main="Vehicle Performance Correlation")


library(plotly)

plot_ly(vehicle,
        x=~Engine_Size,
        y=~Top_Speed,
        size=~Horsepower,
        color=~Safety_Rating,
        type="scatter",
        mode="markers")