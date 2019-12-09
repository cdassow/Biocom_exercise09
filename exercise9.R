library(ggplot2)
rm(list=ls())

#Question 1

#Saving personal data to df
df = read.csv(file="Book2.csv", header=TRUE)

#plotting points and a trendline
ggplot(data=df)+
  geom_point(aes(x=Days.Old,y=Western.Diet.Weight),col='red')+
  geom_smooth(aes(x=Days.Old,y=Western.Diet.Weight), method = "lm", col='blue')

#--------------------------------------------------------------------------------#
#Question 2

#make df from data in the data.txt file
df = read.table(file="data.txt", header=TRUE, sep=",")

#find averages of each direction
north = mean(df$observations[which(df$region=="north")])
south = mean(df$observations[which(df$region=="south")])
east = mean(df$observations[which(df$region=="east")])
west = mean(df$observations[which(df$region=="west")])

#create vectors of direction name and mean population
mean_vec = c(north, south, east, west)
name_vec = c("north", "south", "east", "west")

#create df from previous two vectors
mean_df = data.frame(mean_population=mean_vec, direction=name_vec)

#create the bar chart 
bar = ggplot(data = mean_df, aes(x=direction, y=mean_population), col='blue')+
  geom_bar(stat="identity", width=0.75, col='blue', fill='white')

