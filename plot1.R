#read input from file into data.table
source("setup.R")

#Create plot1

png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(powerdata$Global_active_power, xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")
dev.off()