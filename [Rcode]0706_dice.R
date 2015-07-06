# #of dice rolls
d=10

# roll two dice 10 times
dice1 <- sample (6,d,replace=TRUE)
dice2 <- sample(6,d,replace = TRUE)

#sum of both dice
dice_roll <-dice1 + dice2

#histogram of experiment
hist(dice_roll)
hist(dice_roll, freq = FALSE )

#cumulative
ecdf(dice_roll)

plot.ecdf(dice_roll)
plot(ecdf(dice_roll))


#Drwing Normal Distribution
plot(rnorm(10000))
hist(rnorm(10000),prob=T)

#Finding z scores
zscore=dnorm(65,mean=70,sd=5)
zscore

#simply
z=(65-70)/5
z
quantile=pnorm(65,mean=70,sd=5)
quantile*100

#Normal pdf
#X~N(3,5),Pr(X>1)
1-pnorm(1,mean=3,sd=sqrt(5))

