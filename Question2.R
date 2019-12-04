# Question 2

# load package ggplot
library(ggplot2)

# set work path
setwd('/Users/guoqiang/Desktop/biocomputing/Biocom_exercise09/')
setwd('/Users/katnip/Desktop/biocomputing/Biocom_exercise09/')

# import data
data = read.table('data.txt', sep = ',', header = T, stringsAsFactors = F)
# calculate the means of four groups
bar = aggregate(data$observations, list(data$region), mean)
colnames(bar) = c('region','observations')
# generate barplot
ggplot(data=bar, aes(x=region, y=observations)) + geom_bar(stat="identity")

# generate scatter plot
ggplot(data=data, aes(x=region, y=observations)) + geom_jitter(alpha = 0.1)

# Do the bar and scatter plots tell you different stories? Why?
# Barplot can only tell us the means of different regions which are almost the same. 
# However, scatteing plot tell us more information about distribution of the data. 
# We can see the aggregate degree of the different regions.



