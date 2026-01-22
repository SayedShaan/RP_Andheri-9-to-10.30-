#Matrices
#Simple matrix

m <- matrix(1:10)
m
m[5,1]

#Create a matrix with 2 column 

m <- matrix(1:10 ,ncol =2)
m
m[3,2]

# Create a matrix with 2 rows
m <- matrix(1:10 ,nrow =2)
m

#Create a matrix with 2 rows and 5 column
m <- matrix(1:10, nrow=2,ncol=5)
m


#Put your date in matrix column wise
#By default it takes columns wise 
m <- matrix(1:10,nrow = 2,ncol = 5,byrow = FALSE)
m



#Put your date in matrix row wise 
m <- matrix(1:10,nrow = 2,ncol = 5,byrow = TRUE)
m



#Create a matrix with 2 rows and 6 columns value are going to be repeat 
#because we don't have enough date to fit in 6th column 
m <- matrix(1:10,nrow = 2,ncol = 8)
m


m[2,3]=5
m

