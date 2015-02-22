#ggplot learning script
#kartik
#Feb 22, 2015:
#kartikgavara@gmail.com

install.packages("ggplot2",dependencies = TRUE)
install.packages("plyr")
install.packages("ggthemes")
install.packages("reshape2")

library("ggplot2")
library("reshape2")

library("ggthemes")
library("plyr")
myplot <- ggplot(data = iris, aes(x=Sepal.Length, y=Sepal.Width))
summary(myplot)
ggplot(data = iris, aes(x=Sepal.Length, y=Sepal.Width, color=Species)) +
  geom_point(aes(shape=Species),size=4)


d2 <- diamonds[sample(1:dim(diamonds)[1],1000), ]
myplot <- ggplot(data = d2, aes(x=carat, y=price, color=color)) +
  geom_point(aes(shape=color),size=4)
myplot
dim(diamonds)
diamonds


library(MASS)
myplot <- ggplot(birthwt,aes(factor(race),bwt))+ geom_boxplot()
summary(myplot)
birthwt


# FACETS

ggplot(iris,aes(Sepal.Length,Sepal.Width,color=Species))+geom_point(size=4)+
  facet_grid(Species~.)
ggplot(iris,aes(Sepal.Length,Sepal.Width,color=Species))+geom_point(size=4)+
  facet_wrap(~Species)


#Scales

library(RColorBrewer)
display.brewer.all()

df<-melt(iris,id.vars="Species")
ggplot(df,aes(Species,value,fill=variable))+
  geom_bar(stat="identity",position="dodge")+
  scale_fill_brewer(palette="Set1")
