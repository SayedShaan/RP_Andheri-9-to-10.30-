num <- as.integer(readline("Enter the number between 1 to 7: "))

day <- switch(as.character(num),
              "1" = "Sunday",
              "2" = "Monday",
              "3" = "Tuesday",
              "4" = "Wednesday",
              "5" = "Thursday",
              "6" = "Friday",
              "7" = "Saturday",
              "In correct"
)

cat("The day corresponding to the number between 1 to 7: ", day, "\n")