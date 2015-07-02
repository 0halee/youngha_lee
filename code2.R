# load original data file
mydata <- read.csv("~/Desktop/UNdata.csv")
ls(mydata)

# exclude reigon name
mydata2 <- data.frame(mydata$OID,mydata$Value)

# attach my dataset object
attach(mydata2)

# draw histogram of crime rate
hist(mydata2)

# draw scatterplot by matrices
pairs(mydata2)
