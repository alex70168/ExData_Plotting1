#This is the project 1-1 - plot the histogram of the Global active power from 2007/02/01 to 2007/02/02

#Read the file; note that there is header on top of the txt file.
con<-read.table("household_power_consumption.txt",header=T,sep=";",stringsAsFactors = F)

#Subset by date
sub<-con[con$Date %in% c("1/2/2007","2/2/2007"),]


png("plot1.png",width=480,height = 480)
hist(as.numeric(sub$Global_active_power),col="red",xlab="Global Active Power(kilowatts)",main="Global Active Power")
dev.off()
