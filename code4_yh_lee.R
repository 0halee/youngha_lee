# SKKU ISS 2015, Lecture 4
# Objective: plotting open government data

# Jevin West
# Date:  7/2/2015

#clean variables
rm(list=ls(all=TRUE))

# read in data
P <- read.csv("~/GitHub/SKKU_DataScience_2015/data_sets/UNdata_precipitation.csv")

# (1) Compare the precipitation from 1999 to 2005.  Are they different?
attach(P)

apply(P, Year, mean )

ls(P)
is.numeric(Year)
is.numeric(Value)
is.numeric(Country)

tapply(P$Value, P$Year, mean)

y1999 <- P[P$Year==1999,]
y2005 <- P[P$Year==2005,]

hist(log10(y1999$Value))
hist(log10(y2005$Value))

t.test(log10(y1999$Value),log10(y2005$Value))

# (2) Precipitation for all countries over time.

means <- tapply(P$Value,P$Year,mean)
plot(x=levels(factor(P$Year)), y=means, xlab="Year", ylab="Precipitation")


abline(lm(Value ~ Year, data=P))



plot(x=levels(factor(P$Year)), y=means)
