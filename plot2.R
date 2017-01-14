##Function to make second plot

plot2 <- function(){
  ##Setting the plot device to the appropriate png file
  png(filename = "plot2.png")
  
  ##Single line to produce the lineplot with appropriate labels
  plot(powerConsData$dateTime, powerConsData$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
  ##Closing the connection to the png file
  dev.off()  
}