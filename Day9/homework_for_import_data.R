df <- read.csv("Importing file/customerdetails.txt")
df

colnames(df)
colnames(df)[2]="cust_name"
colnames(df)[3]="cust_email"
df


df <- df[,c("cust_name","cust_email")]
df

customer_mobile <- c("9874563210","9874514510","98745514510","987442110","9874683210")
cbind(df,customer_mobile)
df


customer_mobile <- c("9874563210","9874514510","98745514510","987442110","9874683210")
df <- cbind(df,customer_mobile)
df