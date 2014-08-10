setwd("H:/Coursera/Exploratory Data Analysis/Course Project 1")#set the working directory
source("load_data.R")#read R code from the file 'load_data.R'
png(filename = "plot1.png",width = 480, height = 480,units = "px", bg = "transparent")#Launch png device; create 'plot1.png' in my working directory 
#with a width of 480 pixels and a height of 480 pixels and a traparent background colour
hist(data1$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")#construct the desired histogram
dev.off()#Close the png device
#Now you can view the file 'plot1.png' with the histogram on your computer (on my working directory)