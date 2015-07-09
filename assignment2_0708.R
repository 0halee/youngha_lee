

##1
#a

p <-c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,93,101,82,83,74,91,83,98,95,111,99,120,93,84)
M <- mean(p)
#bFalse.
#c
SE <- sd(p)/sqrt(length(p))
#d
M - (qt(0.975, length(p)))*SE
M + (qt(0.975, length(p)))*SE


##2
male <- c(220.1, 218.6, 229.6, 228.8,222.0,224.1, 226.5)
female <- c(223.4,221.5,230.2,224.3,223.8,230.8)
mean(male)
mean(female)
sd(male)
sd(female)

t.test(male, female)
#We cannot reject the null hypothesis that male and females have the same mean cholesterol concentrations. 

##3
#a)False. p- value ㄴㄴsize of effect
#b)True.
#c)False. 
#d)False.
#e)True.

##4
A <- c(248, 236, 269, 254, 249, 251, 260, 245, 239, 255)
B <- c(380, 391, 377, 392, 398, 374 )
wilcox.test(1.5*A,B)

##5
kk <- rnorm(1000, 2, 3)
kk
mean(kk)
sd(kk)
sd(kk)/sqrt(1000)