#setwd("~/datascience coursework/ExploratoryDataAnalysis")  //home
#setwd("~/coursera-data science specialization/ExploratoryDataAnalysis")  //work


# Trick when you want to read the header but skip a bunch of lines 
header <- scan(unz("exdata-data-household_power_consumption.zip","household_power_consumption.txt"), nlines = 1, what = character(),sep=";" )
powerdata <- read.table(unz("exdata-data-household_power_consumption.zip", "household_power_consumption.txt", skip = 66637, nrows= 2880, sep=";", na.strings = "?")
names(powerdata) <- header

#paste Date and Time to yield DateTime 
powerdata$DateTime <- paste(powerdata$Date, powerdata$Time, sep=" ")
#convert DateTime from Character to DateTime class by specifying format of input
powerdata$DateTime <- strptime(powerdata$DateTime, "%d/%m/%Y %H:%M:%S")