setwd("H:/Coursera/Exploratory Data Analysis/Course Project 1")#set the working directory
source("load_data.R")#source the 'load_data.R' file
attach(data1)
png(filename = "plot4.png",width = 480, height = 480,units = "px", bg = "transparent")#Launch png device; create 'plot4.png' in my working directory 
#Now I want to have 4 plots on the png device
par(mfrow=c(2,2))#2 plots per row and per column and the plots are filled row-wise
# First plot on the upper left
plot(Date_Time, Global_active_power,type = "l", ylab = "Global Active Power (kilowatts)")
#Second Plot on the upper right
plot(Date_Time, Voltage,type = "l", xlab="datetime" ,ylab = "Voltage")
#Third plot on the lower left
plot(Date_Time, Sub_metering_1, type = "l", col = "black", ylab = "Energy sub metering")
lines(Date_Time, Sub_metering_2, col = "red")
lines(Date_Time, Sub_metering_3,  col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),lty=1,col=c("black","red","blue"))
#Fourth plot on the lower right
plot(Date_Time, Global_reactive_power, type = "l", col = "black", xlab = "datetime", ylab = "Global_reactive_power")
dev.off()#Close the png device
#Now you can view the file 'plot4.png' with the four plots on your computer (on my working directory)