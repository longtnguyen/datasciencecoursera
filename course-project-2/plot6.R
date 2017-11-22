# Similar to plot 5, filter for LA data
vehicles_LA_NEI <- vehicles_NEI[vehicles_NEI$fips=="06037",]
# Add name for each city for grid
baltimore_vehicles_NEI$city <- "Baltimore"
vehicles_LA_NEI$city <- "Los Angeles"
# Combine data into a single data frame
combined_NEI <- rbind(baltimore_vehicles_NEI,vehicles_LA_NEI)

png("plot6.png", width=480, height=480, units="px")

ggplot(combined_NEI, aes(factor(year), Emissions/1000)) +
  geom_bar(aes(fill=year),stat="identity") +
  facet_grid(scales="free", space="free", .~city) +
  guides(fill=FALSE)+
  labs(x="year", y=expression("Total PM2.5 Emission (Thousand Tons)")) + 
  labs(title=expression("Baltimore/LA PM2.5 Vehicle Emissions from 1999-2008"))

dev.off()

# Emission in LA from vehicle is an order of magnitude more than Baltimore, and this has not show a downward trending like what we saw in Baltimore in this period