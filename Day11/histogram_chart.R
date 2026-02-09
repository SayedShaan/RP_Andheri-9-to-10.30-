ages =c(20,30,35,38,12,15,18,9,40,41,48,55,59,68,65,75,85,90)

hist(ages,
     xlim = c(0,100),
     col ="pink",
     border="black",
     breaks = 10,
   
     )


axis(1, at = seq(0, 100, 10), labels = seq(0, 100, 10))