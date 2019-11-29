# Question 2
# load package ggplot
library(ggplot2)
# set work path
setwd('/Users/guoqiang/Desktop/biocomputing/Biocom_exercise09/')
# import data
data = read.table('data.txt', sep = ',', header = T, stringsAsFactors = F)
# calculate the 
bar = aggregate(data$observations, list(data$region), mean)
colnames(bar) = c('group','observation')
p = ggplot(data=bar, aes(x=group, y=observation)) +
  geom_bar(stat="identity")
p
