library(ggplot2)

# We are using baltimoreNEI from plot2 to avoid repeating code
png("plot3.png", width=480, height=480, units="px")

# Convert year to Date() format so it is less clutter
# baltimore_NEI$year <- as.Date(baltimore_NEI$year) %% 100
# This did not turn out as well as I hope, I will revisit this later

ggplot(baltimore_NEI,aes(factor(year),Emissions/1000,fill=type)) +
  geom_bar(stat="identity") +
  guides(fill=FALSE)+
  facet_grid(.~type, scales = "free", space="free") + 
  labs(x="year", y=expression("Total PM2.5 Emission (Thousand Tons)")) + 
  labs(title=expression("PM2.5 Emissions by Type, Baltimore 1999-2008"))

dev.off()

# Only Point seems to have increase from 1999 to 2008
