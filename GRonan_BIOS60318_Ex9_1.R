#********************************************************************************************
# Author: George Ronan
# Date Edited: 29 November, 2019
# Load a text file containing information on 2 related variables, then plot in a scatter plot
# with a trend line
# Data from the American Heart Association
#********************************************************************************************
data <- read.table(file = "Correlation.txt",sep = "\t",
                   stringsAsFactors = FALSE) # Read in data from .txt file to data table
colnames(data) <- data[1,] # Set column names (for some reason header=TRUE was not working)
data <- data[2:(nrow(data)),] # Adjusting for row 1 = column names
data[,3] <- c(1:nrow(data)) # Add third column for plotting/binning purposes
colnames(data)[3] <- "Point_No" # Name third column
plot(x = data$Point_No,y = data$`Incidence (per 1,000 people) - White Males`, # Initial plot
     xlab = "Age Group",ylab = "Incidence (per 1,000 people)", # x/y labels
     main = "Incidence of Myocardial Infarction by Age for White Males", # Plot title
     xaxt="n",type = 'p') # Removes initial x axis and sets plot type to scatter
abline(lm(data$Point_No ~ data$`Incidence (per 1,000 people) - White Males`)) # Calculates and
                                                                              # plots trendline
axis(side = 1,at = data$Point_No,labels = data$Age) # Adds custom x axis with appropriate
                                                    # age bins
