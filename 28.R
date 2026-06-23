post_id <- c(1,2,3,4,5)
likes <- c(120,200,150,300,180)
comments <- c(15,30,20,40,25)
shares <- c(10,20,12,35,18)

social_media <- data.frame(post_id, likes, comments, shares)
social_media


hist(social_media$likes,
     main="Histogram of Likes",
     xlab="Likes",
     col="lightblue",
     border="black")



engagement <- c(sum(social_media$likes),
                sum(social_media$comments),
                sum(social_media$shares))

labels <- c("Likes","Comments","Shares")

pie(engagement,
    labels=labels,
    main="Total Engagement Components")



barplot(social_media$comments,
        names.arg=social_media$post_id,
        main="Comments by Post",
        xlab="Post ID",
        ylab="Comments",
        col="lightgreen")


plot(social_media$likes,
     social_media$shares,
     main="Likes vs Shares",
     xlab="Likes",
     ylab="Shares",
     pch=19,
     col="red")