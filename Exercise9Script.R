setwd("~/Desktop/biocomp-shell/Biocom_exercise09/")

install.packages("ggplot2")
library(ggplot2)

#Question 1
#Read data on burglary rate per 100,000 inhabitants from 1997-2016 (from FBI database)
burglarydata <- read.csv("Burglary_data.csv")

#Plot burglary rate from 1997-2016
ggplot(data=burglarydata, mapping=aes(x=Year, y=Burglary_rate))+
  geom_point(color="blue", size=3)+xlab("Year")+ylab("Burglary Rate (per 100,000 inhabitants)")+theme_classic()+
  stat_smooth(method="lm", color="black")

