##Function to make the fourth plot

plot4 <- function(){
  ##Setting the plot device to the appropriate png-file
  png("plot4.png")
 
  par(mfrow = c(2,2))
  
  ##Adding the first plot which is equal to that made in Plot2
  plot(powerConsData$dateTime, powerConsData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  
  ##Adding the second plot in single line:
  plot(powerConsData$dateTime, powerConsData$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

  ##Then making the third plot which is equal to that in plot 3
  ##First prepping the plot and adding the first data
  plot(powerConsData$dateTime, powerConsData$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  ##Then adding second
  points(powerConsData$dateTime, powerConsData$Sub_metering_2, type = "l", col = "red")
  ##And third datapoints
  points(powerConsData$dateTime, powerConsData$Sub_metering_3, type = "l", col = "blue")
  ##And finally the legends
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
  
  
  ##Then making the fourth plot
  plot(powerConsData$dateTime, powerConsData$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
  
  ##Closing the connection to the png file
  dev.off() 
}