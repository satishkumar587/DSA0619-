# Dataset
movies <- data.frame(
  Movie_ID = c(1,2,3,4,5),
  Genre = c("Action","Comedy","Drama","Action","Comedy"),
  Rating = c(4.5,3.8,4.2,4.7,3.5),
  Duration = c(120,90,140,130,95)
)

hist(movies$Rating,
     main = "Histogram of Movie Ratings",
     xlab = "Rating",
     col = "lightblue",
     border = "black")


# Dataset
movies <- data.frame(
  Genre = c("Action","Comedy","Drama","Action","Comedy")
)

genre_count <- table(movies$Genre)

pie(genre_count,
    main = "Genre Distribution",
    col = c("skyblue","lightgreen","pink"))


# Dataset
movies <- data.frame(
  Genre = c("Action","Comedy","Drama","Action","Comedy"),
  Rating = c(4.5,3.8,4.2,4.7,3.5)
)

avg_rating <- aggregate(Rating ~ Genre,
                        data = movies,
                        mean)

barplot(avg_rating$Rating,
        names.arg = avg_rating$Genre,
        col = c("orange","lightgreen","skyblue"),
        main = "Average Ratings by Genre",
        xlab = "Genre",
        ylab = "Average Rating")


# Dataset
movies <- data.frame(
  Duration = c(120,90,140,130,95),
  Rating = c(4.5,3.8,4.2,4.7,3.5)
)

plot(movies$Duration,
     movies$Rating,
     pch = 19,
     col = "blue",
     main = "Duration vs Rating",
     xlab = "Duration (Minutes)",
     ylab = "Rating")

abline(lm(Rating ~ Duration, data = movies),
       col = "red",
       lwd = 2)

