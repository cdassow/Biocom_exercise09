#Problem 1
biscuit<-read.delim(file.choose()) #Choose file Cortese_Data_Ex9_P1.txt
library(ggplot2)

#Scatter Plot of OPD vs Mineral with fitted line
ggplot(biscuit, aes(x=OPD, y=Minerals))+geom_point(aes(color=Diet))+
  xlab("Osteon Population Density (per mm^2)")+ylab("Biomineralization (Hounsfield)")+
  theme_classic()+stat_smooth(method = "lm", col = "lightgrey", se = FALSE, size = 1)

#Problem 2
praline<-read.csv(file.choose()) #Choose data.txt in Exercise09 file

#Box Plot
ggplot(praline, aes(x=region, y=observations))+geom_boxplot(aes(fill=region))+
  xlab("Region")+ylab("Observations")+theme_classic()

#Scatter Plot
ggplot(praline, aes(x=1:nrow(praline),y=observations))+geom_point(aes(color=region), alpha=0.5)+
  xlab("Individual")+ylab("Observations")+theme_classic()
#The box plot and scatter plot tell different stories, especially concerning the south region.
#The scatterplot shows that the south has two clusters one with high observations and one with low.
#The bar plot doesn't show you this and the average ~10 would lead you to believe that most observations are =10. But none are.
#This is because the scatterplot shows individual data points while the barplot shows average and range.
