## plot 2 coming up.

plot2 <- function() {
        plot(D$timestamp,D$Global_active_power, 
             type="l", 
             xlab="", 
             ylab="Global Active Power (kilowatts)")
        dev.copy(png, file="plot2.png", width=480, height=480)
        dev.off()
        cat("plot2.png was saved in", getwd())
}
plot2()