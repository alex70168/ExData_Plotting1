#This is the project 1-3 - plot the Energy sub metering from 2007/02/01 to 2007/02/02

#Read the file; note that there is header on top of the txt file.
con<-read.table("household_power_consumption.txt",header=T,sep=";",stringsAsFactors = F)

#Subset by date
sub<-con[con$Date %in% c("1/2/2007","2/2/2007"),]

#Overlap plot
png("plot3.png",width=480,height = 480)
plot(strptime(paste(sub$Date,sub$Time),"%d/%m/%Y %H:%M:%S"),sub$Sub_metering_1,ylab="Energy sub metering",type="l",xlab="")
lines(strptime(paste(sub$Date,sub$Time),"%d/%m/%Y %H:%M:%S"),sub$Sub_metering_2,col="red")
lines(strptime(paste(sub$Date,sub$Time),"%d/%m/%Y %H:%M:%S"),sub$Sub_metering_3,col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()