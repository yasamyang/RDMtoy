mydata<-iris
mydata$Species<-NULL
kc<-kmeans(mydata,3)
table(iris$Species, kc$cluster)
plot(mydata[c("Sepal.Length","Sepal.Width")],col=kc$cluster)