head(mtcars)
bad <- kmeans(mtcars, centers=2)  #Given those features,
bad

plot(mtcars$mpg, mtcars$hp, pcf=16, )
library("caret")
library("e1071")
library("klaR")
library("class")


library("ElemStatLearn")
sub = sample(nrow(spam),floor(nrow(spam)*0.9))

train= spam[sub,]
test = spam[-sub,]



xTrain = train[,-58]
yTrain = train$spam
xTest = test[,-58]
yTest = test$spam

model = train(xTrain, yTrain, 'nb', trControl = trainControl(method = 'cv', number = 10))
prop,table()

#Example1
ye.model <- lm(income~education, data= sls)
sls$pred <- predict(ye.model, sls)
points(sls$education, sls$pred, col="blue", pch=16)

#Example2
newsls <- data.frame(education = seq(1, 25, 0.5))
mewsls$pred <- predict(ye.model, newsls)
points(newsls$education, newsls$pred, col="green")
points(newsls$education, newsls$pred, col="green", pch=3)


mydata <- read.csv(file.choose(), header=T)

head(mydata)
attach(mydata)

ye.model <- lm( SCORE ~ AREA, data=mydata)
pred <- predict(ye.model, mydata)

plot(AREA, CRIME)
abline(ye.model, col='blue')
points(AREA, pred, col='blue', pch=16)

detach(mydata)
