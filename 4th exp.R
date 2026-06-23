product <- c("Product A","Product B","Product C",
             "Product D","Product E")
quantity <- c(250,175,300,200,220)

barplot(quantity,
        names.arg=product,
        main="Product Inventory Quantity",
        xlab="Products",
        ylab="Quantity Available",
        col="skyblue")


inventory <- matrix(c(250,175,300,200,220,
                      100,80,120,90,110),
                    nrow=2, byrow=TRUE)

colnames(inventory) <- c("A","B","C","D","E")
rownames(inventory) <- c("Category1","Category2")

barplot(inventory,
        main="Stacked Bar Chart of Product Categories",
        xlab="Products",
        ylab="Quantity",
        col=c("lightblue","lightgreen"),
        legend=rownames(inventory))


price <- c(50,40,60,45,55)
quantity <- c(250,175,300,200,220)

plot(price, quantity,
     main="Price vs Quantity Available",
     xlab="Product Price",
     ylab="Quantity Available",
     pch=19,
     col="red")


library(plotly)

product <- c("Product A","Product B","Product C",
             "Product D","Product E")
quantity <- c(250,175,300,200,220)

plot_ly(x=product,
        y=quantity,
        type="bar")