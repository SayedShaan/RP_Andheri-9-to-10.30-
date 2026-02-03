##Regular Expression
##Regex  
##Parttern & Matcher

#  - any one character
c <- c("RAT","was","bat","cat","the","times")
ans <- grep (".at",c)
c[ans]

#Any one character from the given brackets
ans <- grep("w[abc]s",c)
c[ans]

#No character from the given bracket
ans <- grep("t[^eom]mes",c)
c[ans]


# Any one character for the given range 
ans <- grep("[a-z]",c)
c[ans]

ans <- grep("[A-Z]",c)
c[ans]

ans <- grep("[A-z]",c)
c[ans]

ans <- grep("^.[a-z].$",c)
c[ans]

ans <- grep("^.[A-z].$",c)
c[ans]

#MetaCharacter
#\\d - digit
#\\D - non digit
#\\s - white space
#\\w - alphanumeric
#\\W - non alpha numeric

c <- c("jo","2","told","22","minutes"," in ","@#","a1")
ans <- grep("\\d",c) #only one digit number
c[ans]

ans <- grep("^\\d$",c) #we only one digit number exact
c[ans]

ans <- grep("^\\D\\D$",c) #Non Digit character
c[ans]

ans <- grep("\\sin\\s",c)
c[ans]


ans <- grep("\\s",c)
c[ans]

ans <- grep("\\Sin\\S",c)
c[ans]


ans <- grep("^\\w\\w",c)
c[ans]


ans <- grep("^\\W\\W",c)
c[ans]


#Mobile Number Validations
 mobile <- "9004076523"
 grep("\\d{10}",mobile)
 
 mobile <- "900407652a"   # text 
 grep("\\d{10}",mobile)
 
 mobile <- "90040765235"  #11 digits
 grep("^\\d{10}$",mobile)
 
 
 mobile <- "9004076523"     #\\d mean meta character
 grep("[0-9]{10}",mobile)
 
 
 
 
  ##Data validation
 
 d <- "12-12-1871"
 ans <- grep("\\d\\d-(\\d\\d)-()\\d{4}",d) 
 ans
 
 install.packages("stringr")
 library(stringr)
 ans <- str_match(d,"(\\d\\d)-(\\d\\d)-(\\d{4})")
 ans

 ans <- str_match(d,"\\d\\d-\\d\\d-\\d{4}")
 ans
 
 
 
 ##Password validation 
 #Password Should Contain 
 #At least 
 #one lower case alphabet
 #one upper case alphabet
 #one digit
 #One Special Character
 ##length between 6 to 18
 #?= at least onces
 
pass <- "Pass@123"
ans <- str_match(pass,"(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[#@$%-]).{6,18}")
if(is.na(ans)){
  "Weak password"
}else{
  "Strong password"
}



ans
 
#Error
pass <- "pass@123"
ans <- str_match(pass,"(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[#@$%-]).{6,18}")
ans
 

library(stringr)
s <- "long longon ago, in a galaxy far far away"
ans <- str_match(s,"(far){2}")
ans

ans <- str_match(s,"gal.{3}")
ans

ans <- str_match(s,"gal...")
ans

#Previous character should repeat zero or more times
ans <- str_match(s,"gal.*")  #take all the charter after gal
ans

ans <- str_match(s,"gal.*far")#.* mean ready pattern
ans

ans <- str_match(s,"gal.*?far")
ans

ans <- str_match(s,"(long)(on)")
ans

d <- "12-08-1871"
ans <- str_match(d,"(\\d\\d)-(\\d\\d)-(\\d{4})") 
ans


ans[1,1]
ans[1,2]
ans[1,3]
ans[1,4]



