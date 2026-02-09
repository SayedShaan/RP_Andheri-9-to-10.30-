#ctrl + space bar
library(dplyr)
df <- read.csv("Importing file/automobile.csv")
df

#From given data set print first and last five rows
head(df,5)
tail(df,5)

#Find the most expensive car company name #max function

max(df$price)
df[df$price==max(df$price),]
df %>%filter(price==max(price))

#Print all the Toyota Car details #filter function
df[df$Company=="toyota",]
df %>% filter(Company=="toyota")
#Count total cars per company #group_by function
length(df$Index) #no of records
df %>% group_by(Company) %>% summarise(length(Company))

#Find each company's higesht prise car #group_by function

df %>% group_by(Company) %>% summarise(max(price))

#Find the average milage of each car making company #group_by function

df %>% group_by(Company) %>% summarise(mean(Average.mpg))


#Sort all the cars by price column #arrange function

df %>% arrange(desc(price))



