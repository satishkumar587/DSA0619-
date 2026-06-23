# Dataset
hotel <- data.frame(
  Booking_ID = c(1,2,3,4,5),
  Stay_Nights = c(2,5,3,7,4),
  Guests = c(2,4,1,3,2),
  Room_Type = c("Standard","Deluxe","Standard","Suite","Deluxe")
)

hist(hotel$Stay_Nights,
     main = "Histogram of Stay Nights",
     xlab = "Stay Nights",
     col = "orange",
     border = "black")


# Dataset
hotel <- data.frame(
  Room_Type = c("Standard","Deluxe","Standard","Suite","Deluxe")
)

room_count <- table(hotel$Room_Type)

pie(room_count,
    main = "Room Type Distribution",
    col = c("skyblue","lightgreen","pink"))


# Dataset
hotel <- data.frame(
  Booking_ID = c(1,2,3,4,5),
  Guests = c(2,4,1,3,2)
)

barplot(hotel$Guests,
        names.arg = hotel$Booking_ID,
        col = "orange",
        main = "Guests per Booking",
        xlab = "Booking ID",
        ylab = "Number of Guests")



# Dataset
hotel <- data.frame(
  Stay_Nights = c(2,5,3,7,4),
  Guests = c(2,4,1,3,2)
)

plot(hotel$Guests,
     hotel$Stay_Nights,
     pch = 19,
     col = "blue",
     main = "Guests vs Stay Nights",
     xlab = "Guests",
     ylab = "Stay Nights")

abline(lm(Stay_Nights ~ Guests, data = hotel),
       col = "red",
       lwd = 2)