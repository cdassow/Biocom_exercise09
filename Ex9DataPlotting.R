#Exercise 09 GAP
#Nov 26 2019

#packages
library(ggplot2)
library(cowplot)

# load data
airbnb<-read.csv("./Biocom_exercise09/airbnb.csv")

# plot data
a=ggplot(data=airbnb, mapping=aes(x=reviews, y=overall_satisfaction))

a+geom_point(color="blue", size = 3)+xlab("Number of Reviews")+ylab("Overall Satisfaction")+
  theme_bw() + geom_smooth(method="lm")

