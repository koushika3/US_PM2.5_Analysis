# Plot showing emissions from coal combustion-related sources from 1999–2008

SCCname <- SCC[ , c(1, 3)]
SCCcoal <- SCCname[grep("coal", SCCname$Short.Name, ignore.case = T ), ]
d0 <- NEI[ , c(2, 4, 5, 6)]
mrg <- merge(d0, SCCcoal, by = "SCC")

sum2 <- with(mrg, tapply(Emissions, year, sum, na.rm = T))

png("plot4.png", width=480, height=480)
plot(year, sum2, xlab = "Year", ylab = "PM2.5 Emissions (tons) from coal combustion-related sources (tons)", pch = 16)
lines(year, sum2)
dev.off()
