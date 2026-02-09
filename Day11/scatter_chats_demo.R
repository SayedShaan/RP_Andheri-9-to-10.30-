df <-  read.csv("homeprices.csv")
df

plot(df$Area,df$Price,
  main = "House Prices",
  xlab = "Area",
  ylab = "Price",
  xlim = c(100,1400),
  ylim = c(2000000,16000000),
  pch = 6,
  col = "red",
  cex = 1)