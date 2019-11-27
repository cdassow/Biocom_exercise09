#read data.csv into R
datafile <- read.csv("data.txt")

#load the ggplot package
library(ggplot2)

#create a general ggplot base variable
a <- ggplot(data=datafile, mapping=aes(x=means$region, y=means$observations))

#make a dataframe with the means of each population with the corresponding region
northmean <- mean(datafile$observations[datafile$region=="north"])
southmean <- mean(datafile$observations[datafile$region=="south"])
eastmean <- mean(datafile$observations[datafile$region=="east"])
westmean <- mean(datafile$observations[datafile$region=="west"])
region <- c("east","north","south","west")
means <- c(eastmean, northmean, southmean, westmean)
means_graphing <- data.frame(region,means)

#creating a barplot of the means of each population, first defines the data to be used
bar <- ggplot(data=means_graphing, mapping = aes(x=means_graphing$region, y=means_graphing$means))+
#labels the x and y axes
  ylab("Means of Observations") + xlab("Regions")+
#specifies that a bar graph with a qualitative grouping of x values and quantitative y values will be used. 
  geom_bar(stat="identity")
bar

#creating a scatterplot, begins with defining the data to be used
scatter <- ggplot(data=datafile, mapping=aes(x=datafile$region, y=datafile$observations))+
#adds x and y axes labels
  ylab("Observations") + xlab("Regions") +
#specifies that it should be a scatterplot with smaller points
  geom_jitter()
scatter

#By showing the bar graph of the means, the observations across the four regions appears fairly uniform. 
#Examining the scatterplot reveals that the spread of each population varies a lot. 
