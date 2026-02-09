install.packages("readxl")
install.packages("writexl")
library(readxl)
library(writexl)

data <- read_excel("customer_data.xlsx")
data

data["total_amount"]=data$Score+(data$Score*0.02)
data

write_xlsx(data,"customer_data2.xlsx")

unloadNamespace("readxl")
remove.packages("readxl")
