#Question 1
sleep=read.delim("data-sleep.txt", header=TRUE)
ggplot(sleep,aes(x=Hours,y=Grumpiness))+
  geom_point()+
  xlab("Sleep (Hours)")+
  ylab("Level of Grumpiness (Scale of 1-10)")+
  geom_smooth(method="lm")+
  theme_classic()

#Question 2
data=read.csv("data.txt",header=TRUE)
#bar plot of the means of the populations
ggplot(data,aes(region,observations))+
  stat_summary(geom="bar",fun.y="mean")+
  theme_classic()
#scatter plot of observations
ggplot(data,aes(x=region,y=observations))+
  geom_jitter()+
  theme_classic()
#The bar plot shows us the overall mean for each region. Alternatively, the
#scatter plot of the observations shows us the distribution of data within each
#region.
