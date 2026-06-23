song_id <- c(1,2,3,4,5)
duration <- c(3.5,4.2,3.8,5.0,4.1)
streams <- c(150,200,180,250,170)
genre <- c("Pop","Rock","Pop","Hip-Hop","Rock")

music <- data.frame(song_id,duration,streams,genre)
music



duration <- c(3.5,4.2,3.8,5.0,4.1)

hist(duration,
     main="Histogram of Song Durations",
     xlab="Duration (Minutes)",
     col="lightblue",
     breaks=5)


genre <- c("Pop","Rock","Pop","Hip-Hop","Rock")

genre_count <- table(genre)

pie(genre_count,
    labels=names(genre_count),
    main="Genre Distribution",
    col=c("lightgreen","lightblue","pink"))



genre <- c("Pop","Rock","Pop","Hip-Hop","Rock")
streams <- c(150,200,180,250,170)

avg_streams <- tapply(streams, genre, mean)

barplot(avg_streams,
        main="Average Streams by Genre",
        xlab="Genre",
        ylab="Average Streams (000s)",
        col="orange")



duration <- c(3.5,4.2,3.8,5.0,4.1)
streams <- c(150,200,180,250,170)

plot(duration, streams,
     main="Duration vs Streams",
     xlab="Duration (Minutes)",
     ylab="Streams (000s)",
     pch=19,
     col="blue")