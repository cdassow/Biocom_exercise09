# Problem 1

# this is data from my research relating yeast growth to bioavailable phosphorus concentration
# yeast growth is measured by absorbance on a plate reader
PData<-read.delim("PData_Ex9.txt", header = TRUE, sep = "\t")

ggplot(data=PData, aes(x=PData[,1], y=A600))+ 
  geom_point()+
  theme_bw()+
  stat_smooth(method="lm", color="black")+
  xlab("[PO4] (uM)")

# Problem 2

DirData<-read.delim("data.txt", header = TRUE, sep = ",")

ggplot(data=DirData, aes(x=region, y=observations))+
  stat_summary(geom="bar", fun.y="mean", fill="gray")+
  theme_bw()

ggplot(data=DirData, aes(x=region, y=observations))+
  geom_jitter()+
  theme_bw()

# These two graphs tell a very different story. Although the means of all of the populations were very similar (near 15),
# the scatter plot reveals that the ranges in the observations at all of the sites were very different. The East and West
# sites both had a large range; the observations at North were all tightly grouped near 15; and the South data was bimodal,
# with two distinct groups, whose average was near 15. Sometimes the mean is not enough to draw conclusions about data.


