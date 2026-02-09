Week1= c("Mon","Tue","Wed","Thu","Fri","Sat","Sun")
temp1= c(25,26,27,27,26,28,19)
  
Week2= c("Mon","Tue","Wed","Thu","Fri","Sat","Sun")
temp2= c(26,25,26,25,25,27,26)

plot(temp1,
     type ="l",
     xlab = "week",
     ylab = "temp",
     col = "blue",
     main = "Week1 vs Week2",
     xaxt = "n",
     ylim = c(24,33))

lines(temp2,col="green")
axis(1,at=1:7,labels = Week1)

#par(xpd=T)
legend( "topleft",
       legend = c("Week1", "Week2"),
       col = c("red", "green"),
       pch = 2,
       cex = 0.8,
       bty = "n",
       inset = c(0.02, 0.02)
)
