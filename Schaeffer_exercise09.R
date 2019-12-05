#Problem 1
icecream <- read.csv("icecream.csv", header=True, stringsAsFactors = False)
#plot
ggplot(icecream, aes(x=Temperature, y=Sales)) + geom_point() + labs(x="Temperature", y="Sales") + geom_smooth(method= "lm") + theme_classic()

#Problem 2
data <- read.csv ("data.txt", header=True, stringsAsFactors = False)
#boxplot
ggplot(data, aes(x=region, y=observations, fill=region)) + stat_summary(geom="bar", fun.y ="mean") + labs(x="Region", y="Mean Observations")
#scatterplot (aka. get jitter with it)
ggplot(data, aes(x=region, y=observations, color=region)) + geom_jitter() + labs(x="Region", y="Observations")
#The bar and scatter plots tell very different stories, because the bar plot only takes the mean of the observations.
#This makes it appear as if north, south and west are similar groups, with east not far off. Whereas the scatter plot 
#shows how different each group really is from one another.


