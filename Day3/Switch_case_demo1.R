#WAP in R to accepts number between 1 and 7 and display days name 

num <- as.integer(readline("Enter a number between 1 and 7: "))

day <- switch(num,
              "Sunday",
              "Monday",
              "Tuesday",
              "Wednesday",
              "Thursday",
              "Friday",
              "Saturday",
              "Invalid data"
)

print(paste("The day is:", day, "\n"))