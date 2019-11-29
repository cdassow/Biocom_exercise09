# Biocomputing Exercsie 9

setwd(~"/Biocomputing/Biocomp_Exercsie09")

# 1.) Load in correlated data and make scatter plot

library(ggplot2)

crashdata <- read.csv("carcrashes.csv")

crash<-read.csv("carcrashes.csv", header=TRUE, sep=" ", stringsAsFactors = TRUE)
head(crash)

a = ggplot(data = crashdata, mapping = aes(x = Year, y = deaths))

f<-a+geom_point()+xlab("Years")+ylab("Car Crashes")+
  geom_smooth(method= "loess", size=2)


# 2.) Barplot of the means population; Scatterplot of all the observations
library(ggplot2)

data<- read.csv("data.txt", header=TRUE, sep = ",")

b=ggplot(data= data, mapping = aes(x= region, y= observations))

# Barplot  
c <- b+geom_bar(stat= "identity", color = "blue")+
  theme_classic()

# Scatterplot
# d <- ggplot(data=data, mapping = aes())
d<-b+geom_point(aes(color = "red"))+xlab("regions")+ylab("Observations")+
  geom_jitter(color ="lightblue")

# The scatterplot using the jitter function, shows a much different depiction of the 
# data. The bar graph makes it look like there are only 15 observations but the scatterplot
# shpws that the obserations are all over the board (varying between 0 and 30) but 
# averaging at about 15
