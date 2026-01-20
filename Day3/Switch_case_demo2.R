#WAP in R to accepts number between 1 and 7 and display days name 
num <- readline("Enter a number between 1 and 7: ")

day <- switch(num,
              "1" = "Sunday",
              "2" = "Monday",
              "3" = "Tuesday",
              "4" = "Wednesday",
              "5" = "Thursday",
              "6" = "Friday",
              "7" = "Saturday",
             
      
          
)

cat("The day is:", day, "\n")