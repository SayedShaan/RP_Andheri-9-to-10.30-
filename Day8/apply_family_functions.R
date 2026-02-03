##Apply Family Function
##Apply Function
#The apply() function lets us apply a function to the rows or 
#columns of a matrix or data frame. This function takes matrix 
#or data frame as an argument along with function and whether 
#it has to be applied by row or column and returns the result 
#in the form of a 
#vector or array or list of values obtained.
#x: determines the input array including matrix.
#margin: If the margin is 1 function is applied across row, 
#if the margin is 2 it is applied across the column.
#function: determines the function that is to be applied on 
#input data.



m1 <- matrix(C <- (1:10),nrow = 5,ncol = 6)
m1

#Here 1 is row and 2 is column
a_m1 <- apply(m1, 2, sum)
a_m1


#LAPPLY Function
movies <- c("SPIDERMAN","BATMAN","VERTIGO","CHINATOWN")
movies_lower <- lapply(movies,tolower)
str(movies_lower)
movies
#unlistfunction
movies_lower <- unlist(lapply(movies,tolower))
movies_lower

#lapply
data <- list(x = 1:5, y = 6:10, z = 11:15)
data

sapply(data,noquote)
vapply(data,sum,FUN.VALUE = data)

lapply(data,FUN=median)
sapply(data,FUN=median)
sapply(data, FUN=data)
#sapply 

dt <- cars
cars
lms_cars <- lapply(dt,min)
smn_cars <- sapply(dt,min)
lms_cars
smn_cars
is.matrix(smn_cars)

#tapply
library(datasets)
mtcars
tapply(mtcars$mpg,mtcars$cyl,mean)

#mapply
x <- 1:5
b <- 6:10
x
b
mapply(sum,x,b)