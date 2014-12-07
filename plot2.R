#read input from file into data.table
source("setup.R")

#Create plot2

png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot(powerdata$DateTime,powerdata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()