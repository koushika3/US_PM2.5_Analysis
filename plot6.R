# Plot showing emissions from motor-vehicle sources from 1999–2008 in Baltimore City and LA

LAnB <- subset(NEI, fips == "06037" | fips == "24510")
png("plot6.png", width=480, height=480)
ggplot(LAnB, aes(year, Emissions, color = fips)) +
  stat_summary(geom = "line", fun = "sum") + labs(y = "Emissions from motor-vehicle sources (tons)", x = "Year") +scale_colour_discrete(name = "City", label = c("Los Angeles","Baltimore"))
dev.off()