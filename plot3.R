##Function to make third plot

plot3 <- function(){
  
  ##Setting the plot device to the appropriate png file
  png(filename = "plot3.png")
  
  ##Single line to produce the lineplot for the first sub-metering
  ## with appropriate labels
  plot(powerConsData$dateTime, powerConsData$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
  
  ##Then adding the next sub-metering data in red
  points(powerConsData$dateTime, powerConsData$Sub_metering_2, type = "l", col = "red")
  
  ##Adding the third sub-metering data in blue
  points(powerConsData$dateTime, powerConsData$Sub_metering_3, type = "l", col = "blue")
  
  ##Finally adding the legends in the top-right corner
  legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), lty = 1)
  
  dev.off()
}