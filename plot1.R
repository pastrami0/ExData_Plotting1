power <- read.table("household_power_consumption.txt", sep=";", header=T, 
                    na.strings = "?", stringsAsFactors=F)
mypower <- power[(power$Date == "1/2/2007" | power$Date == "2/2/2007"), ]
png("plot1.png", 480, 480)
hist(mypower$Global_active_power, col='red', main='Global Active Power', 
     xlab="Global Active Power (kilowatts)")
dev.off()