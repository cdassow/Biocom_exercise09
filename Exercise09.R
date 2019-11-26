rm(list=ls())
library(ggplot2)
library(cowplot)

#data on maternal mortality rate by state and percentage of black state population organized into Excel file
#loaded into R below

MM_race <- read.csv("~/Desktop/biocomputing/Biocom_exercise09/challenge_data.csv", header = TRUE, stringsAsFactors = FALSE)

#create scatter plot of that data
ggplot(data = MM_race, aes(x = Maternal_Mortality_per_100k_births, y = percent_black)) +
  geom_point() +
  xlab("Maternal Mortality Rate per 100,000 births") + ylab("Black Population Percentage") +
#with a trendline
  stat_smooth(method = "lm") + theme_bw()

#Part 2
#load data.txt into R 

data <- read.csv("~/Desktop/biocomputing/Biocom_exercise09/data.txt", header = TRUE, stringsAsFactors = FALSE)

#barplot of means of four populations in data.txt
x <- ggplot(data = data, aes(x = region, y = observations)) +
  stat_summary(geom = "bar", fun.y = "mean", fill = "#FF9999") + 
  stat_summary(geom = "errorbar", fun.data = "mean_se", width = 0.3) +
  theme_bw()

#scatter plot of all observations
y <- ggplot(data = data, aes(x = region, y = observations)) +
  geom_jitter(aes(color = region))

#plot them side by side to compare
plot_grid(x, y, ncol=2)

#yes, the plots are telling different stories! the barplot makes it seem as if the observations are all the same from each region, where the jitterplot shows there is much more diversity in the observations that is not revealed with the barplot, even with an error bar
