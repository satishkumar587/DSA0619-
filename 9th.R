survey <- data.frame(
  Survey_ID = c(1,2,3),
  Question1 = c("A","B","C"),
  Question2 = c("B","A","A"),
  Question3 = c("C","D","B")
)

print(survey)

survey <- data.frame(
  Survey_ID = c(1,2,3),
  Question1 = c("A","B","C")
)

q1 <- table(survey$Question1)

barplot(q1,
        beside=TRUE,
        col=c("skyblue","lightgreen","pink"),
        main="Distribution of Responses for Question 1",
        xlab="Responses",
        ylab="Frequency")

survey <- data.frame(
  Question1 = c("A","B","C"),
  Question2 = c("B","A","A"),
  Question3 = c("C","D","B")
)

resp <- rbind(
  table(survey$Question1),
  table(survey$Question2),
  table(survey$Question3)
)

barplot(t(resp),
        col=c("skyblue","lightgreen","pink","orange"),
        main="Overall Distribution of Responses",
        xlab="Questions",
        ylab="Count")


survey <- data.frame(
  Survey_ID = c(1,2,3),
  Question1 = c("A","B","C"),
  Question2 = c("B","A","A"),
  Question3 = c("C","D","B")
)

View(survey)      # RStudio Table View
print(survey)     # Console Output
