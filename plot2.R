# Exploratory Data Analysis - Course Project 1 - plot 2
# Brad Cooley, 7/1/2017

local.file <- "/Users/bradcooley1/Desktop/household_power_consumption.txt"
ds <- read.table(local.file, header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)

ds$dt <- strptime(paste(ds$Date, ds$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
ds$Date <- as.Date.character(ds$Date, "%d/%m/%Y")
ds <- ds[ds$Date=="2007-02-01" | ds$Date=="2007-02-02",]
setwd("/Users/bradcooley1/Desktop/GitHubLocal/ExData_Plotting1")

png(filename ="plot2.png", width = 480, height = 480, pointsize = 11, bg = "white")

with(ds,plot(dt,Global_active_power,type="l", ylab = "Global Active Power (kilowatts)", xlab =""))

dev.off()