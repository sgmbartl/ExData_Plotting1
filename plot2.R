data1 <- read.table("C:\\Users\\MeganBartlett\\Documents\\Coursera\\EDA\\household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
head(data1)


data <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]
globalactivepower <- suppressWarnings(as.numeric(data$Global_active_power))
datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

png("plot2.png", width = 480, height = 480)
plot(datetime, globalactivepower, xlab = " ", ylab = "Global Active Power (kilowatts)", type = "l")
dev.off()
