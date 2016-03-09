## finally the last plot.

plot4 <- function() {
        par(mfrow=c(2,2)) ##this creates two rows and two columns in the graphic device (screen).
        
        ## plot 1
        plot(D$timestamp,D$Global_active_power, type="l", xlab="", ylab="Global Active Power")
        
        ## plot 2
        plot(D$timestamp,D$Voltage, type="l", xlab="datetime", ylab="Voltage")
        
        ## plot 3
        plot(D$timestamp,D$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        lines(D$timestamp,D$Sub_metering_2,col="red")
        lines(D$timestamp,D$Sub_metering_3,col="blue")
        legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.5) #bty removes the box, cex shrinks the text, spacing added after labels so it renders correctly
        
        ## plot 4
        plot(D$timestamp,D$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
        
        ## final show.. sorry result.
        dev.copy(png, file="plot4.png", width=480, height=480)
        dev.off()
        cat("plot4.png was saved in", getwd())
}
plot4()