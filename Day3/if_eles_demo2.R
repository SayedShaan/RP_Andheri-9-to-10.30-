#WAP in R to accept amount and day from user and check
#weather amount is greater than 5000 and day is sunday
#then 5% discount

amount=as.numeric(readline("Enter Amount = "))
Day=readline("Enter day")
if(amount>5000 & tolower(Day) == "sunday"){
  print(paste("discount",amount*0.05))
}else{
  print(paste("no discount",amount))
}
