#Question One
#I will plot the data from my fitbit which gives me averages hours of sleep per month, I thought hours would decrease once school started in August
#months are just labeled as their number (i.e. June = 6)
#This step will read in the file
Hoursslept<-read.csv("C:/Users/Faith/Desktop/Biocompexercises/Biocom_exercise09/hoursslept.csv", header=T, stringsAsFactors = F)
library(ggplot2)
a = ggplot(data=Hoursslept, aes(x=Month, y=Average.Hours.of.Sleep))
a + geom_point() +theme_classic() + ylab("Average Hours of Sleep per Night") + stat_smooth(method="lm")

#Question Two
#read in the data and name it Data
Data<-read.table("C:/Users/Faith/Desktop/Biocompexercises/Biocom_exercise09/data.csv", header=T, stringsAsFactors = F, sep=",")
#first show a barplot of the means of four populations
a = ggplot(data=Data, aes(x=region, y=observations))
a + stat_summary(geom = "bar", fun.y = "mean") +theme_classic()
#This is the scatterplot of all the data
b = ggplot(data=Data, aes(x=region, y=observations))
b +geom_jitter() +theme_classic() 
#The plots tell different stories. While the bar plot shows that the population means are all very similar in different regions,
#the scatter plot is able to depict the variation within regions and show that some regions have a higher standard deviation than
#others