#######################################
# QUESTION 1 #
#######################################
# Plots temp(F) and relative humidity(%) from last night until right now in South Bend against one another

SB_data <- read.csv("KSBN.csv")
library(ggplot2)

ggplot(data = SB_data)+
  geom_point(mapping = aes(x = air_temp_set_1_Fahrenheit, y = relative_humidity_set_1))+
  geom_smooth(mapping = aes(x = air_temp_set_1_Fahrenheit, y = relative_humidity_set_1), se = FALSE)

#######################################
# QUESTION 2 #
#######################################

pop_data <- read.csv(file.choose())
# Select data.txt

ggplot(data = pop_data)+
  geom_boxplot(mapping = aes(x = region, y = observations, fill = region))
  
ggplot((data = pop_data))+
  geom_jitter(mapping = aes(x = region, y = observations, color = region, ))

# WRITTEN ANSWER BIT HERE
# These plots do tell different stories. The boxplot shows that the means are all rather similar, which one may think means the data sets are all relatively similar. However, looking at the scatter plot reveals that we are actually looking at 4 distinct types of distributions with very little in common  



