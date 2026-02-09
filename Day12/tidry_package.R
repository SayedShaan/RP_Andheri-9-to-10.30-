install.packages("tidyr",dependencies = T,repos = "https://cran.r-project.org/")
library(tidyr)

#Data Frame
storms <- data.frame(
  "storms" = c("Alberto", "Alex", "Ana", "Arlene", "Arthur"),
  "wind" = c(110, 45, 65, 40, 30),
  "Pressure" = c(1007, 1008, 1006, 1005, 1007),
  "date" = c("2001-08-12", "2002-07-02", "2000-07-11", "2004-06-21", "2001-06-13")
)



case <- data.frame(
  "country" = c("FR", "DE", "US"),
  "1995" = c(7000, 58000, 15000),
  "1996" = c(4000, 56000, 14000),
  "1997" = c(6000, 54000, 17000)
)


pollution <- data.frame(
  "city" = c("New York", "New York", "London", "London", "Beijing", "Beijing"),
  "pratical.size" = c("large", "small", "large", "small", "large", "small"),
  "amount" = c(23, 14, 28, 12, 110, 58)
)

storms
case
pollution


df <- tidyr::gather(case, "Year", "n", 2:4)
df
df[df$Year == 'X1995', ]


tidyr::gather(case,"Year","n",2:4)

pollution
tidyr::spread(pollution,"pratical.size",amount)

storms
storms2 <- tidyr::separate(storms, date = c("Year", "Month", "Date"), sep = "-")
storms2

storms2 <- tidyr::separate(storms, col = "date", into = c("Year", "Month", "Date"), sep = "-")
storms2

storms["ratio"]=storms$Pressure/storms$wind
storms

tidyr::unite(storms2,date,Year,Month,Date,sep = "/")

install.package("devtools",dependencies = T,respos= "https://cran.r-project.org/")
devtools::install_github("https://github.com/rstudio/EDAWR")
library(devtools)

devtools::install_github("rstudio/EDAWR")
library(EDAWR)

storms
rm(storms,case,pollution)

storms