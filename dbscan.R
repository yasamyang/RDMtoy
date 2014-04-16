#install.packages("fpc",dependencies=TRUE)
library('fpc')
d<-iris[1:4]
d<-scale(d)
db<-dbscan(d,0.5,5,showplot=2)