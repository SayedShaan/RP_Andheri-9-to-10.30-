#Vector
# Vector are used to store multiple 
#values together 
v <- 1:10
v


v <- seq(1:10)
v

v <- seq(1,10,2)
v

#C is function 
v <- c(1,2,3)
v

v <- c(1.3,2.5,9.8)
v

##Heterogenous 
v <- c(1,1.3,"hello")
v
class(v)

##Indexing
id <- c(11,21,33,45,56)
id[3]
id[5]
id[2:4]


#Condition
salary <- c(45000,35000,75000,95000,25000)
salary>50000

salary <- c(45000,35000,75000,95000,25000)
salary[salary>50000]


#vector is mutable
v <-c(12,13,31)
v[1]=21
v

class(v)
