age <- c(25,30,35,28,40)

hist(age,
     main="Distribution of Customer Ages",
     xlab="Age",
     ylab="Frequency",
     col="lightblue")

score <- c(4,5,3,4,5)
freq <- table(score)

pie(freq,
    main="Customer Satisfaction Scores",
    labels=names(freq),
    col=rainbow(length(freq)))

age <- c(25,30,35,28,40)
score <- c(4,5,3,4,5)

age_group <- cut(age,
                 breaks=c(20,30,40,50),
                 labels=c("20-30","31-40","41-50"))

tab <- table(age_group,score)

barplot(tab,
        main="Satisfaction Scores by Age Group",
        xlab="Age Group",
        ylab="Count",
        col=rainbow(ncol(tab)),
        legend=colnames(tab))

library(wordcloud)

feedback <- c(
  "Good service and friendly staff",
  "Excellent support and quick response",
  "Good experience and service",
  "Friendly staff and helpful support",
  "Excellent service and satisfaction"
)

wordcloud(feedback,
          max.words=50,
          random.order=FALSE)