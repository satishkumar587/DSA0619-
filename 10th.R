# Product Category Dataset
product <- data.frame(
  Category = c("Electronics", "Clothing", "Appliances"),
  Sales = c(50000, 35000, 40000)
)

print(product)

# Dataset
product <- data.frame(
  Category = c("Electronics", "Appliances", "Clothing"),
  Sales = c(50000, 40000, 35000)
)

# Sort data in descending order
product <- product[order(product$Sales, decreasing = TRUE), ]

# Funnel-style chart
barplot(product$Sales,
        names.arg = product$Category,
        horiz = TRUE,
        col = c("skyblue", "lightgreen", "pink"),
        main = "Product Category Funnel Chart",
        xlab = "Sales")

# Dataset
product <- data.frame(
  Category = c("Electronics", "Clothing", "Appliances"),
  Sales = c(50000, 35000, 40000)
)

# Display Table
print(product)

# For RStudio
View(product)


# Dataset
product <- data.frame(
  Category = c("Electronics", "Clothing", "Appliances"),
  Sales = c(50000, 35000, 40000)
)

pie(product$Sales,
    labels = paste(product$Category,
                   round(product$Sales/sum(product$Sales)*100,1),"%"),
    main = "Sales Distribution Across Categories",
    col = c("lightblue","lightgreen","pink"))