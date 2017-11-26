power <- read.table("household_power_consumption.txt", sep=";", header=T, 
                    na.strings = "?", stringsAsFactors=F)
mypower <- power[(power$Date == "1/2/2007" | power$Date == "2/2/2007"), ]
png("plot3.png", 480, 480)

plot(mypower$Sub_metering_1, type="l", ylab="Energy sub metering", 
     xaxt="n", xlab="")
lines(mypower$Sub_metering_2, col='red')
lines(mypower$Sub_metering_3, col="blue")
legend('topright', legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), lty = 1)
axis(side=1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))

dev.off()