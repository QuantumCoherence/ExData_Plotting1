source("loadpowerdata.R")
message("Creating plot 4 png file")
png("plot4.png", width = 480, height = 480,  units = "px")
par(mfrow=c(2,2))
plot(febpowerdata$Time, febpowerdata$Global_active_power, type = "l", xlab="", ylab="Global Active Power (kilowatts)")

plot(febpowerdata$Time, febpowerdata$Voltage, type = "l", xlab="datetime", ylab="Voltage")

plot(febpowerdata$Time ,febpowerdata$Sub_metering_1, type = "n",xlab="", ylab="Energy sub metering")
lines(febpowerdata$Time ,febpowerdata$Sub_metering_1, col="black")
lines(febpowerdata$Time ,febpowerdata$Sub_metering_2, col="red")
lines(febpowerdata$Time ,febpowerdata$Sub_metering_3, col="blue")

legend("topright",col=c("black", "red", "blue"),legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

plot(febpowerdata$Time, febpowerdata$Global_reactive_power, type = "l", xlab="datetime", ylab="Global_reactive_power")



dev.off()
message("Done with plot 4")