data1 <- read.table("C:\\Users\\MeganBartlett\\Documents\\Coursera\\EDA\\household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
head(data1)


data <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]
globalactivepower <- suppressWarnings(as.numeric(data$Global_active_power))

png("plot1.png", width = 480, height = 480)
hist(as.numeric(globalactivepower), xlab = "Global Active Power (kilowatts)", main = "Global Active Power", col = "red")
dev.off()
