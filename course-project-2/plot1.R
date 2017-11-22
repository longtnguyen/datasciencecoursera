# Aggregate by summing the total emissions by year
total_emission <- aggregate(Emissions ~ year,NEI, sum)

png("plot1.png", width=480, height=480, units="px")

barplot(
  # Getting rid of scientific notation to make it more readable
  (total_emission$Emissions)/10^6,
  names.arg=total_emission$year,
  xlab="Year",
  ylab="PM2.5 Emissions (Million Tons)",
  main="US Total PM2.5 Emissions"
)

dev.off()