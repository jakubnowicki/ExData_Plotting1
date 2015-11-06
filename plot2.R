household_power_consumption <- read.table(file = "household_power_consumption.txt",header = T,sep = ';',na.strings = '?')
household_power_consumption$dt <- paste(household_power_consumption$Date,household_power_consumption$Time)
household_power_consumption$dt <- strptime(household_power_consumption$dt,format = "%d/%m/%Y %T")
household_power_consumption[household_power_consumption$dt >= strptime("2007-02-01",format = "%Y-%m-%d") & household_power_consumption$dt < strptime('2007-02-03',format = '%Y-%m-%d'),]->selected
plot(selected$dt,selected$Global_active_power,type = 'l',xlab = '',ylab = 'Global Active Power (kilowatts)')
dev.copy(png,file="plot2.png")
dev.off()
