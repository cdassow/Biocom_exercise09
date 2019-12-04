# Question 1

# load package ggplot
library(ggplot2)

# set work path
setwd('/Users/guoqiang/Desktop/biocomputing/Biocom_exercise09/')

# import data
diamond.df = read.table('diamond.txt', sep = ',', header = T, stringsAsFactors = F)

# linear regression on data


# plot carat and price and trend line
plot(diamond.df, price~ carat, pch = 20, cex = 0.5)
abline(lm(data = diamond.df, price~ carat), col = 'red')
