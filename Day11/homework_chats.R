#Question1

company_data <- read.csv("Importing file/compant_sales_data.csv")
company_data
plot(company_data$Month_number,
     company_data$Total_profit,
     xlab = "Month number",
     ylab = "Total profit",
     type = "l",
     col = ("blue")
     )

#Question2

company_data <- read.csv("Importing file/compant_sales_data.csv")
company_data
plot(company_data$Month_number,
     company_data$Total_profit,
     xlab = "Month number",
     ylab = "Total profit",
     col = ("red"),
     type = "o",
     lty = 2,
     lwd = 2,
     pch =19
    )


legend("topleft",
       legend = c("profit data of last year"), # Legend label corrected
       col = "red",                           # Color specification
       lty = 1:2,                             # Line type
       pch = 19)                              # Symbol type



#Question3
company_data <- read.csv("Importing file/compant_sales_data.csv")
company_data

plot(company_data$Facecream,
     type = "o",
     xlab = "month_number",
     ylab = "total_profit",
     col = "red",
     ylim = c(1000,15000),
     lty = 2,
     lwd = 2,
     pch =19)

lines(company_data$Facewash, type = "o", col = "blue",lty = 2,lwd = 2)
lines(company_data$Toothpast, type = "o", col = "brown",lty = 2,lwd = 2)
lines(company_data$Bathing.soap, type = "o", col = "black",lty = 2,lwd = 2)
lines(company_data$Moisturze, type = "o", col = "magenta",lty = 2,lwd = 2)
lines(company_data$Shampoo, type = "o", col = "green",lty = 2,lwd = 2)


legend("topleft",
       legend = c("Facewash","Toothpaste","Bathing.soap","Moisturze","Shampoo"), # Legend label corrected
       col = c("blue","green","black","magenta","red"),                           # Color specification
       lty = 1:2,                             # Line type
       pch = 19,
       bty = "n",
       cex = 0.8, ncol = 2
       )  



#Question4
company_data <- read.csv("Importing file/compant_sales_data.csv")
company_data

plot(company_data$Month_number,company_data$Toothpast,
     type = "p",
     xlab = "month_number",
     ylab = "ToothPast Data",
     col = "blue",
     lty = 2,
     lwd = 2,
     pch = 19
     )

grid(nx = NULL, ny = NULL, col = "gray", lty = "dotted")

legend("topleft", legend = "Toothpaste sales data", col = "black", pch = 16,bty = "n")

