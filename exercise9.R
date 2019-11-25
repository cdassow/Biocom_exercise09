#exercise 9

#1. Find data on two variables that are expected to be related to each other.
    #enter these data into a text file
    #write a script that loads this text file and produces a scatter plot of these two variables that includes a trend line
data <- read.delim("ex9data.txt")  #the data relate to regions in Europe, and are the GDP of these regions as well as nights stayed by tourism there
                                   #tourism and GDP for a region can be expected to be positively correlated

ggplot(data=data, aes(x=GDP_Millions_Euro, y=Tourism_NightStays))+
  xlab("GDP of Region in Millions of Euros")+
  ylab("Nights Stayed by Tourists in Region")+
  geom_point()+
  stat_smooth(method="lm", color="aliceblue")+
  theme_classic()


#2. Write a script for data.txt that generates two figures to summarize the data
    #first, give a barplot of the means of the four populations
    #second, show a scatter plot of all the observations
    #do the bar and scatter plots tell different stories? why?




