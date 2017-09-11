source("loadpowerdata.R")
message("Creating plot 3 png file")
png("plot3.png", width = 480, height = 480,  units = "px")
plot(febpowerdata$Time ,febpowerdata$Sub_metering_1, type = "n",xlab="", ylab="Energy sub metering")
lines(febpowerdata$Time ,febpowerdata$Sub_metering_1, col="black")
lines(febpowerdata$Time ,febpowerdata$Sub_metering_2, col="red")
lines(febpowerdata$Time ,febpowerdata$Sub_metering_3, col="blue")

legend("topright",col=c("black", "red", "blue"),legend=c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"))

dev.off()
message("Done with plot 3")