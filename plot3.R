# Exploratory Data Analysis - Course Project 1 - plot 3
# Brad Cooley, 7/1/2017

local.file <- "/Users/bradcooley1/Desktop/household_power_consumption.txt"
ds <- read.table(local.file, header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)

ds$dt <- strptime(paste(ds$Date, ds$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
ds$Date <- as.Date.character(ds$Date, "%d/%m/%Y")
ds <- ds[ds$Date=="2007-02-01" | ds$Date=="2007-02-02",]
setwd("/Users/bradcooley1/Desktop/GitHubLocal/ExData_Plotting1")

png(filename ="plot3.png", width = 480, height = 480, pointsize = 11, bg = "white")

plot(ds$dt, ds$Sub_metering_1, type="l", ylab="Energy Submetering", xlab="")
lines(ds$dt, ds$Sub_metering_2, type ="l", col = "red")
lines(ds$dt, ds$Sub_metering_3, type ="l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty = 1, lwd = 2.5, col = c("black", "red", "blue"))

dev.off()