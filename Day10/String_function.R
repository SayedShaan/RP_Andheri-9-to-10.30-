#String Function 

paste("HELLO","WORLD",sep =",")#sep means separate 
paste("HELLO","WORLD")
nchar("HELLO")#number of character 
sprintf("%04d",10)#format the string %04d D stand for digits
sprintf("%f",3.1855)#floothing point  
sprintf("%.2f",3.5646)
sprintf("%08.2f",10.986)
strsplit(c("Hello-World"),split='-')
strsplit(c("Hello-World"),split="")
substr("Shahnawaz",3,5)

name= "joe"
a=2
b=20
sprintf("%s  told me %d ways san jose in %d minutes",name,a,b)


sprintf("%s  told me %d ways san jose in %d minutes","jo",2,20)
