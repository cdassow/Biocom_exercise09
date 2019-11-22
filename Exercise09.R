#######################################
# QUESTION 1 #
#######################################
# Plots temp(F) and relative humidity(%) today in South Bend against one another

SB_data <- read.csv("KSBN.csv")
library(ggplot2)

ggplot(data = SB_data)+
  geom_point(mapping = aes(x = air_temp_set_1_Fahrenheit, y = relative_humidity_set_1))+
  geom_smooth(mapping = aes(x = air_temp_set_1_Fahrenheit, y = relative_humidity_set_1), se = FALSE)

#######################################
# QUESTION 2 #
#######################################