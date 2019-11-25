setwd("~/Desktop/biocomp-shell/Biocom_exercise09/")

install.packages("ggplot2")
install.packages("cowplot")

library(ggplot2)
library(cowplot)

#Question 1
#Read data on burglary rate per 100,000 inhabitants from 1997-2016 (from FBI database)
burglarydata <- read.table("Burglary_data.txt", header=T)

#Plot burglary rate from 1997-2016
ggplot(data=burglarydata, mapping=aes(x=Year, y=Burglary_rate))+
  geom_point(color="blue", size=3)+xlab("Year")+ylab("Burglary Rate (per 100,000 inhabitants)")+theme_classic()+
  stat_smooth(method="lm", color="black")

#Question 2
dataex9 <- read.table("data.txt", sep=',', header=TRUE)

barplot <- ggplot(data=dataex9, mapping=aes(x=region, y=observations))+
  xlab("Region")+ylab("Observations")+
  stat_summary(geom="bar", fill="blue", fun.y="mean")+theme_classic()

scatter <- ggplot(data=dataex9, mapping=aes(x=region, y=observations))+
  geom_jitter(color="blue", size=3)+xlab("Region")+ylab("Observations")+theme_classic()

plot_grid(barplot,scatter)
#These two graphs tell very different stories. 
#The bar graph shows the averages of each region, where the scatter/jitter shows the distribution of observations in each region

  