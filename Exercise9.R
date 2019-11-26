#Reina Koran, Rosie Crisman
#Part1
#Average Temperature each month in South Bend vs. Average Precipitation in Inches in South Bend each month
#File included
data9=read.table("Tempvprec.txt",sep='\t',header=T)
a=ggplot(data=data9,mapping=aes(x=Average.Temp,y=Precipitation..In.))
plot=a+geom_point(color="black")+stat_smooth(method="lm")

#Part 2
#summarize data.txt in barplots with means
data=read.table("data.txt",sep=",",header=TRUE, stringsAsFactors = F)
library(ggplot2)
ggplot(data=data, mapping=aes(x=region,y=observations))

a=ggplot(data=data, mapping=aes(y=observations, x=region))+
  stat_summary(geom="bar", fun.y="mean")

a

#make a scatterplot
b=ggplot(data, aes(x = region, y=observations))+
  geom_jitter(aes(color=region))

b

#The bar graph of the region/observation data makes it seem like all of the observations
#are consistent amongst the groups and doesn't provide spread information; however, the scatterplot highlights the intragroup variation
#of the observations. For example, the north group has a large spread, the south group is bimodal,
#the north group has observations tightly clustered around one value, and the east group has a similar
#spread to the west group.
