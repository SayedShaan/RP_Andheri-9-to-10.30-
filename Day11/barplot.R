data <- c(75000,45000)
gender <- c("Male","Female")

barplot(data,
        names.arg = gender,
        col = "red")



barplot(data,
        names.arg = gender,
        col = c("red","blue"),
        horiz = T)