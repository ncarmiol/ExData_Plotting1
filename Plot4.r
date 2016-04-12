#####Plot 4#####

######################################################
#Getting data
setwd("~/Trabajo/Data science/Exploratory data analysis/Tarea 1")


######################################################
#Plot 4

##Getting data
data.Hwk1 <- read.table("household_power_consumption.txt", 
                        sep = ";", dec= ".", header = TRUE,
                        stringsAsFactors = FALSE)

##Subsetting
subSetData <- data.Hwk1[data.Hwk1$Date %in% c("1/2/2007","2/2/2007"),]

##Convert to numeric 
Global_active <- as.numeric(subSetData$Global_active_power)
Global_reative <- as.numeric(subSetData$Global_reactive_power)
voltage <- as.numeric(subSetData$Voltage)
subMetering1 <- as.numeric(subSetData$Sub_metering_1)
subMetering2 <- as.numeric(subSetData$Sub_metering_2)
subMetering3 <- as.numeric(subSetData$Sub_metering_3)

##Making the plot
png("plot4.png", width=480, height=480)
par(mfrow = c(2, 2)) 


###Plot 4
plot(datetime, Global_reative, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off() 
