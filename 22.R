# Dataset
library_data <- data.frame(
  User_ID = c(1,2,3,4,5),
  Books_Borrowed = c(2,5,3,6,1),
  Days_Kept = c(10,25,14,30,7),
  Fine_Amount = c(0,15,0,20,0)
)

hist(library_data$Books_Borrowed,
     main = "Histogram of Books Borrowed",
     xlab = "Books Borrowed",
     col = "lightblue",
     border = "black")


# Dataset
library_data <- data.frame(
  User_ID = c(1,2,3,4,5),
  Fine_Amount = c(0,15,0,20,0)
)

fine_status <- ifelse(library_data$Fine_Amount > 0,
                      "With Fine",
                      "No Fine")

fine_table <- table(fine_status)

pie(fine_table,
    main = "Users With and Without Fines",
    col = c("lightgreen","pink"))



# Dataset
library_data <- data.frame(
  User_ID = c(1,2,3,4,5),
  Fine_Amount = c(0,15,0,20,0)
)

barplot(library_data$Fine_Amount,
        names.arg = library_data$User_ID,
        col = "orange",
        main = "Fine Amount by User",
        xlab = "User ID",
        ylab = "Fine Amount")


# Dataset
library_data <- data.frame(
  Days_Kept = c(10,25,14,30,7),
  Fine_Amount = c(0,15,0,20,0)
)

plot(library_data$Days_Kept,
     library_data$Fine_Amount,
     pch = 19,
     col = "blue",
     main = "Days Kept vs Fine Amount",
     xlab = "Days Kept",
     ylab = "Fine Amount")

abline(lm(Fine_Amount ~ Days_Kept,
          data = library_data),
       col = "red",
       lwd = 2)

