source("LoadData.R")
png(filename = "Plot3.png", width = 480, height = 480)
plot(subdata$DateTime, subdata$Sub_metering_1, type="n", ylab = "Energy Sub Metering", xlab="")
lines(subdata$DateTime, subdata$Sub_metering_1, type="l", col = "red" )
lines(subdata$DateTime, subdata$Sub_metering_2, type="l" , col = "orange")
lines(subdata$DateTime, subdata$Sub_metering_3, type="l", col = "blue" )
legend("topright", legend= c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("red", "orange", "blue"), lty=1:1 , cex=0.8 )
dev.off()