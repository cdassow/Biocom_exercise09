#numberone 
library(ggplot2)
library(cowplot)
sleepdata=read.table("ex9data.csv", header=T, sep=",")
a=ggplot(data=sleepdata, aes(x=Hours.of.sleep, y=Test.scores))+
geom_point(color="blue", shape=1, size=1)+
theme_bw()+
  xlab("Hours.of.sleep")+
  ylab("Test.scores")+
  stat_smooth(method="lm")+ theme_classic()
a

#numbertwo
library(ggplot2)
library(cowplot)
data <- read.table("data.txt", header=T, sep=",")

#barplot
b <- ggplot(data, aes(x=region, y=observations))+
  stat_summary(geom="bar", fun.y="mean")
b
#scatterplot
c <- ggplot(data, aes(x=region, y=observations)) + geom_jitter(aes(color=as.factor(region)))+
  theme_bw()+ xlab("Region")+ ylab("Observations")+ 
  scale_color_manual(name="region",values=c("red", "green","blue", "orange" ))
c
#plot 
plot_grid(b,c)

#Both graphs have the same or very similar means but they have different distributions around the means and the two types of graphs make this look different 