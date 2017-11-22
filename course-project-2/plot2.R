# Filter by using Baltimore's fip.
baltimore_NEI <- NEI[NEI$fips=="24510",]

# Aggregate by summing the Baltimore total emissions by year
aggregate_total_baltimore <- aggregate(Emissions ~ year, baltimore_NEI,sum)

png("plot2.png", width=480, height=480, units="px")

barplot(
  # Divided by 1000 to make Y axis uniform
  (aggregate_total_baltimore$Emissions)/1000,
  names.arg=aggregate_total_baltimore$year,
  xlab="Year",
  ylab="PM2.5 Emissions (Thousand Tons)",
  main="Total PM2.5 Emissions in Baltimore"
)

dev.off()