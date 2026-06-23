# Dataset
restaurant <- data.frame(
  Order_ID = c(1,2,3,4,5),
  Items_Ordered = c(2,5,3,4,2),
  Bill_Amount = c(25,60,35,50,20),
  Dining_Type = c("Dine-In","Takeaway",
                  "Dine-In","Delivery",
                  "Takeaway")
)

hist(restaurant$Bill_Amount,
     main = "Histogram of Bill Amounts",
     xlab = "Bill Amount",
     col = "lightblue",
     border = "black")



# Dataset
restaurant <- data.frame(
  Dining_Type = c("Dine-In","Takeaway",
                  "Dine-In","Delivery",
                  "Takeaway")
)

dining_count <- table(restaurant$Dining_Type)

pie(dining_count,
    main = "Dining Type Distribution",
    col = c("lightgreen","orange","pink"))


# Dataset
restaurant <- data.frame(
  Order_ID = c(1,2,3,4,5),
  Items_Ordered = c(2,5,3,4,2)
)

barplot(restaurant$Items_Ordered,
        names.arg = restaurant$Order_ID,
        col = "skyblue",
        main = "Items Ordered by Order",
        xlab = "Order ID",
        ylab = "Items Ordered")



# Dataset
restaurant <- data.frame(
  Items_Ordered = c(2,5,3,4,2),
  Bill_Amount = c(25,60,35,50,20)
)

plot(restaurant$Items_Ordered,
     restaurant$Bill_Amount,
     pch = 19,
     col = "blue",
     main = "Items Ordered vs Bill Amount",
     xlab = "Items Ordered",
     ylab = "Bill Amount")

abline(lm(Bill_Amount ~ Items_Ordered,
          data = restaurant),
       col = "red",
       lwd = 2)