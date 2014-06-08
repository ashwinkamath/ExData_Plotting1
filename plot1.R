plot1 <- function(data = null) {
    source("loadData.R")
    if(is.null(data)) {
        data <- loadData()
    }
    png(filename="plot1.png",width=480, height=480, units="px")
    hist(chk1$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
    dev.off()
    
}