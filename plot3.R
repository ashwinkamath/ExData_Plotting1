plot3 <- function(data=null) {
    source("loadData.R")
    if(is.null( data)) {
        data <- loadData()
    }
    png(filename="plot3.png",width=480, height=480, units="px")
    plot(data$DateTime, data$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
    lines(data$DateTime, data$Sub_metering_1, col="black")
    lines(data$DateTime, data$Sub_metering_2, col="red")
    lines(data$DateTime, data$Sub_metering_3, col="blue")
    legend("topright",lty="solid", col = c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    dev.off()
    
}