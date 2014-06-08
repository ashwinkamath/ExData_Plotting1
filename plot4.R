#Plot 4 Assignment
plot4 <- function() {
    
    # Plots 4 graphs as required by assignment in a 2, 2 frame
    # Loads Data using loadData() 
    
    source("loadData.R")
    data <- loadData()
    
    png(filename="plot4.png",width=480, height=480, units="px")
    par(mfrow=c(2,2)) 
    
    # Plot 1 : Line graph for displaying Global Active Power by time 
    plot(data$DateTime, data$Global_active_power, type='l',ylab="Global Active Power", xlab="")
    
    # Plot 2 : Line graph for displaying Voltage by time 
    plot(data$DateTime, data$Voltage, type="l", ylab="Voltage", xlab="datetime")

    # Plot 3 : Line graph for displaying Sub Metering by time 
    plot(data$DateTime, data$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
    lines(data$DateTime, data$Sub_metering_1, col="black")
    lines(data$DateTime, data$Sub_metering_2, col="red")
    lines(data$DateTime, data$Sub_metering_3, col="blue")
    legend("topright",lty="solid", col = c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
    
    # Plot 4 : Line graph for displaying Global Reactive Power by time 
    plot(data$DateTime, data$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab="datetime")
    dev.off()    
}