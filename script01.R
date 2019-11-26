#1. Find some data on two variables that you would expect to be related to each other. 
#These data can come from your own research, your daily life, or the internet. 
#Enter those data into a text file or Excel and then save a text file, 
#and write a script that loads this text file and produces a scatter plot of those 
#two variables that includes a trend line.

#This program will show examine the relationship between reaction times of dominant and nondominant hands. 
library(ggplot2)
reaction_times <- read.delim("dominant_vs_nondominant_reactions.txt", header=TRUE)
a <- ggplot(data=reaction_times, mapping=aes(x="Average_Dominant_Hand_Time", y="Average_NonDominant_Hand_Time_ms"))+
  geom_point(x="Average_Dominant_Hand_Time_ms", y="Average_NonDominant_Hand_Time_ms")+
  geom_smooth(method="lm")
a
