#Exercise 09 GAP
#Nov 26 2019

#packages
library(ggplot2)
library(cowplot)

# load data
airbnb<-read.csv("./Biocom_exercise09/airbnb.csv")

# plot data
a=ggplot(data=airbnb, mapping=aes(x=reviews, y=overall_satisfaction))

a+geom_point()+xlab("Number of Reviews")+ylab("Overall Satisfaction")+
  theme_bw() + geom_smooth(method="lm")
#ignore warning messages, data has not been cleaned for null and zero values

# Part 2, Data Visualization
# load data
compass<-read.table("./Biocom_exercise09/data.txt", sep = ",", header = T)

# bar plot - displays mean of each direction/region
ggplot(compass, aes(region, observations))+
  geom_bar(aes(fill = region),fun.y = "mean", stat = "summary")+
  theme_bw()

# scatter plot - shows distribution of observations within the direction/region
ggplot(compass, aes(x = region, y = observations))+
  geom_jitter(aes(color = region))+
  theme_bw()

#The bar and scatter plots tell a different story because one 
#summarizes the data while the other shows the distribution of
#the observatons within their categories.
