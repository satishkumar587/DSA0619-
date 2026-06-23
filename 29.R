sample_id <- c(1,2,3,4,5)
ph_level <- c(7.2,6.8,7.5,6.5,7.1)
turbidity <- c(3,5,2,7,4)
quality <- c("Good","Fair","Good","Poor","Fair")

water <- data.frame(sample_id, ph_level, turbidity, quality)
water



sample_id <- c(1,2,3,4,5)
ph_level <- c(7.2,6.8,7.5,6.5,7.1)

hist(ph_level,
     main="Histogram of pH Levels",
     xlab="pH Level",
     col="lightblue",
     breaks=5)



quality <- c("Good","Fair","Good","Poor","Fair")

quality_count <- table(quality)

pie(quality_count,
    main="Water Quality Categories",
    labels=names(quality_count),
    col=c("green","yellow","red"))



sample_id <- c(1,2,3,4,5)
turbidity <- c(3,5,2,7,4)

barplot(turbidity,
        names.arg=sample_id,
        main="Turbidity by Sample",
        xlab="Sample ID",
        ylab="Turbidity",
        col="skyblue")


ph_level <- c(7.2,6.8,7.5,6.5,7.1)
turbidity <- c(3,5,2,7,4)

plot(ph_level, turbidity,
     main="pH Level vs Turbidity",
     xlab="pH Level",
     ylab="Turbidity",
     pch=19,
     col="blue")