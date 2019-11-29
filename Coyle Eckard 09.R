# Exercise 09
# Part 1
# write a script that loads text file and produces a scatter plot of two variables
# include a trend line 
# First read in data to be used. This data is comparing the average ACT and acceptance rates of different colleges
setwd("~/Desktop/BioComp R/")
college <-read.table("Biocom_exercise09/CollegesFinal.txt",sep='\t',header=T,stringsAsFactors = F)
head(college)
# Load the ggplot2 functions from the ggplot2 package
library(ggplot2)
# Set an initial ggplot with desired data called by headers
a<-ggplot(data=college,mapping=aes(x=AcceptanceRate,y=AverageACT))
# Make a scatter plot from above ggplot data, set color and size 
# + insert axis labels, + add a trend line using stat_smooth function
b<-a+geom_point(aes(color="red",size=2))+xlab("College Acceptance Rate")+ylab("Average ACT Score")+
  theme_bw()+stat_smooth(method="lm",color="black",size=0.5)
b

# Part 2
# Upload the data from the data.txt file and format to fit data into a workable data frame
setwd("~/Desktop/BioComp R/")
data2 <-read.table("Biocom_exercise09/data.txt",sep=',',header=T,stringsAsFactors = F)
head(data2) 

# create a plot of average number of observations vs. region
c = ggplot(data=data2, mapping=aes(x=region, y=observations))
# Add labels to chart and set the type to a bar graph and the data plotted on the y axis to the mean values
d<-c+xlab("Region")+ylab("Average Observations")+theme_bw()+
  stat_summary(geom = "bar",fun.y = "mean")
d
# Create a scatter plot of all the observations in each region
e<-c+geom_point(aes(color="red",size=2))+xlab("Region")+ylab("Observations")+
  theme_bw()+geom_jitter()
e
# The bar plot and the scatter plot show different stories. The bar plot only shows the average value and 
# indicates the values of the observations for each region are very similar
# However, the scatter plot shows that the real measured values of observations in each region are all 
# significantly different. This is clearly visible in the scatter / jitter plot
# This is because of the difference in the data being shown. The mean value of a data set is not enough 
# information to determine what the data for that data set is.