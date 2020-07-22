source("LoadData.R")
png(filename = "Plot1.png", width = 480, height = 480)
hist(subdata$Global_active_power, col="red",xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main = "Global Active Power")
dev.off()