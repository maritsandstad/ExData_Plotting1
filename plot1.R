##Function to produce the first plot

plot1 <- function(){
  
  ##Setting the plot device to the appropriate png file
  png(filename = "plot1.png")
  
  ##Single line to produce the histogram in red with appropriate title and labels
  hist(powerConsData$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")

  ##Closing the connection to the png file
  dev.off()
  
}