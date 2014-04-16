install.packages('e1071',dependencies=TRUE)
library(e1071)
model  <- svm(Sex~., data = cats)
print(model)
summary(model)
plot(model,cats)
index <- 1:nrow(cats)
    testindex <- sample(index, trunc(length(index)/3))
    testset <- cats[testindex,]
    trainset <- cats[-testindex,]
model <- svm(Sex~., data = trainset)
    prediction <- predict(model, testset[,-1])
tab <- table(pred = prediction, true = testset[,1])
