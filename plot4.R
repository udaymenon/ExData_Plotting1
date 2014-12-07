#read input from file into data.table
source("setup.R")

#Create plot4

png(filename = "plot4.png", width = 480, height = 480, units = "px")
par(mfrow = c(2,2))
plot(powerdata$DateTime,powerdata$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
plot(powerdata$DateTime,powerdata$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(powerdata$DateTime,powerdata$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
lines (powerdata$DateTime,powerdata$Sub_metering_2, col = "red")
lines (powerdata$DateTime,powerdata$Sub_metering_3, col = "blue")
#Note the bty = "n" will remove box around the legend
legend("topright", pch = NA, lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),  bty = "n")

plot(powerdata$DateTime,powerdata$Global_reactive_power, type = "l", xlab = "", ylab = "Global_reactive_power")
dev.off()
