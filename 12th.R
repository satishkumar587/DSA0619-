# Product Inventory Dataset
inventory <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  Quantity_Available = c(250, 175, 300),
  Price = c(20, 15, 18)
)

print(inventory)


# Dataset
inventory <- data.frame(
  Product_Name = c("Product A", "Product B", "Product C"),
  Quantity_Available = c(250, 175, 300)
)

barplot(inventory$Quantity_Available,
        names.arg = inventory$Product_Name,
        col = c("skyblue", "lightgreen", "pink"),
        main = "Quantity Available by Product",
        xlab = "Product Name",
        ylab = "Quantity Available")


# Dataset with sample categories
inventory <- matrix(
  c(250, 175, 300,
    100, 125, 150),
  nrow = 2,
  byrow = TRUE
)

colnames(inventory) <- c("Product A", "Product B", "Product C")
rownames(inventory) <- c("Warehouse 1", "Warehouse 2")

barplot(inventory,
        col = c("orange", "lightblue"),
        main = "Stacked Bar Chart of Product Quantities",
        xlab = "Products",
        ylab = "Quantity",
        legend.text = rownames(inventory))


# Dataset
inventory <- data.frame(
  Product_ID = c(1, 2, 3),
  Product_Name = c("Product A", "Product B", "Product C"),
  Quantity_Available = c(250, 175, 300),
  Price = c(20, 15, 18)
)

print(inventory)

# For RStudio
View(inventory)