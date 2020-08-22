# Plot showing emissions from motor-vehicle sources from 1999–2008 in Baltimore City

SCCmotor <- SCCname[grep("motor", SCCname$Short.Name, ignore.case = T ), ]
d1 <- maryland[ , c(2, 4, 5, 6)]
mrg <- merge(d1, SCCmotor, by = "SCC")

sum3 <- with(mrg, tapply(Emissions, year, sum, na.rm = T))

png("plot5.png", width=480, height=480)
plot(year, sum3, xlab = "Year", ylab = "PM2.5 Emissions (tons) from motor-vehicle sources (tons)", pch = 16)
lines(year, sum3)
dev.off()