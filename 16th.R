# Dataset

patient <- data.frame(
  Patient_ID = c("P01","P02","P03","P04","P05"),
  Age = c(25,40,55,35,60),
  BMI = c(22,28,30,26,32),
  BP = c(120,135,145,130,150),
  Cholesterol = c(180,210,240,200,260)
)

print(patient)


pairs(patient[,2:5],
      main="Scatterplot Matrix of Health Indicators")


qqnorm(patient$Cholesterol,
       main="Q-Q Plot of Cholesterol")

qqline(patient$Cholesterol,
       col="red")


plot(ecdf(patient$Cholesterol),
     main="ECDF of Cholesterol",
     xlab="Cholesterol",
     ylab="Probability")


avg <- colMeans(patient[,2:5])

barplot(avg,
        main="Average Health Indicators",
        xlab="Indicators",
        ylab="Average Value",
        col="lightblue")


heatmap(as.matrix(patient[,2:5]),
        main="Patient Health Risk Heatmap")