#Part 1
library(ggplot2)
#Load data
whales<-read.csv("~/Biocomp/Biocom_exercise09/whaleMass_Lifespan.csv")
#Make scatterplot of the average mass (kg) and average life expectancy (years) of ten whale species
#Scatterplot has x and y labels, blue points, a red trendline, and the classic theme
ggplot(data=whales, aes(x=Avg_Mass, y=Life_Expectancy))+
  geom_point(color="blue")+
  xlab("Average Mass (kg)")+ylab("Life Expectancy (years)")+
  stat_smooth(method="lm", color="red")+theme_classic()
  
#Part 2
#Load data
data<-read.table("~/Biocomp/Biocom_exercise09/data.txt")
