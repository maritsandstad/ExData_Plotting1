##This function is a helping script to download
## the data from the online source if this has not
##already been done, and then loads into a data frame
##Finally we clean the data bit to make it more usable

downloadClean <- function(){
  ##Giving the name of the dat file an alias as we will use it several times
  dataFile <- "household_power_consumption.txt"
  
  ##We don't need to load the entire data set. 70000 lines is
  ##enough to include the data that interests us
  nmax = 70000 #1000
  ##Testing if the file has already been downloaded and unzipped
  ##If not we enter the if-loop
  if (!file.exists(dataFile)){
    ##Creating a temp-file to hold the zip-file
    temp <- tempfile()
    ##Then downloading the zip-file to temp
    download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", temp)
    ##unzipping
    unzip(temp)
    ##And finally unlinking
    unlink(temp)
  }
  
  ##Read in the data from the file, making sure to use the 
  ##appropriate separater, header, and na.string, we also
  ##avoid strings as factors. In test mode we also only read in
  ## a maximum amount of values
  powerConsData <- read.table(dataFile, sep = ";", header = TRUE, stringsAsFactors = FALSE, na.strings = "?", nrows = nmax) 
  ##For convenience we recast the Date variable as Date
  dateTimeInput <- paste(powerConsData$Date, powerConsData$Time)
  dateTimeInput <- strptime(dateTimeInput, format = "%d/%m/%Y %H:%M:%S")
  powerConsData$dateTime <- dateTimeInput
  
  ##Subsetting to get only the data for the two days in question
  powerConsDataShort <- subset(powerConsDataTest, as.Date(Date, format = "%e/%m/%Y") == as.Date("2007-02-01")| as.Date(Date, format = "%e/%m/%Y") == as.Date("2007-02-02"))
  

  ##Finally return the cleaned short data frame
  powerConsDataShort
  
}