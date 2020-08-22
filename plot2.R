# Plot total emissions recorded in year 1999, 2002, 2005 and 2008 in Maryland

maryland <- subset(NEI, fips == "24510")
sum1 <- with(maryland, tapply(Emissions, year, sum, na.rm = T))

png("plot2.png", width=480, height=480)
plot(year, sum1, xlab = "Year", ylab = "PM2.5 Emissions (tons) in Maryland", pch = 16)
lines(year, sum1)
dev.off()