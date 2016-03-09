## for this assignment, I manually downloaded the "exdata-data-household_power_consumption.zip"
## and unzipped it in my working directory, i.e. my desktop folder..

getwd() 
setwd("C:/Users/WINNIE/Desktop/exdata_data_household_power_consumption") ## here, I made the folder containing the file my working directory

Hpower <- read.table("household_power_consumption.txt", header=T, sep=";") ## Hpower == Household power...
Hpower$Date <- as.Date(Hpower$Date, format="%d/%m/%Y")
D <- Hpower[(Hpower$Date=="2007-02-01") | (Hpower$Date=="2007-02-02"),] ## for ease, let "D" be the date format...
D$Global_active_power <- as.numeric(as.character(D$Global_active_power))
D$Global_reactive_power <- as.numeric(as.character(D$Global_reactive_power))
D$Voltage <- as.numeric(as.character(D$Voltage))
D <- transform(D, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
D$Sub_metering_1 <- as.numeric(as.character(D$Sub_metering_1))
D$Sub_metering_2 <- as.numeric(as.character(D$Sub_metering_2))
D$Sub_metering_3 <- as.numeric(as.character(D$Sub_metering_3))


## here is the function for the first plot.

plot1 <- function() {
        hist(D$Global_active_power, 
             main = paste("Global Active Power"), 
             col="red", 
             xlab="Global Active Power (kilowatts)")
        dev.copy(png, file="plot1.png", width=480, height=480)
        dev.off()
        cat("Plot1.png has been saved in", getwd())
}
plot1()