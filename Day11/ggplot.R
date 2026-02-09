##ggplot2
##Grammer of Graphics

#Data	     -The data-set which we would want to plot a graph
##Aesthetics - The Metrics on which we plot our data 
##Geometry   -Visual Elements on plot the data 
##Face 	     - Graphs by which we divide data 


install.packages("ggplot2")
library("ggplot2")


#color aesthetic 

table(iris)
ggplot(data=iris,
       aes(y=Sepal.Length,
           x=Petal.Length,
           col=Species))+ geom_point()
iris

#Shape aesthetic
ggplot(data=iris,
       aes(y=Sepal.Length,
           x=Petal.Length,
           shape=Species))+ geom_point()


#Shape and color aesthetic
ggplot(data=iris,
       aes(y=Sepal.Length,
           x=Petal.Length,
           shape=Species,
           col=Species))+ geom_point()

#Histogram

ages <- data.frame(
  "age" = c(2, 3, 54, 56,
            76, 65, 34, 43, 41,
            12, 15, 19, 90, 87,
            86, 76, 92, 51, 13, 28)
)       
ages
##

ggplot(data=ages,aes(x=age))+geom_histogram(bin=10)
ggplot(data=ages,aes(age))+geom_histogram(bin=10,fill="blue")
ggplot(data=ages,aes(age))+geom_histogram(binwidth=20,bins=10,fill="blue",color="white")
ggplot(data=ages,aes(age,fill=age>=50))+geom_histogram(binwidth=20,bins=10,fill="blue",color="white")
            
#
ggplot(data=ages,aes(age,fili=age>50))+geom_histogram(bins=10)
            
            
 #Categorical Variable 
library(ggplot2)
install.packages("dplyr")
library(dplyr)
install.packages("scales")
library(scales)

# Create the shopping data frame
shopping <- data.frame(
  name = c("sagar", "marisha", "ankita", "sana", "ravi"),
  amount = c(2000, 25000, 21801, 1385, 570),
  gender = c("male", "female", "female", "female", "male")
)

# Bar plot showing gender distribution
ggplot(shopping, aes(x = gender, fill = gender)) +
  geom_bar()

# Bar plot showing total amount spent by gender
ggplot(shopping, aes(x = "", y = amount, fill = gender)) +
  geom_bar(width = 1, stat = "identity")




# Compute gender-wise count and percentage
shopping_summary <- shopping %>%
  group_by(gender) %>%
  summarise(n = n()) %>%
  ungroup() %>%
  mutate(per = n / sum(n))

# Convert percentage to label format
shopping_summary$per_label <- percent(shopping_summary$per)

# Pie chart
ggplot(shopping_summary, aes(x = "", y = n, fill = gender)) +
  geom_bar(width = 1, stat = "identity") +
  coord_polar("y", start = 90) +
  geom_text(aes(label = per_label), position = position_stack(vjust = 0.5), size = 5)