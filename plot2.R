setwd("H:/Coursera/Exploratory Data Analysis/Course Project 1")#set the working directory
source("load_data.R")#source the 'load_data.R' file
png(filename = "plot2.png",width = 480, height = 480,units = "px", bg = "transparent")#Launch png device; create 'plot2.png' in my working directory 
#with a width of 480 pixels and a height of 480 pixels and a traparent background colour
plot(data1$Date_Time, data1$Global_active_power,type = "l", ylab = "Global Active Power (kilowatts)")
dev.off()#Close the png device
#Now you can view the file 'plot12.png' with the plot on your computer (on my working directory)