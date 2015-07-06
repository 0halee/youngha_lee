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


hist(log(a$probabilities))


