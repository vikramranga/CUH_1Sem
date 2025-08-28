library(pacman)
p_load(tidyverse, sf)

global_seismicity <- read.csv("/Users/vikramranga/Documents/University/Teaching/Geography/Sem I/EarthQuakeData.csv")
global_seismicity <- st_as_sf(
  global_seismicity,
  coords = c("Lon", "Lat"),  # Replace with your column names
  crs = 4326,  # WGS 84 geographic coordinate system
  remove = FALSE  # Keep original lat/lon columns
)

save(global_seismicity, file = "Data/global_seismicity.rda")
