#part1
library(ggplot2)
library(cowplot)
bball=read.table ("bballex9.csv", header=T, sep=",")
a=ggplot(data=bball, aes(x= avg, y= obp))+
  geom_point(color= "blue", shape=1, size=1)+
  theme_bw()+
  xlab("avg")+
  ylab("obp")+
  stat_smooth(method="lm")+ theme_classic()
a

#part2
library(ggplot2)
library(cowplot)
data <- read.table("data.txt", header=T, sep=",")

#part2 barplot
b <- ggplot(data, aes(x=region, y=observations))+
  stat_summary(geom="bar", fun.y="mean")
b

#part2 scatterplot
c <- ggplot(data, aes(x=region, y=observations)) + geom_jitter(aes(color=as.factor(region)))+
  theme_bw()+ xlab("Region")+ ylab("Observations")+ 
  scale_color_manual(name="region",values=c("red", "green","blue", "orange" ))
c

#part2 both plots 
plot_grid(b,c)

#The two types of graphs represent the data differently. It is harder to identify the mean on the scatter plot because of the distributions but it can be identified that they are around the ones clearly given in the bar plot. 
