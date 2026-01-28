install.packages("magrittr") # package installations are only needed the first time you use it
install.packages("dplyr")    # alternative installation of the %>%
library(magrittr) # needs to be run every time you start R and want to use %>%
library(dplyr)    # alternatively, this also loads %>%
df <- data.frame(
  "employeeid" = c(1,2,3,4,5),
  "employeename" = c("sameer","ravi","ankit","vijay","shaan"),
  "salary" = c(56000,89000,45000,35000,90000),
  "department" = c("hr","sales","Mk","R&D","IT"),
  "branch" = c("Mumbai","Pune","Nasik","Delhi","Bangalore")
)

df



#Select is used to select column and data frame
dplyr::select(df,employeeid, employeename)
dplyr::select(df, -employeename)
dplyr::select(df,everything())
dplyr::select(df,contains("a"))
dplyr::select(df,starts_with("e"))
dplyr::select(df,ends_with("e"))
dplyr::select(df,matches("^e"))
dplyr::select(df,employeeid:salary)

#filter is used to apply condition on dataframe row
dplyr::filter(df,salary>50000)
dplyr::filter(df,salary>50000,department == "hr")
dplyr::filter(df,salary>50000,department %in% c("hr","sales","IT"))

#mutate is used to modify existing table 
dplyr::mutate(df,annual_salary=salary*12, new_dep=department)
df <- dplyr::mutate(df,annual_salary=salary*12, new_dep=department)
df
library(dplyr)
#summarize function is used to give the summarized answer for a column 
dplyr::summarise(df,mymedian=median(salary),myfirst=first(salary),mymin=min(salary))
new_df <- dplyr::summarise(df,mymedian=median(salary),myfirst=first(salary),mymin=min(salary))               
df                 
#arrange functions is used to sort data in  ascending  and descending order
dplyr::arrange(df,salary)
dplyr::arrange(df,desc(salary))
dplyr::arrange(df,department,employeeid)

library("magrittr") 
library(dplyr)
#Pipe Operator
df[,c("employeeid","employeename")]

df %>% select(employeeid,employeename)
df %>% select(employeeid, employeename,salary)
df %>% filter(salary>45000)
df %>% mutate(new_dept=department)
df %>% summarise(last=last(salary))
df %>% arrange(salary)

#Group by is used to group the data category wise 
#if  you permanently group your table you can ungroup using ungroup() function 
#Calculate sum of salary department wise

df %>% summarise(sum=sum(salary))

df %>% filter(department=="hr") %>% summarise(sum=sum(salary))

df %>% group_by(department) #distinct department in the table 

df %>% group_by(department) %>% 
  summarise(sum=sum(salary))

df %>% group_by(branch) %>% 
  summarise(sum=sum(salary),min=min(salary))


library(dplyr)
#bind_cols is used to bind columns for two dataframe
df
df2 <- data.frame(
  "gender"= c("male","male","male","male","male")
)

df %>% bind_cols(df2)
df <- df %>% bind_cols(df2)
df


#bind_rows is used to bind rows for two dataframe

df2 <- data.frame(
  "employeeid"=c(6,7),
  "employeename"=c("satish","sonal"),
  "salary"=c(48000,51000),
  "department"=c("IT","sales"),
  "branch"=c("Mumbai","Bangalore")
 
)

df %>% bind_rows(df2)
df <- df %>% bind_rows(df2)
df


#union is used to join the tow table 
#if there duplicate records then it will display only one time



x <- data.frame(
    "A"=c(1,2,3),
    "B"=c("A","B","C")
)

y <- data.frame(
  "A"=c(2,3,4),
  "B"=c("B","C","D")
)

x %>% union(y)

x %>% union_all(y) 

#intersect is used to display common data 

x %>% intersect(y)

#setdiff is used to display x-y

x %>% setdiff(y)
y %>% setdiff(x)
#join 
#inner join 
#inner join gives common data between two tables on the basis of common column 

movie <- data.frame(
  "movie_id"=c(1,2,3,4),
  "movie_name"=c("saalar","tiger3","pathan","War"),
  "year_made"=c(2024,2024,2023,2019)
)

actor <- data.frame(
  "movie_id"=c(1,2,3,5),
  "first_name"=c("Prabhas","Salaman","Shahruk","Hrithik"),
  "last_name"=c("Raju","Khan","Khan","Roshan")
)
library(dplyr)
movie %>% inner_join(actor)

#left Join
#Display all the data from left table and matching the data from the right table 

movie %>% left_join(actor)


#right Join
#Display all the data from right table and matching the data from the left table 

movie %>% right_join(actor)



#full Join
#Display all the data from left and right table,

movie %>% full_join(actor)
movie %>% full_join(dplyr::select(actor,movie_id,first_name))

movie %>% full_join(dplyr::select(actor,movie_id,first_name))

#Delete Column 
#Overwrite existing dataframe or deleting column
library(dplyr)
actor <- dplyr::select(actor,-last_name)
actor

library(dplyr)
#change the name of the existing column 
new_df <-  dplyr::select(mutate(actor,fn=first_name),-first_name)
new_df

library(dplyr)
#Rename column
colnames(movie)
colnames(actor)
colnames(movie)[3]="year"
movie

#delete Rows
dplyr::filter(df,!(employeeid %in% c(1,2)))
df

#Adding a new column 
dplyr::mutate(actor,sr_no=rownames(actor))

lid
#Change row name 
rownames(actor)[2]=actor$fn
actor

rownames(actor)[1]="A"
actor

rownames(actor)[1:4]=letters[1:4]
actor

rownames(actor)[1:3]=31:33
actor


#Change row name 
rownames(actor)[2]="Sunil"
actor
