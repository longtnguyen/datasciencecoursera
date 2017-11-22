# Filter out coal combustion from NEI data
SCC_coal <- SCC[grepl("Coal" , SCC$Short.Name), ]
NEI_coal <- NEI[NEI$SCC %in% SCC_Coal$SCC, ]

png("plot4.png", width=480, height=480, units="px")

ggplot(NEI_coal,aes(factor(year),Emissions/10^6)) +
  geom_bar(stat="identity") +
  guides(fill=FALSE) +
  labs(x="year", y=expression("Total PM2.5 Emission (Million Tons)")) + 
  labs(title=expression("US Total PM2.5 Coal Emissions from 1999-2008"))

dev.off()

# Coal emission seems to be decreasing