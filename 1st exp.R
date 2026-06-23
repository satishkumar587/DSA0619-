# Monthly Sales Data
sales_data <- data.frame(
  Month = c("January", "February", "March", "April", "May"),
  Sales = c(15000, 18000, 22000, 20000, 23000)
)

sales_data
# Line Chart
plot(sales_data$Sales,
     type = "o",
     col = "blue",
     xaxt = "n",
     xlab = "Month",
     ylab = "Sales ($)",
     main = "Monthly Sales Trend")

axis(1, at = 1:5, labels = sales_data$Month)

# Sample Product Sales Data
products <- c("Product A", "Product B", "Product C", "Product D")
sales <- c(5000, 7000, 6000, 8000)

barplot(sales,
        names.arg = products,
        col = "lightgreen",
        main = "Top Selling Products",
        xlab = "Products",
        ylab = "Sales")

# Advertising Budget vs Sales
ad_budget <- c(1000, 1200, 1500, 1400, 1800)

plot(ad_budget,
     sales_data$Sales,
     pch = 19,
     col = "red",
     main = "Advertising Budget vs Sales",
     xlab = "Advertising Budget ($)",
     ylab = "Sales ($)")

# Add regression line
abline(lm(sales_data$Sales ~ ad_budget), col = "blue")

# Install package if needed
# install.packages("plotly")

library(plotly)

p1 <- plot_ly(sales_data,
              x = ~Month,
              y = ~Sales,
              type = "scatter",
              mode = "lines+markers")

p2 <- plot_ly(sales_data,
              x = ~Month,
              y = ~Sales,
              type = "bar")

subplot(p1, p2, nrows = 2, shareX = TRUE)

