#Aggregating Logical Vector 
x <- c(1,3,4,2,5)
any(x>1)
all(x>1)

any(x>1 & x<1)
any(x>1) & any(x<1)
any(x>1)&& any(x<1)