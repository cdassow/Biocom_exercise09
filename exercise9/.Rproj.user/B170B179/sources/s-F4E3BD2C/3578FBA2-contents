#question1 <- scatter plot of the points a premier league team finished with vs. the amount of goals they scored
library(ggplot2)
prem <- read.csv("../PremierLeague.csv")
premplot <- ggplot(data = prem, aes(x = GoalsScored, y = Points))
premplot + geom_point() + theme_bw() + xlab("Goals Scored") + ylab("Total Points") + stat_smooth(method = "lm")
#question2
data <- read.csv("../data.txt")
dataplot <- ggplot(data = data, aes(x = region, y = observations))
dataplot + theme_bw() + stat_summary(geom = "bar", fun.y = "mean") + stat_summary(geom = "errorbar", fun.data = "mean_se")
dataplot + geom_point() + theme_bw() + geom_jitter()
#The bar graph and scatter plots do in fact tell different stories.
#From looking at the bar graph you can tell that each region has a mean of around 15 observations 
#From looking at the scatter plot, you can tell that 
##the east region is almost evenly distributed with a slight increase of observations at 15. 
##The north has a dense amount of points around 15 observations. 
##South is bimodal, with no onservations at 15. 
##West is evenly distibuted from 0-30 observations. 
###From the bar graph there is almost no distinguishable difference between the 4 regions, but the scatter plot tells a very different story. 