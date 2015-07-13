######1

fir <- c(20,32,35,34,40,51,52,56,57,68)
sec <- c(23,34,36,44,42,51,54,57,54,62 )

fit <- lm(fir~sec)
par(mfrow=c(2,2))
plot(fit)
plot(fir,sec, xlab="first visit spending",ylab="second visit spending")
r <- cor(fir,sec)
SE <- sqrt((1-r^2)/(length(fir)-2))

summary(fit)

cor(fir,sec)
corr<-cor.test(fir,sec)
corr$conf.int


#####2
c1_B <- c1 + 30
c2_B <- c2 + 30
cor(c1,c2_B)

c1_C <- c1*100
cor(c1_C,c2)


#####3
b1 <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8,3.1)
b2 <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25,65)

plot(b1,b2)

m <- lm(b2~b1)
abline(m)


summary(m)
a <- m$coefficients[1]
b <- m$coefficients[2]


b3 <- mat.or.vec(20,1)
for (i in 1:length(b3)) {
  b3[i] = b*b1[i] + a
}

points(b1,b3,col="red")

cor.test(b1,b2)