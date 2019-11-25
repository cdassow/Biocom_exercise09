library(ggplot2)

#Part 1
#Load data
whales<-read.csv("~/Biocomp/Biocom_exercise09/whaleMass_Lifespan.csv")
#Make scatter plot of the average mass (kg) and average life expectancy (years) of ten whale species
#Scatter plot has x and y labels, blue points, a red trendline, and the classic theme
ggplot(data=whales, aes(x=Avg_Mass, y=Life_Expectancy))+
  geom_point(color="blue")+
  xlab("Average Mass (kg)")+ylab("Life Expectancy (years)")+
  stat_smooth(method="lm", color="red")+theme_classic()
  
#Part 2
#Load data
data<-read.table("~/Biocomp/Biocom_exercise09/data.txt", header=TRUE, sep=",")
#Bar plot of means of the 4 populations
ggplot(data=data, aes(x=region, y=observations))+
  xlab("Region")+ylab("Average")+
  stat_summary(geom="bar",fun.y="mean", color="blue", fill="blue")+
  theme_classic()

#Scatter plot of all observations
ggplot(data=data, mapping=aes(x=region, y=observations))+
  xlab("Region")+ylab("Observation")+
  geom_jitter()+
  theme_classic()

#The scatter plot shows all of the observations while the bar graph only shows the average value of the observations.
#The scatter plot shows that the observations for east and west are evenly distributed while the observations for north are concentrated around 15 and the observations for south are split between approximately 25 and 5. 
#The bar graph only shows the averages and not how the observations are distributed. Based on the bar graph, all of the regions look the same, however, based on the scatter plot, it is clear that each region is different.
