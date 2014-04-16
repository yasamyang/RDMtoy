idx<-sample(1:dim(iris)[1],40)
isample<-iris[idx,]
isample$Species<-NULL
hc<-hclust(dist(isample),method="ward")
plot(hc,hang=-1,labels=iris$Species[idx])
rect.hclust(hc,k=5,border="red")