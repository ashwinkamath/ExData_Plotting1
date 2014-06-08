
downloadFile <- function() {
    if(!file.exists("./data")) {
        dir.create("./data")
    } 
    if(!file.exists("./data/consumption.zip")) {
        fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
        download.file(fileURL, destfile="./data/consumption.zip", method="curl")
    }
}

loadData <- function() {
    downloadFile()
    data <- read.table(unzip(zipfile="./data/consumption.zip"), sep=";",header=TRUE, na.strings=c("?"))
    data <- data[data$Date == "1/2/2007"| data$Date == "2/2/2007",]
    data$DateTime <- paste(data$Date,data$Time)
    data$DateTime <- strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")
#    data$Date <- as.Date(data$Date,format="%d/%m/%Y")
#    data$DateTime <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
    data
}

#     http://stackoverflow.com/questions/3053833/using-r-to-download-zipped-data-file-extract-and-import-data
    