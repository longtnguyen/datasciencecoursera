# Filter for vehicles
vehicles <- grepl("vehicles", SCC$SCC.Level.Two, ignore.case=TRUE)
# Creating the subset that only include vehicle NEI
vehicles_NEI <- NEI[NEI$SCC %in% SCC[vehicles,]$SCC,]
# Filter for Baltimore only
baltimore_vehicles_NEI <- vehicles_NEI[vehicles_NEI$fips=="24510",]

png("plot5.png", width=480, height=480, units="px")

ggplot(baltimore_vehicles_NEI,aes(factor(year),Emissions/1000)) +
  geom_bar(stat="identity") +
  guides(fill=FALSE) +
  labs(x="year", y=expression("Total PM2.5 Emission (Thousand Tons)")) + 
  labs(title=expression("Baltimore PM2.5 Motor Vehicle Emissions from 1999-2008"))

dev.off()