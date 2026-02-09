activities <- c("eat","sleep","work","play")
data <- c(3,9,9,3)

piepercent <- data/sum(data)*100
piepercent

piepercent <- round(data/sum(data)*100)
piepercent 

piepercent <- round(data/sum(data)*100)
pie(data,
    labels = piepercent,
    col = rainbow(4),
    border = "black"
  
)
legend( "topright",
        activities,
        cex = 0.8,
        fill = rainbow(4)
        
  
  
)

data <- c(10, 20, 30, 40)

# Calculate percentage labels
piepercent <- round(data / sum(data) * 100)

# Define colors
colors <- c("green", "blue", "red", "yellow")

# Create pie chart
pie(data,
    labels = paste(piepercent, "%"),
    col = colors,
    border = "black"
)



