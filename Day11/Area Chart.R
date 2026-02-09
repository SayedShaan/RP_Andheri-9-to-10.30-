library(sf)
library(ggplot2)
library(RColorBrewer)

# Read spatial data
nc <- st_read(system.file("shape/nc.shp", package="sf"))
nc
# Convert the data into a format suitable for an area chart
nc_df <- data.frame(ID = seq_len(nrow(nc)), Area = nc$AREA)

# Create an area chart using ggplot2
ggplot(nc_df, aes(x = ID, y = Area, fill = Area)) +
  geom_area(alpha = 0.8) +
  scale_fill_gradientn(colors = brewer.pal(9, "YlOrRd")) +
  labs(title = "Area Chart of NC Regions", x = "Region ID", y = "Area") +
  theme_minimal()