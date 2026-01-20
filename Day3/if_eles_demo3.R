#WAp is R to accept a number from user and check 
#weather it is negative, positive or zero

num <- as.numeric(readline("Enter a number"))
if(num>0){
  print("positive")
}else if(num<0){
  print("negative")
}else{
   print("zero")
}
