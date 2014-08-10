setwd("H:/Coursera/Exploratory Data Analysis/Course Project 1")#set the working directory
source("load_data.R")#source the 'load_data.R' file
png(filename = "plot3.png",width = 480, height = 480,units = "px", bg = "transparent")#Launch png device; create 'plot3.png' in my working directory 
#with a width of 480 pixels and a height of 480 pixels and a traparent background colour
attach(data1)
plot(Date_Time, Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering")
lines(Date_Time, Sub_metering_2, col = "red")
lines(Date_Time, Sub_metering_3,  col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1,col=c("black","red","blue"))
dev.off()#Close the png device
#Now you can view the file 'plot3.png' with the plot on your computer (on my working directory)
