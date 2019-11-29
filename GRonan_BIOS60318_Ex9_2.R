#********************************************************************************************
# Author: George Ronan
# Date Edited: 29 November, 2019
# Load "data.txt" then generate a barplot of the means of the four populations and a
# scatterplot of all observations. Do the scatter and bar plots tell different stories?
#********************************************************************************************
library(ggplot2) # Load necessary libraries
data <- read.table(file = "data.txt", # Read in .txt file
                   header = TRUE,sep = ",", # Set header and delimiter manually
                   stringsAsFactors = TRUE) # Strings read as factors
uniques <- levels(unique(data$region)) # Stores unique regions for categorizing
dmeans <- matrix(data = NA,nrow = length(uniques),ncol = 2) # Initialize means matrix
for(i in 1:length(unique(data$region))){ # Loop to obtain mean for each region
  dmeans[i,1] <- uniques[i] # Stores corresponding reagion name
  dmeans[i,2] <- sum(data[data$region==uniques[i],2]) / # Calculates and stores average by
    nrow(data[data$region==uniques[i],])                # region
}
colnames(dmeans) <- colnames(data) # Sets appropriate column names for mean matrix
bar <- ggplot(data = data.frame(dmeans), aes(x = region, y = observations)) + # Generates bar
  geom_bar(stat = 'identity')                                                 # plot from mean
                                                                              # data
scatter <- ggplot(data = data, aes(x = region, y = observations)) + # Generates jittered
  geom_jitter()                                                     # scatter plot from
                                                                    # original data
show(bar); show(scatter) # Plot the two generated plots

# Yes, although the bar plot represents averages it fails to account for deviation within the
# populations, as well as other anomolies that are revealed by looking at the whole data set.
# The scatter plot shows a more complete picture of the data.