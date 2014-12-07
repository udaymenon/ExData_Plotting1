#read input from file into data.table
source("setup.R")

#Create plot3

png(filename = "plot3.png", width = 480, height = 480, units = "px")
plot(powerdata$DateTime,powerdata$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines (powerdata$DateTime,powerdata$Sub_metering_2, col = "red")
lines (powerdata$DateTime,powerdata$Sub_metering_3, col = "blue")
legend("topright", pch = NA, lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
dev.off()