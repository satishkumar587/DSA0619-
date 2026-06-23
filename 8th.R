# Dataset
data <- data.frame(
  Student_ID = c("L01","L02","L03","L04","L05","L06"),
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Age = c(20,22,19,21,23,20),
  Course = c("R","R","SQL","R","R","SQL"),
  Study_Time = c(3.5,4.2,2.0,5.0,2.5,4.0),
  Videos_Watched = c(12,15,8,18,9,14),
  Quiz_Score = c(78,85,65,92,70,88),
  Login_Date = c("2025-01-05","2025-01-05","2025-02-08",
                 "2025-02-08","2025-03-12","2025-03-12")
)

hist(data$Quiz_Score,
     main="Histogram of Quiz Scores",
     xlab="Quiz Score",
     col="skyblue",
     border="black")


# Dataset
data <- data.frame(
  Student_ID = c("L01","L02","L03","L04","L05","L06"),
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Age = c(20,22,19,21,23,20),
  Course = c("R","R","SQL","R","R","SQL"),
  Study_Time = c(3.5,4.2,2.0,5.0,2.5,4.0),
  Videos_Watched = c(12,15,8,18,9,14),
  Quiz_Score = c(78,85,65,92,70,88)
)

boxplot(Quiz_Score ~ Course,
        data=data,
        main="Quiz Score by Course",
        xlab="Course",
        ylab="Quiz Score",
        col=c("lightgreen","lightpink"))

# Dataset
data <- data.frame(
  Study_Time = c(3.5,4.2,2.0,5.0,2.5,4.0),
  Videos_Watched = c(12,15,8,18,9,14),
  Quiz_Score = c(78,85,65,92,70,88)
)

symbols(data$Study_Time,
        data$Quiz_Score,
        circles=data$Videos_Watched/4,
        inches=0.3,
        bg="lightblue",
        fg="blue",
        xlab="Study Time (hrs)",
        ylab="Quiz Score",
        main="Study Time vs Quiz Score")


# Dataset
data <- data.frame(
  Login_Date = as.Date(c("2025-01-05","2025-01-05",
                         "2025-02-08","2025-02-08",
                         "2025-03-12","2025-03-12")),
  Quiz_Score = c(78,85,65,92,70,88)
)

data$Month <- format(data$Login_Date,"%Y-%m")

monthly_avg <- aggregate(Quiz_Score ~ Month,
                         data=data,
                         mean)

plot(monthly_avg$Quiz_Score,
     type="o",
     xaxt="n",
     xlab="Month",S
     ylab="Average Quiz Score",
     main="Monthly Average Quiz Score")

axis(1,
     at=1:nrow(monthly_avg),
     labels=monthly_avg$Month)

lines(monthly_avg$Quiz_Score,
      col="red",
      lwd=2)