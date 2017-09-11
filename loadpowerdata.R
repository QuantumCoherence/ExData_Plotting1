if(!file.exists("febpowerdata.rda")){
  message("Loading full household power consumption data ...")
  if (!file.exists("household_power_consumption.txt")){
    stop("ERROR: household_power_consumption.txt is missing, no data")
  }
  power <- read.csv(file = "household_power_consumption.txt", stringsAsFactors = FALSE, sep = ";", header = TRUE)
  power$Date <- as.Date(power$Date, format = "%d/%m/%Y")
  febpowerdata <- subset(power, Date <= as.Date("02/02/2007", format = "%d/%m/%Y"))
  febpowerdata <- subset(febpowerdata, Date >= as.Date("01/02/2007", format = "%d/%m/%Y"))
  febpowerdata$Time <- strptime(paste(febpowerdata$Date, febpowerdata$Time), format = "%Y-%m-%d %H:%M:%S")
  rm(power)
  save(febpowerdata, file = paste("febpowerdata.rda", sep=""))
} else {
  message("Loading February 2007 household power data ... ")
  load("febpowerdata.rda")
}