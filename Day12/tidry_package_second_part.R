#Please fine NBA Dataframe below and preform following operations:


nba <- data.frame(
  player = c("James","Durant","Curry","Harden","Paul","Wade"),
  team = c("CLEOH","GSWOAK","GSWOAK","HOUTX","HOUTX","CLEOH"),
  day1point = c("25","23","30","41","26","20"),
  day2point = c("24","25","33","45","26","23")
)
nba

#Perform following operations on given data:

#1) Gather
newnba <- tidyr::gather(nba,"point","n",3:4)
newnba

#2) Spread
newnba <- tidyr::spread(newnba,"point","n")
newnba
newnba[newnba$point=="day1point",]
newnba
#3) separated
seperated <- tidyr::separate(nba,team,c("team","state"),sep = 3)
seperated
#4) unite 
tidyr::unite(seperated,"team",team,state,sep ="-")