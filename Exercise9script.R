#QUESTION 1
library(ggplot2)
#create something that will load your file and then plot two of its columns
p <- read.csv("parasiteexample.csv", header=TRUE, stringsAsFactors = FALSE)
ggplot(p, aes(Age, Trichuris.Count)) + geom_point() + labs(x="Age", y="Trichuris Load") + geom_smooth() + theme_classic()


#QUESTION 2
data <- read.csv("data.txt", header=TRUE, stringsAsFactors = FALSE)

#bar plot of means
ggplot(data, aes(x=region, y=observations)) + stat_summary(geom="bar", fun.y="mean") + labs(x="Region", y="Mean Observations")
#plot using geom point
ggplot(data, aes(x=region, y=observations)) + geom_point() + labs(x="Region", y="Observations")
#plot using geom jitter
ggplot(data, aes(x=region, y=observations)) + geom_jitter() + labs(x="Region", y="Observations")

#ANSWERING THE QUESTION THAT IS A PART OF QUESTION 2
#do the mean bar plot and geom jitter plot tell you different stories????

#Yes, they tell you different stories, they show you the actual distributions of all the observation points
#the means all look very similar, but the distributions are quite different.
#the mean bar plot does not tell you anything about the distribution of the points 