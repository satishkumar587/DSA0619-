# Dataset
student <- data.frame(
  Student_ID = c("S01","S02","S03","S04","S05","S06"),
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Study_Hours = c(2.0,3.5,1.5,4.0,2.8,3.0),
  Attendance = c(78,90,70,95,85,92),
  Math_Score = c(62,80,55,90,72,82),
  Science_Score = c(65,85,58,92,74,86),
  Exam_Date = c("2025-01-10","2025-01-10",
                "2025-02-12","2025-02-12",
                "2025-03-15","2025-03-15")
)

hist(student$Math_Score,
     main = "Histogram of Math Scores",
     xlab = "Math Score",
     col = "lightblue",
     border = "black")


# Dataset
student <- data.frame(
  Gender = c("Male","Female","Male","Female","Male","Female"),
  Science_Score = c(65,85,58,92,74,86)
)

boxplot(Science_Score ~ Gender,
        data = student,
        main = "Science Score by Gender",
        xlab = "Gender",
        ylab = "Science Score",
        col = c("lightgreen","pink"))



# Dataset
student <- data.frame(
  Study_Hours = c(2.0,3.5,1.5,4.0,2.8,3.0),
  Math_Score = c(62,80,55,90,72,82),
  Gender = c("Male","Female","Male","Female","Male","Female")
)

cols <- ifelse(student$Gender=="Male","blue","red")

plot(student$Study_Hours,
     student$Math_Score,
     pch = 19,
     col = cols,
     main = "Study Hours vs Math Score",
     xlab = "Study Hours",
     ylab = "Math Score")

abline(lm(Math_Score ~ Study_Hours, data=student),
       col="darkgreen",
       lwd=2)

legend("topleft",
       legend=c("Male","Female"),
       col=c("blue","red"),
       pch=19)


# Dataset
student <- data.frame(
  Exam_Date = as.Date(c("2025-01-10","2025-01-10",
                        "2025-02-12","2025-02-12",
                        "2025-03-15","2025-03-15")),
  Math_Score = c(62,80,55,90,72,82)
)

student$Month <- format(student$Exam_Date,"%Y-%m")

avg_score <- aggregate(Math_Score ~ Month,
                       data = student,
                       mean)

plot(avg_score$Math_Score,
     type = "o",
     xaxt = "n",
     xlab = "Month",
     ylab = "Average Math Score",
     main = "Monthly Average Math Score Trend")

axis(1,
     at = 1:nrow(avg_score),
     labels = avg_score$Month)

lines(avg_score$Math_Score,
      col = "red",
      lwd = 2)