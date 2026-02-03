
#Ctrl + Shif + 1 -> to maximize code editor window
#RSQLITE Package is used for a database 
#Database is a collection of tables 
#SQL- Structure Query language 

#CRUD operations    
#C Create
#R Read
#U Update
#D Delete

#install R SQLITE Package
install.packages("RSQLite")
#use Library
r

#Check if folder doen't exist. Create a new one 
if (!dir.exists("SQLDATA"))
  dir.create("SQLDATA")

#Create Dataframe
employees <- data.frame(
  "employeeid"=c(1,2,3),
  "employeename"=c("Shaan","Ankita","Soni"),
  "salary"=c(50000,45000,45000)
)
employees
install.packages("DBI")
install.packages("sqldf")
library("sqldf")
library("DBI")
library("RSQLite")
#Connect to the file if already exist otherwise create database
mydb <- dbConnect(SQLite(),"example.sqlite")

con <- dbConnect(SQLite(),"demo.sqlite")

install.packages("DBI")
install.packages("RSQLite")
install.packages("sqldf")
install.packages("devtools")

#Using Database connection store your dataframe with name employees as table name.
#First Parameter - connection with database
#Second Parameter - Table name
#Thrid Parameter - dataframe
dbWriteTable(con,"employees",employees)

#Check if the employees table exists in your database
dbExistsTable(con,"employees")


install.packages("ggplot2")
install.packages("nycflights13")
install.packages("vignettes")
install.packages("tidyverse")
library(ggplot2)
library(nycflights13)


data("diamonds",package = "ggplot2")
data("flights", package = "nycflights13")

#str(diamonds)
#data(diamonds)
#head(diamonds)

flights
diamonds

#To Store the data in the database

dbWriteTable(con ,"diamonds",diamonds)
dbWriteTable(con,"flights",flights)
dbWriteTable(,"diamonds",diamonds)

#Check diamonds and flight table Exists or not 
dbExistsTable(con,"diamonds")
dbExistsTable(con,"flights")


#display list of table from a given database file.
dbListTables(con)
dbListFields(con,"employees")
dbListFields(con,"diamonds")
dbListFields(con,"flights")

#Read data from table without sql query
employee_data <- dbReadTable(con,"employees")
employee_data

f <- dbReadTable(con,"flights")
f
print.data.frame(f)
d <- dbReadTable(con,"diamonds")
d

#Read data from  table using sql query 
  
employee_data <- dbGetQuery(con,"select * from employees")
employee_data

employee_data <- dbGetQuery(con,"select employeeid,salary from employees")
employee_data

#Sort
#order by clase 
#Bydefault order by sort data in ascending order
employee_data <- dbGetQuery(con,"select * from employees order by salary asc")
employee_data


employee_data <- dbGetQuery(con,"select * from employees order by salary desc")
employee_data

#order By with aplhabets 
employee_data <- dbGetQuery(con,"select * from employees order by employeename desc")
employee_data

employee_data <- dbGetQuery(con,"select * from employees order by employeename asc")
employee_data

#Condition queries(where query)
employee_data <- dbGetQuery(con,"select* from employees where salary = 50000")
employee_data

employee_data <- dbGetQuery(con,"select* from employees where salary < 50000")
employee_data

employee_data <- dbGetQuery(con,"select* from employees where employeename = 'Shaan'")
employee_data

employee_data <- dbGetQuery(con,"select* from employees where employeeid >1")
employee_data

write.csv(f,"flights_details.csv")

#like operator
#Wildcard 
employee_data <- dbGetQuery(con,"select * from employees where employeename like '%aa%'")
employee_data

#insert new records in existing table employees
emps <- data.frame(
  "employeeid"=c(4,5),
  "employeename"=c("Prachi","Riya"),
  "salary"=c(35000,65000)
)
emps

dbAppendTable(con,"employees",emps)

#SQL Query to fetch data from database table employees

employee_data <- dbGetQuery(con,"select * from employees ")
employee_data

#Aggregate Function
employee_data <- dbGetQuery(con,"select sum(salary) from employees ")
employee_data

employee_data <- dbGetQuery(con,"select avg(salary) from employees ")
employee_data

employee_data <- dbGetQuery(con,"select count(salary) from employees ")
employee_data

employee_data <- dbGetQuery(con,"select max(salary) from employees ")
employee_data

employee_data <- dbGetQuery(con,"select min(salary) from employees ")
employee_data


#you are not modifying exixting table 
#annual salary column is just created tempory
#Alise name 
employee_data <- dbGetQuery(con,"select employeeid,employeename,salary,salary*12 as[Annualsalary] from employees ")
employee_data


employee_data <- dbGetQuery(con,"select* from employees where employeeid = 1")
employee_data

#give me the data of employee whose employee_id = user input
get_employee_by_id <- function(id){
  employee_data <- dbGetQuery(con,"Select * from employees where employeeid = ?",id)
  employee_data
}
get_employee_by_id(1)
get_employee_by_id(5)
get_employee_by_id(2)
get_employee_by_id(4)


#Delete employee whose employee is 5
dbSendStatement(con,"delete from employees where employeeid =?",5)
employee_data <- dbGetQuery(con,"select * from employees ")
employee_data

#update name from Soni to Rani
dbSendStatement(con,sprintf("update employees set employeename='%s'where employeeid=%d",'Rani',3))
employee_data <- dbGetQuery(con,"select * from employees ")
employee_data


dbSendStatement(con,sprintf("update employees set employeename='Soni'where employeeid=3",'Soni',3))
employee_data <- dbGetQuery(con,"select * from employees ")
employee_data


dbSendStatement(con,"alter table employees rename column employeename to empname")
employee_data <- dbGetQuery(con,"select * from employees ")
employee_data

#check the datetyes of the table 
dbDataType(con,employee_data)

#Disconnect datatype file example.sqlite
dbDisconnect(con)
rm(employee_data)

#Try to fetch  data after closing connection
#It will giving an error
employee_data <- dbGetQuery(con,"select * from employees")
employee_data