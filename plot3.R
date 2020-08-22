# Plot total emissions recorded in year 1999, 2002, 2005 and 2008 by type in Baltimore City

type <- unique(NEI$type)
library(ggplot2)

png("plot3.png", width=480, height=480)
ggplot(maryland, aes(year, Emissions, color = type)) +
  stat_summary(geom = "line", fun = "sum") + labs(y = "Emissions from Baltimore City (tons)", x = "Year")
dev.off()