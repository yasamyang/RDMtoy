set.seed(1234)
ind <- sample(2, nrow(iris), replace=TRUE, prob=c(0.7, 0.3))
trainData <- iris[ind==1,]
testData <- iris[ind==2,]
library(party)
myFormula <- Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width
iris_ctree <- ctree(myFormula, data=trainData)
table(predict(iris_ctree), trainData$Species)
table(predict(iris_ctree, newdata=testData), testData$Species)
print(iris_ctree)
plot(iris_ctree)

library(RWeka)
t<-J48(myFormula, data=trainData)
#table(predict(t), trainData$Species)
summary(t)
plot(t)
WOW(J48)
t1<-J48(myFormula, data=trainData, control=Weka_control(B=TRUE))

