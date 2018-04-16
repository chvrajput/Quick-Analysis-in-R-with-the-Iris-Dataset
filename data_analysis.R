data(iris)
head(iris)

str(iris)
#summary gets basic statistics for each column on a dataframe:
summary(iris)

plot(iris)

par(mar=c(7,5,1,1)) # more space to labels
boxplot(iris,las=2)

#make a subset label wise
irisVer <- subset(iris, Species == "versicolor")
irisSet <- subset(iris, Species == "setosa")
irisVir <- subset(iris, Species == "virginica")
par(mfrow=c(1,3),mar=c(6,3,2,1))
boxplot(irisVer[,1:4], main="Versicolor",ylim = c(0,8),las=2)
boxplot(irisSet[,1:4], main="Setosa",ylim = c(0,8),las=2)
boxplot(irisVir[,1:4], main="Virginica",ylim = c(0,8),las=2)

#histograms are also very useful
hist(iris$Petal.Length)

par(mfrow=c(1,3))
hist(irisVer$Petal.Length,xlim=c(0,8),ylim=c(0,20))
hist(irisSet$Petal.Length,xlim=c(0,8),ylim=c(0,20))
hist(irisVir$Petal.Length,xlim=c(0,8),ylim=c(0,20))

#These indicates that the distribution of values for Petal.Length are different for each class.

#Violin plots shows statistics and data distribution:
library(vioplot)
vioplot(iris$Sepal.Length,iris$Sepal.Width,iris$Petal.Length,iris$Petal.Width,
        names=c("Sep.Len","Sep.Wid","Pet.Len","Pet.Wid"),
        col="gray")

#correlation between variables
corr <- cor(iris[,1:4])
round(corr,3)
pairs(iris[,1:4])

#Let's color by the class.
pairs(iris[,1:4],col=iris[,5],oma=c(4,4,6,12))
par(xpd=TRUE)
legend(0.55,0.6, as.vector(unique(iris$Species)),fill=c(1,2,3))

#plot of chunk iris_scatterpl2
par(mfrow=c(1,1))
library(MASS)
parcoord(iris[,1:4], col=iris[,5],var.label=TRUE,oma=c(4,4,6,12))
par(xpd=TRUE)
legend(0.6,0.4, as.vector(unique(iris$Species)),fill=c(1,2,3))

