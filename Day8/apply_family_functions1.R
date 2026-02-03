#Apply family functions
#Apply functions 

#Apply
#Lapply
#Sapply
#Tapply
#Mapply
#Vapply

m1 <- matrix(c <- (1:10),nrow=5,ncol=6)
m1

v <- c(2,3,4,5,6)

for(i in 1:5){
  print((v[i]%/%2))
  if((v[i]%/%2)==0)
  {
    print(v(i))
  }
}

df <- data.frame(
  "subject1"=c(45,65,98),
  "subject2"=c(45,65,98),
  "subject3"=c(45,65,98)
)
df

#Hear 1 is row and 2 is column
a_m1 <- apply(df,1,sum)
a_m1


#LApply Function
movies <- c("SPRIDERMAN","BATMAN","VERTIGO","CHINAGATE")
movies_lower <- lapply(movies, tolower)
movies_lower


##Unlistfunction 
movies_lower <- unlist(lapply(movies,tolower))
movies_lower

#Lapply
data <- list(x = 1:5, y = 6:10,z =11:15)
data


lapply(data,FUN = median)
sapply(data,FUN = median)

#sapply
lmn_car <- lapply(cars,min)
smn_car <- sapply(cars,min)
lmn_car
smn_car

is.data.frame(cars)
is.vector (smn_car)
is.list(lmn_car)


#tapply it is used to group the data 

library(datasets)
mtcars

?mtcars
tapply(mtcars$mpg,mtcars$cyl, mean)



data("iris")
iris

tapply(iris$Sepal.Width,iris$Species,mean)
tapply(iris$Petal.Width,iris$Species,mean)

##mapply
x <- 1:5
b <- 6:10
a <- 1:5
z <- 6:10

x
b
a
z

mapply(sum,x,b,a,z)

#vapply 
#First Paramenter - dataset
#Second Parameter - Function (in-built function , udf)
#Thrid Parameter - how many values it will return

square <-  function(x){
  x^2
}
square(3)

v <- c(1,2,3)
vapply(v, square,numeric(1))


v <- c(1,2,3)
vapply(v, function(x) c(x^2,x^3),numeric(2))

m <- matrix(101:110,nrow = 2)
m
vapply(m,function(x) x^2,numeric(1))
df
answer <- vapply(df, function(x) x^2,numeric(3))
answer

is.matrix(answer)