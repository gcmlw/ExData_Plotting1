
## Load data uses ; as separator
data <- read.table("./data/household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)
# str(data)
# summary(data)

## check for na if any
# colSums(is.na(data))

## na is defined as ? in this data
# sum(data$Global_reactive_power == "?")
# colSums(data == "?")

## New col combine Date and Time as a DateTime object
data$DateTime <- paste(data$Date, data$Time , sep=" ")
data$DateTime <- strptime(data$DateTime, format = "%d/%m/%Y %H:%M:%S")

## convert Date to date class
data$Date <- as.Date(data$Date, format='%d/%m/%Y')
# summary(data$Date)
## convert Time to time class
# data$Time <- strptime(data$Time, format = "%H:%M:%S")
# summary(data$Time)

## Filter the 2 dates required
sdate <- as.Date("2007-02-01")
edate <- as.Date("2007-02-02")
subdata <- data[data$Date >= sdate & data$Date <= edate,]

## convert the columns as numbers so that it can be plotted
subdata$Global_active_power <- as.numeric(subdata$Global_active_power)
subdata$Global_reactive_power <- as.numeric(subdata$Global_reactive_power)
subdata$Global_intensity <- as.numeric(subdata$Global_intensity)
subdata$Sub_metering_1 <- as.numeric(subdata$Sub_metering_1)
subdata$Sub_metering_2 <- as.numeric(subdata$Sub_metering_2)
subdata$Sub_metering_3 <- as.numeric(subdata$Sub_metering_3)