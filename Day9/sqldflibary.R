# SQL Structure Query language

install.packages("sqldf")
library(sqldf)

real_Estate <- read.csv("Importing file/real_estate.csv")
real_Estate

sqldf("select * from real_Estate")
sqldf("select location,City,region_id,address_code from real_Estate")
sqldf("select count(*) from real_Estate")
sqldf("select count(*) from real_Estate where city='BOSTON'")
sqldf("select count(*) from real_Estate where city = 'MIDDLETOWN' and address_code >6457")
sqldf("select location,City,region_id,address_code from real_Estate where city = 'MIDDLETOWN' and address_code >6457")
sqldf("select * from real_Estate where region_id >3")
sqldf("select sum(region_id) from real_Estate")
sqldf("select avg(region_id) from real_Estate")