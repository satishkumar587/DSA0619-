# Stock Price Dataset
stock <- data.frame(
  Date = as.Date(c("2023-01-01",
                   "2023-01-02",
                   "2023-01-03")),
  Stock_A = c(100,105,110),
  Stock_B = c(150,152,148),
  Stock_C = c(120,118,122)
)

print(stock)



# Dataset
stock <- data.frame(
  Date = as.Date(c("2023-01-01",
                   "2023-01-02",
                   "2023-01-03")),
  Stock_A = c(100,105,110),
  Stock_B = c(150,152,148),
  Stock_C = c(120,118,122)
)

matplot(stock$Date,
        stock[,2:4],
        type = "o",
        pch = 1:3,
        lty = 1,
        col = c("blue","red","green"),
        xlab = "Date",
        ylab = "Stock Price",
        main = "Stock Price Trends")

legend("topleft",
       legend = c("Stock A","Stock B","Stock C"),
       col = c("blue","red","green"),
       pch = 1:3,
       lty = 1)



# Dataset
stock <- data.frame(
  Date = as.Date(c("2023-01-01",
                   "2023-01-02",
                   "2023-01-03")),
  Stock_A = c(100,105,110)
)

pct_change <- c(0,
                diff(stock$Stock_A) /
                  head(stock$Stock_A,-1) * 100)

barplot(pct_change,
        names.arg = stock$Date,
        col = "skyblue",
        main = "Daily Percentage Change - Stock A",
        xlab = "Date",
        ylab = "Percentage Change (%)")



# Dataset
stock <- data.frame(
  Date = as.Date(c("2023-01-01",
                   "2023-01-02",
                   "2023-01-03")),
  Stock_A = c(100,105,110),
  Stock_B = c(150,152,148),
  Stock_C = c(120,118,122)
)

print(stock)

# For RStudio
View(stock)