#Download and Unzip the file

fileUrl = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
download.file(fileUrl, destfile = "PMdata.zip")
unzip("PMdata.zip")

#Read the data

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

# Plot total emissions recorded in year 1999, 2002, 2005 and 2008

sum0 <- with(NEI, tapply(Emissions, year, sum, na.rm = T))
year <- unique(NEI$year)

png("plot1.png", width=480, height=480)
plot(year, sum0, xlab = "Year", ylab = "PM2.5 Emissions (tons)", pch = 16)
lines(year, sum0)
dev.off()

