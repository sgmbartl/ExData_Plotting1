data1 <- read.table("C:\\Users\\MeganBartlett\\Documents\\Coursera\\EDA\\household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
head(data1)


data <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]
globalactivepower <- suppressWarnings(as.numeric(data$Global_active_power))
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot3.png", width = 480, height = 480)
plot(datetime, data$Sub_metering_1, type = "l", xlab = " ", ylab = "Energy sub metering")
points(datetime, data$Sub_metering_2, type = "l", col = "red")

points(datetime, data$Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty=c(1, 1, 1))
dev.off()
