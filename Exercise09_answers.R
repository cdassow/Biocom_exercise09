rm(list=ls()) #clears environment

#Load packages
library(ggplot2)
library(cowplot)
library(reshape2)

#1.


#2.
#Loading data- actually csv
data=read.csv("~/Desktop/Biocomp/Biocom_exercise09/data.txt", header=T, stringsAsFactors = F)
#Boxplot
box=ggplot(data=data,aes(x=region, y=observations))+
  geom_boxplot()+xlab("Region")+ylab("Observations")+ theme_classic()
#Scatterplot
scatter=ggplot(data=data,aes(x=region, y=observations))+
  geom_point()+xlab("Region")+ylab("Observations")+ theme_classic()+geom_jitter()

plot_grid(box, scatter) #plots them side by side

#The boxplot and scatterplot tell different stories. The scatterplot plots every observation
#individually, but the boxplot is a summary of the stats so it only plots the min, median, max
#and 25th/75th percentiles. In the south, you can see that the boxplot does not represent
#the data because most of the observations occur towards the extremes of the boxplot. Similarly,
# in the west there is an even distribution of observations, which is not shown with the boxplot.


