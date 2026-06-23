# Dataset

student <- data.frame(
  Student_ID = c("S01","S02","S03","S04","S05"),
  Age = c(19,21,20,22,23),
  Study_Hours = c(12,8,15,10,7),
  Attendance = c(90,70,95,85,60),
  Test_Score = c(85,70,92,80,65),
  Participation_Score = c(8,7,9,8,6)
)

print(student)


plot(student$Student_ID,
     student$Test_Score,
     type="o",
     col="blue",
     main="Student Test Score Trend",
     xlab="Students",
     ylab="Score")


boxplot(student$Study_Hours,
        main="Study Hours Distribution",
        ylab="Study Hours",
        col="lightblue")


plot(density(student$Test_Score),
     main="Density Plot of Test Score",
     xlab="Test Score",
     col="red")


plot(student$Study_Hours,
     student$Test_Score,
     main="Study Hours vs Test Score",
     xlab="Study Hours",
     ylab="Test Score",
     pch=19,
     col="green")