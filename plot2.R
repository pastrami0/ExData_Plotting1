power <- read.table("household_power_consumption.txt", sep=";", header=T, 
                    na.strings = "?", stringsAsFactors=F)
mypower <- power[(power$Date == "1/2/2007" | power$Date == "2/2/2007"), ]
png("plot2.png", 480, 480)

plot(mypower$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", 
     xaxt="n", xlab="")
axis(side=1, at=c(0, 1440, 2880), labels=c("Thu", "Fri", "Sat"))

dev.off()