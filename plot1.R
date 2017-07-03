# Exploratory Data Analysis - Course Project 1
# Brad Cooley, 7/1/2017

local.file <- "/Users/bradcooley1/Desktop/household_power_consumption.txt"
ds <- read.table(local.file, header = TRUE, sep = ";", na.strings = "?", stringsAsFactors = FALSE)
ds$Time <- format(strptime(ds$Time, "%H:%M:%S"), "%H:%M:%S")
ds$Date <- as.Date.character(ds$Date, "%d/%m/%Y")
ds <- ds[ds$Date=="2007-02-01" | ds$Date=="2007-02-02",]
setwd("/Users/bradcooley1/Desktop/GitHubLocal/ExData_Plotting1")
png(filename ="plot1.png", width = 480, height = 480, pointsize = 11, bg = "white")
hist(ds$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", ylim = c(0,1200))
dev.off()

 