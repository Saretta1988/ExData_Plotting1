# This file is used for loading the dataset into R
setwd("H:/Coursera/Exploratory Data Analysis/Course Project 1")
data<-read.table("household_power_consumption.txt", sep=";", header=T, na="?",colClasses = c("character", "character", rep("numeric",7)))
colnames(data)#column names, i.e. the names of the 9 vairables
dim(data)#2,075,259 rows and 9 columns
#We need only data from the dates 2007-02-01 and 2007-02-02
#subset<-(data$Date == "1/2/2007" | data$Date== "2/2/2007")
data1<-subset(data, data$Date == "1/2/2007" | data$Date== "2/2/2007")
dim(data1)#[1] 2880    9
# Now it is useful to convert the Date and Time variables to Date/Time classes in R 
#The idea is to add the Date_Time variable to the dataframe, containing date and time in the proper format
#Create the Date_Time variable
data1$Date_Time<-paste(data1$Date,data1$Time)
#Convert the Date_Time variable to the proper format
data1$Date_Time<-strptime(data1$Date_Time,format= "%d/%m/%Y %H:%M:%S")
